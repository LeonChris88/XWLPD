.class public Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
.super Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
.source "ExtendedPKIXBuilderParameters.java"


# instance fields
.field private excludedCerts:Ljava/util/Set;

.field private maxPathLength:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Lmyorg/bouncycastle/util/Selector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V

    const/4 v0, 0x5

    iput v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setTargetConstraints(Lmyorg/bouncycastle/util/Selector;)V

    return-void
.end method

.method public static getInstance(Ljava/security/cert/PKIXParameters;)Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    .locals 4

    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CertSelector;

    invoke-static {v2}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lmyorg/bouncycastle/util/Selector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lmyorg/bouncycastle/util/Selector;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lmyorg/bouncycastle/util/Selector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getExcludedCerts()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPathLength()I
    .locals 1

    iget v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    return v0
.end method

.method protected setParams(Ljava/security/cert/PKIXParameters;)V
    .locals 3

    invoke-super {p0, p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    instance-of v1, p1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    iget v1, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    iput v1, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    :cond_0
    instance-of v1, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    :cond_1
    return-void
.end method
