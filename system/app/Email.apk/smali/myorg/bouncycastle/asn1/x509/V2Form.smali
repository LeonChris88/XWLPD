.class public Lmyorg/bouncycastle/asn1/x509/V2Form;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "V2Form.java"


# instance fields
.field baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

.field issuerName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad sequence size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v5}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    instance-of v3, v3, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v5}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v0, v3, :cond_4

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2, v5}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-static {v2, v5}, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad tag number: "

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

    :cond_4
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/V2Form;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/V2Form;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/V2Form;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/V2Form;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/V2Form;
    .locals 1

    invoke-static {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/V2Form;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getIssuerName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v1, :cond_1

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v1, :cond_2

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
