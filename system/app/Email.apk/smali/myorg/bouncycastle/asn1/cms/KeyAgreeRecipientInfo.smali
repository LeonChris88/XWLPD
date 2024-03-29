.class public Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "KeyAgreeRecipientInfo.java"


# instance fields
.field private keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private originator:Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

.field private recipientEncryptedKeys:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field private ukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move v0, v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;Lmyorg/bouncycastle/asn1/ASN1OctetString;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p3, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p4, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object in KeyAgreeRecipientInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;
    .locals 1

    invoke-static {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKeyEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOriginator()Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    return-object v0
.end method

.method public getRecipientEncryptedKeys()Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getUserKeyingMaterial()Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
