.class public Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "KeyTransRecipientInfo.java"


# instance fields
.field private encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private rid:Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 2

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    :goto_0
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-void

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object in KeyTransRecipientInfo: "

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


# virtual methods
.method public getEncryptedKey()Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getKeyEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getRecipientIdentifier()Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
