.class public Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;
.super Ljava/lang/Object;
.source "ShortenedDigest.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/ExtendedDigest;


# instance fields
.field private baseDigest:Lmyorg/bouncycastle/crypto/ExtendedDigest;

.field private length:I


# virtual methods
.method public doFinal([BI)I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lmyorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/ExtendedDigest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lmyorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v1, v0, v2}, Lmyorg/bouncycastle/crypto/ExtendedDigest;->doFinal([BI)I

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lmyorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/ExtendedDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lmyorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lmyorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/ExtendedDigest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lmyorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/ExtendedDigest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lmyorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/ExtendedDigest;->update([BII)V

    return-void
.end method
