.class public Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;
.super Ljava/lang/Object;
.source "BrokenKDF2BytesGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v9, 0x0

    array-length v5, p1

    sub-int/2addr v5, p3

    if-ge v5, p2, :cond_0

    new-instance v5, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v6, "output buffer too small"

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    mul-int/lit8 v5, p3, 0x8

    int-to-long v3, v5

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    int-to-long v5, v5

    const-wide/16 v7, 0x1d

    mul-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Output length to large"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    int-to-long v5, v5

    div-long v5, v3, v5

    long-to-int v0, v5

    const/4 v2, 0x0

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v2, v5, [B

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_3

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->shared:[B

    iget-object v7, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->shared:[B

    array-length v7, v7

    invoke-interface {v5, v6, v9, v7}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    invoke-interface {v5, v6}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-interface {v5, v6}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-interface {v5, v6}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v6, v1, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-interface {v5, v6}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    iget-object v7, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    array-length v7, v7

    invoke-interface {v5, v6, v9, v7}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v2, v9}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    sub-int v5, p3, p2

    array-length v6, v2

    if-le v5, v6, :cond_2

    array-length v5, v2

    invoke-static {v2, v9, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v2

    add-int/2addr p2, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int v5, p3, p2

    invoke-static {v2, v9, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    return p3
.end method

.method public init(Lmyorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 3

    instance-of v1, p1, Lmyorg/bouncycastle/crypto/params/KDFParameters;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "KDF parameters required for KDF2Generator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/crypto/params/KDFParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->shared:[B

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    return-void
.end method
