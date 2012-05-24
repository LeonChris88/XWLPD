.class public Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.super Ljava/lang/Object;
.source "BaseKDFBytesGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private counterStart:I

.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method protected constructor <init>(ILmyorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v11, 0x0

    array-length v7, p1

    sub-int/2addr v7, p3

    if-ge v7, p2, :cond_0

    new-instance v7, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v8, "output buffer too small"

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    int-to-long v4, p3

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    const-wide v7, 0x1ffffffffL

    cmp-long v7, v4, v7

    if-lez v7, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Output length too large"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    int-to-long v7, v6

    add-long/2addr v7, v4

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    int-to-long v9, v6

    div-long/2addr v7, v9

    long-to-int v0, v7

    const/4 v2, 0x0

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v2, v7, [B

    iget v1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    array-length v9, v9

    invoke-interface {v7, v8, v11, v9}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x18

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x10

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    int-to-byte v8, v1

    invoke-interface {v7, v8}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    if-eqz v7, :cond_2

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    array-length v9, v9

    invoke-interface {v7, v8, v11, v9}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_2
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v2, v11}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-le p3, v6, :cond_3

    invoke-static {v2, v11, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2, v11, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    return p3
.end method

.method public init(Lmyorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 3

    instance-of v1, p1, Lmyorg/bouncycastle/crypto/params/KDFParameters;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/crypto/params/KDFParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Lmyorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "KDF parameters required for KDF2Generator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
