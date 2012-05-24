.class public Lmyorg/bouncycastle/x509/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "AttributeCertificateHolder.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lmyorg/bouncycastle/util/Selector;


# instance fields
.field final holder:Lmyorg/bouncycastle/asn1/x509/Holder;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmyorg/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method private getNames([Lmyorg/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-eq v1, v3, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "badly formed Name object"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private getPrincipals(Lmyorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;
    .locals 4

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getNames([Lmyorg/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_1

    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Principal;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/Principal;

    check-cast v3, [Ljava/security/Principal;

    return-object v3
.end method

.method private matchesDN(Lmyorg/bouncycastle/jce/X509Principal;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 5

    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-eq v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :try_start_0
    new-instance v4, Lmyorg/bouncycastle/jce/X509Principal;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lmyorg/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v4, p1}, Lmyorg/bouncycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :catch_0
    move-exception v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v1, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    iget-object v2, v0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/Holder;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDigestedObjectType()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestedObjectType()Lmyorg/bouncycastle/asn1/DEREnumerated;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEntityNames()[Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lmyorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIssuer()[Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lmyorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectDigest()[B
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getObjectDigest()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/security/cert/Certificate;

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    :try_start_0
    iget-object v5, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/jce/X509Principal;

    move-result-object v5

    iget-object v6, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lmyorg/bouncycastle/jce/X509Principal;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v2}, Lmyorg/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/jce/X509Principal;

    move-result-object v5

    iget-object v6, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lmyorg/bouncycastle/jce/X509Principal;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v5, "myBC"

    invoke-static {v3, v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getDigestedObjectType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getObjectDigest()[B

    move-result-object v5

    invoke-static {v3, v5}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
