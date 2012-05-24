.class public Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;
.super Ljava/lang/Object;
.source "MGF1BytesGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private hLen:I

.field private seed:[B


# direct methods
.method private ItoOSP(I[B)V
    .locals 2

    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    array-length v3, p1

    sub-int/2addr v3, p3

    if-ge v3, p2, :cond_0

    new-instance v3, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "output buffer too small"

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    new-array v2, v3, [B

    const/4 v3, 0x4

    new-array v0, v3, [B

    const/4 v1, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    iget v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    if-le p3, v3, :cond_2

    :cond_1
    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->ItoOSP(I[B)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v4, v0

    invoke-interface {v3, v0, v6, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v6}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p2

    iget v4, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    invoke-static {v2, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    div-int v3, p3, v3

    if-lt v1, v3, :cond_1

    :cond_2
    iget v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v3, v1

    if-ge v3, p3, :cond_3

    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->ItoOSP(I[B)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v4, v0

    invoke-interface {v3, v0, v6, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v6}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v3, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p2

    iget v4, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v4, v1

    sub-int v4, p3, v4

    invoke-static {v2, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return p3
.end method

.method public init(Lmyorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 3

    instance-of v1, p1, Lmyorg/bouncycastle/crypto/params/MGFParameters;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MGF parameters required for MGF1Generator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/crypto/params/MGFParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/MGFParameters;->getSeed()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    return-void
.end method
