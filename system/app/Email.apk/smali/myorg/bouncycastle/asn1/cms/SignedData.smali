.class public Lmyorg/bouncycastle/asn1/cms/SignedData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SignedData.java"


# instance fields
.field private certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private certsBer:Z

.field private contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

.field private crls:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private crlsBer:Z

.field private digestAlgorithms:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Set;

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERObject;

    instance-of v3, v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    instance-of v3, v2, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    invoke-static {v2, v4}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    :pswitch_1
    instance-of v3, v2, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    invoke-static {v2, v4}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    :cond_0
    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Set;

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignedData;
    .locals 3

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;

    if-eqz v0, :cond_0

    check-cast p0, Lmyorg/bouncycastle/asn1/cms/SignedData;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lmyorg/bouncycastle/asn1/cms/SignedData;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/SignedData;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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
.method public getCRLs()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getCertificates()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getEncapContentInfo()Lmyorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getSignerInfos()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    if-eqz v1, :cond_2

    new-instance v1, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    if-eqz v1, :cond_3

    new-instance v1, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v4, v2}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1

    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1
.end method
