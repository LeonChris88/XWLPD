.class public Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;
.super Ljava/lang/Object;
.source "X509AttributeCertStoreSelector.java"

# interfaces
.implements Lmyorg/bouncycastle/util/Selector;


# instance fields
.field private attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

.field private attributeCertificateValid:Ljava/util/Date;

.field private holder:Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

.field private issuer:Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

.field private serialNumber:Ljava/math/BigInteger;

.field private targetGroups:Ljava/util/Collection;

.field private targetNames:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v0}, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCertificateValid()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getTargetGroups()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getTargetNames()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    return-object v0
.end method

.method public getAttributeCert()Lmyorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public getAttributeCertificateValid()Ljava/util/Date;
    .locals 3

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetGroups()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTargetNames()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 13

    const/4 v11, 0x0

    instance-of v10, p1, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    if-nez v10, :cond_0

    move v10, v11

    :goto_0
    return v10

    :cond_0
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v11

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v10, :cond_2

    invoke-interface {v0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    iget-object v12, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    move v10, v11

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    if-eqz v10, :cond_3

    invoke-interface {v0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    iget-object v12, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    invoke-virtual {v10, v12}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    move v10, v11

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    if-eqz v10, :cond_4

    invoke-interface {v0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v10

    iget-object v12, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    invoke-virtual {v10, v12}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    move v10, v11

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v10, :cond_5

    :try_start_0
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-interface {v0, v10}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    :cond_6
    sget-object v10, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->TargetInformation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_e

    :try_start_1
    new-instance v12, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/DEROctetString;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v10

    check-cast v10, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v10

    invoke-direct {v12, v10}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TargetInformation;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/TargetInformation;->getTargetsObjects()[Lmyorg/bouncycastle/asn1/x509/Targets;

    move-result-object v9

    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v10, v9

    if-ge v3, v10, :cond_9

    aget-object v5, v9, v3

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lmyorg/bouncycastle/asn1/x509/Target;

    move-result-object v8

    const/4 v4, 0x0

    :goto_2
    array-length v10, v8

    if-ge v4, v10, :cond_7

    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    aget-object v12, v8, v4

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/x509/Target;->getTargetName()Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-static {v12}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v2, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    move v10, v11

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move v10, v11

    goto/16 :goto_0

    :catch_2
    move-exception v1

    move v10, v11

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move v10, v11

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    if-nez v2, :cond_a

    move v10, v11

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    array-length v10, v9

    if-ge v3, v10, :cond_d

    aget-object v5, v9, v3

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lmyorg/bouncycastle/asn1/x509/Target;

    move-result-object v8

    const/4 v4, 0x0

    :goto_4
    array-length v10, v8

    if-ge v4, v10, :cond_b

    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    aget-object v12, v8, v4

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/x509/Target;->getTargetGroup()Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-static {v12}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v2, 0x1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    if-nez v2, :cond_e

    move v10, v11

    goto/16 :goto_0

    :cond_e
    const/4 v10, 0x1

    goto/16 :goto_0
.end method
