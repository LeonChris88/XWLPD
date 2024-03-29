.class public Lmyorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# static fields
.field private static final PUBLIC_KEY_SHA1_BLACKLIST:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x14

    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->PUBLIC_KEY_SHA1_BLACKLIST:[[B

    return-void

    :array_0
    .array-data 0x1
        0x41t
        0xft
        0x36t
        0x36t
        0x32t
        0x58t
        0xf3t
        0xbt
        0x34t
        0x7dt
        0x12t
        0xcet
        0x48t
        0x63t
        0xe4t
        0x33t
        0x43t
        0x78t
        0x6t
        0xa8t
    .end array-data

    :array_1
    .array-data 0x1
        0xbat
        0x3et
        0x7bt
        0xd3t
        0x8ct
        0xd7t
        0xe1t
        0xe6t
        0xb9t
        0xcdt
        0x4ct
        0x21t
        0x99t
        0x62t
        0xe5t
        0x9dt
        0x7at
        0x2ft
        0x4et
        0x37t
    .end array-data

    :array_2
    .array-data 0x1
        0xe2t
        0x3bt
        0x8dt
        0x10t
        0x5ft
        0x87t
        0x71t
        0xat
        0x68t
        0xd9t
        0x24t
        0x80t
        0x50t
        0xebt
        0xeft
        0xc6t
        0x27t
        0xbet
        0x4ct
        0xa6t
    .end array-data

    :array_3
    .array-data 0x1
        0x7bt
        0x2et
        0x16t
        0xbct
        0x39t
        0xbct
        0xd7t
        0x2bt
        0x45t
        0x6et
        0x9ft
        0x5t
        0x5dt
        0x1dt
        0xe6t
        0x15t
        0xb7t
        0x49t
        0x45t
        0xdbt
    .end array-data

    :array_4
    .array-data 0x1
        0xe8t
        0xf9t
        0x12t
        0x0t
        0xc6t
        0x5ct
        0xeet
        0x16t
        0xe0t
        0x39t
        0xb9t
        0xf8t
        0x83t
        0x84t
        0x16t
        0x61t
        0x63t
        0x5ft
        0x81t
        0xc5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method

.method private static isPublicKeyBlackListed(Ljava/security/PublicKey;)Z
    .locals 9

    const/4 v7, 0x0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    new-instance v1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    array-length v8, v2

    invoke-interface {v1, v2, v7, v8}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v5, v8, [B

    invoke-interface {v1, v5, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    sget-object v0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->PUBLIC_KEY_SHA1_BLACKLIST:[[B

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    :cond_0
    return v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/security/cert/PKIXParameters;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameters must be a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instance."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p2

    instance-of v2, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v2, :cond_1

    check-cast p2, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    check-cast p2, Ljava/security/cert/PKIXParameters;

    invoke-static/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v19

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Certification path is empty."

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v0, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v21

    :try_start_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    if-nez v22, :cond_4

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Trust anchor for certification path not found."

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v0, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v4, v2, v0, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_4
    add-int/lit8 v2, v19, 0x1

    new-array v13, v2, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_1
    array-length v3, v13

    if-ge v2, v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v2, "2.5.29.32.0"

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const-string v8, "2.5.29.32.0"

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v23, Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct/range {v23 .. v23}, Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isAnyPolicyInhibited()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    move v5, v3

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isPolicyMappingInhibited()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    move v6, v3

    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v9

    if-eqz v9, :cond_9

    :try_start_1
    invoke-static {v9}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    move-object v8, v7

    move-object v7, v3

    :goto_5
    :try_start_2
    invoke-static {v8}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lmyorg/bouncycastle/util/Selector;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lmyorg/bouncycastle/util/Selector;

    move-result-object v10

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v10, v3}, Lmyorg/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v2, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Target certificate in certification path does not match targetConstraints."

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v0, v5}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_6
    add-int/lit8 v3, v19, 0x1

    move v4, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v19, 0x1

    move v5, v3

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v19, 0x1

    move v6, v3

    goto :goto_4

    :cond_9
    :try_start_3
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v7

    move-object v8, v7

    move-object v7, v3

    goto :goto_5

    :catch_1
    move-exception v2

    new-instance v3, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Subject of trust anchor could not be (re)encoded."

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v4, v2, v0, v5}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_2
    move-exception v2

    new-instance v3, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Algorithm identifier of public key of trust anchor could not be read."

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v4, v2, v0, v5}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v16, v19

    move/from16 v17, v6

    move v14, v5

    move/from16 v18, v4

    move-object v12, v2

    move-object v5, v8

    move v4, v3

    move-object v8, v9

    :goto_7
    if-ltz v4, :cond_10

    invoke-static {v5}, Lmyorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isPublicKeyBlackListed(Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate revocation of public key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v3, v2}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v3}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-direct {v2, v5, v3, v0, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_c
    sub-int v25, v19, v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/security/cert/X509Certificate;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v4, v2, :cond_d

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v4, v1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    move-object/from16 v9, p1

    move v10, v4

    invoke-static/range {v9 .. v14}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v4, v2}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v4, v2, v1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILmyorg/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    move/from16 v0, v25

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    if-eqz v15, :cond_e

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Version 1 certificates can\'t be used as CA ones."

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v5, v0, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_d
    const/4 v6, 0x0

    goto :goto_8

    :cond_e
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v4, v13, v2, v1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;I)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v9

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v4, v1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v4, v1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v4, v1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v0, v4, v14}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v4, v2}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v8

    move-object/from16 v0, p1

    invoke-static {v0, v4, v3}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v6

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v14

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v4, v1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v4, v2}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_f

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_9
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v4, v2, v1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    invoke-static {v15}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v4}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v5

    invoke-static {v5}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move v2, v3

    move v3, v6

    move v6, v8

    move-object v8, v15

    :goto_a
    add-int/lit8 v4, v4, -0x1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v6

    move-object v12, v9

    goto/16 :goto_7

    :cond_f
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_9

    :catch_3
    move-exception v2

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Next working key could not be retrieved."

    move-object/from16 v0, p1

    invoke-direct {v3, v5, v2, v0, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_10
    move/from16 v0, v18

    invoke-static {v0, v15}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v2

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v3

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_12

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v5, v1, v2}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    add-int/lit8 v8, v4, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, v21

    move-object v9, v13

    move-object v10, v12

    invoke-static/range {v5 .. v11}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    if-gtz v3, :cond_11

    if-eqz v2, :cond_13

    :cond_11
    new-instance v3, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v3, v0, v2, v4}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v3

    :cond_12
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_b

    :cond_13
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Path processing failed on policy."

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v5, v0, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_14
    move/from16 v3, v17

    move/from16 v6, v18

    move-object v9, v2

    move/from16 v2, v16

    goto/16 :goto_a
.end method
