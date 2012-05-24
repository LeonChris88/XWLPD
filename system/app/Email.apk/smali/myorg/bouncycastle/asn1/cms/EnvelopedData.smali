.class public Lmyorg/bouncycastle/asn1/cms/EnvelopedData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "EnvelopedData.java"


# instance fields
.field private encryptedContentInfo:Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

.field private originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

.field private recipientInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private unprotectedAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v3, v2, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v4}, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    move v0, v1

    :cond_0
    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->recipientInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v3, v4}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/EnvelopedData;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid EnvelopedData: "

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
.method public getEncryptedContentInfo()Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    return-object v0
.end method

.method public getRecipientInfos()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->recipientInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getUnprotectedAttrs()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    if-eqz v1, :cond_0

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->recipientInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
