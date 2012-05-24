.class public Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;
.super Ljava/lang/Object;
.source "X509V2AttributeCertificate.java"

# interfaces
.implements Lmyorg/bouncycastle/x509/X509AttributeCertificate;


# instance fields
.field private cert:Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 6

    iget-object v5, p0, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method


# virtual methods
.method public checkValidity(Ljava/util/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x0

    if-ne p1, p0, :cond_1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :cond_1
    instance-of v5, p1, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v5, :cond_0

    move-object v3, p1

    check-cast v3, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    :try_start_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v0

    invoke-interface {v3}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAttributes(Ljava/lang/String;)[Lmyorg/bouncycastle/x509/X509Attribute;
    .locals 5

    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v1, v4, :cond_1

    new-instance v0, Lmyorg/bouncycastle/x509/X509Attribute;

    invoke-virtual {v3, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v4}, Lmyorg/bouncycastle/x509/X509Attribute;-><init>(Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lmyorg/bouncycastle/x509/X509Attribute;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmyorg/bouncycastle/x509/X509Attribute;

    check-cast v4, [Lmyorg/bouncycastle/x509/X509Attribute;

    goto :goto_1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6

    iget-object v3, p0, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getHolder()Lmyorg/bouncycastle/x509/AttributeCertificateHolder;
    .locals 2

    new-instance v1, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getHolder()Lmyorg/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public getIssuer()Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuer()Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method
