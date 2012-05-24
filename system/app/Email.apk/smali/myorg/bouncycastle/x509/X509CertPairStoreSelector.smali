.class public Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;
.super Ljava/lang/Object;
.source "X509CertPairStoreSelector.java"

# interfaces
.implements Lmyorg/bouncycastle/util/Selector;


# instance fields
.field private certPair:Lmyorg/bouncycastle/x509/X509CertificatePair;

.field private forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

.field private reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v0}, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lmyorg/bouncycastle/x509/X509CertificatePair;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lmyorg/bouncycastle/x509/X509CertificatePair;

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->setForwardSelector(Lmyorg/bouncycastle/x509/X509CertStoreSelector;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->setReverseSelector(Lmyorg/bouncycastle/x509/X509CertStoreSelector;)V

    :cond_1
    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    instance-of v4, p1, Lmyorg/bouncycastle/x509/X509CertificatePair;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/x509/X509CertificatePair;

    move-object v2, v0

    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v2}, Lmyorg/bouncycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v2}, Lmyorg/bouncycastle/x509/X509CertificatePair;->getReverse()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lmyorg/bouncycastle/x509/X509CertificatePair;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lmyorg/bouncycastle/x509/X509CertificatePair;

    invoke-virtual {v4, p1}, Lmyorg/bouncycastle/x509/X509CertificatePair;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setForwardSelector(Lmyorg/bouncycastle/x509/X509CertStoreSelector;)V
    .locals 0

    iput-object p1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    return-void
.end method

.method public setReverseSelector(Lmyorg/bouncycastle/x509/X509CertStoreSelector;)V
    .locals 0

    iput-object p1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    return-void
.end method
