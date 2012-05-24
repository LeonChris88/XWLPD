.class public Lmyorg/bouncycastle/x509/X509CertificatePair;
.super Ljava/lang/Object;
.source "X509CertificatePair.java"


# instance fields
.field private forward:Ljava/security/cert/X509Certificate;

.field private reverse:Ljava/security/cert/X509Certificate;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v4, p1, Lmyorg/bouncycastle/x509/X509CertificatePair;

    if-eqz v4, :cond_0

    move-object v2, p1

    check-cast v2, Lmyorg/bouncycastle/x509/X509CertificatePair;

    const/4 v1, 0x1

    const/4 v0, 0x1

    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    iget-object v5, v2, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_1
    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    iget-object v5, v2, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, v2, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v4, v2, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getForward()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getReverse()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method
