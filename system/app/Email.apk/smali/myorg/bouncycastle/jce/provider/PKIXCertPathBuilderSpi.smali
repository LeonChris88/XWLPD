.class public Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXCertPathBuilderSpi.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected build(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 15

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v12

    if-le v11, v12, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :try_start_0
    const-string v11, "X.509"

    const-string v12, "myBC"

    invoke-static {v11, v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    const-string v11, "PKIX"

    const-string v12, "myBC"

    invoke-static {v11, v12}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v4, 0x0

    const/4 v9, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v10, v4, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v9

    check-cast v9, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v11, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v9}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v12

    invoke-virtual {v9}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v13

    invoke-virtual {v9}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    invoke-direct {v11, v4, v12, v13, v14}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    :try_end_4
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v2, v11

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Exception creating support classes."

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_1
    move-exception v5

    :try_start_5
    new-instance v11, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Certification path could not be constructed from certificate list."

    invoke-direct {v11, v12, v5}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_5
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v5

    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    :cond_4
    if-nez v2, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_3
    move-exception v5

    :try_start_6
    new-instance v11, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Certification path could not be validated."

    invoke-direct {v11, v12, v5}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_6
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :try_start_7
    invoke-static/range {p1 .. p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromAltNames(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_7
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V
    :try_end_8
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    invoke-static/range {p1 .. p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_9
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_5

    :try_start_a
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v11, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "No issuer certificate for certificate in certification path found."

    invoke-direct {v11, v12}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_4
    move-exception v5

    new-instance v11, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "No additiontal X.509 stores can be added from certificate locations."

    invoke-direct {v11, v12, v5}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :catch_5
    move-exception v5

    new-instance v11, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v11, v12, v5}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_6
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez v2, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v6, v0, v1}, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_a
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v2

    goto :goto_1
.end method

.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v1, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v1, :cond_0

    instance-of v1, p1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameters must be an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    instance-of v1, p1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v1, :cond_1

    check-cast p1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lmyorg/bouncycastle/util/Selector;

    move-result-object v2

    instance-of v1, v2, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    if-nez v1, :cond_2

    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TargetConstraints must be an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " class."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast p1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-static {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    move-object p1, v1

    goto :goto_0

    :cond_2
    :try_start_0
    move-object v0, v2

    check-cast v0, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    move-object v1, v0

    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_3

    check-cast v2, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    const-string v2, "No certificate found matching targetContraints."

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    new-instance v2, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v3, "Error finding target certificate."

    invoke-direct {v2, v3, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    const/4 v1, 0x0

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v1, p1, v3}, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    goto :goto_1

    :cond_5
    if-nez v1, :cond_7

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v2, :cond_7

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    instance-of v1, v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    const-string v2, "Possible certificate chain could not be validated."

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    if-nez v1, :cond_8

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-nez v2, :cond_8

    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    const-string v2, "Unable to find certificate chain."

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    return-object v1
.end method
