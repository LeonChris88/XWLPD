.class public Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "AttributeCertificateInfo.java"


# instance fields
.field private attrCertValidityPeriod:Lmyorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

.field private attributes:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field private extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field private holder:Lmyorg/bouncycastle/asn1/x509/Holder;

.field private issuer:Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

.field private issuerUniqueID:Lmyorg/bouncycastle/asn1/DERBitString;

.field private serialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

.field private signature:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Holder;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/AttCertValidityPeriod;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lmyorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x7

    :goto_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v2, v1, Lmyorg/bouncycastle/asn1/DERBitString;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lmyorg/bouncycastle/asn1/DERBitString;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_4

    instance-of v2, v1, Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v2, :cond_2

    :cond_4
    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 3

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

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
.method public getAttributes()Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getHolder()Lmyorg/bouncycastle/asn1/x509/Holder;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    return-object v0
.end method

.method public getIssuer()Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    return-object v0
.end method

.method public getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lmyorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lmyorg/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
