.class public Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;
.super Ljava/lang/Object;
.source "ISO9796d2Signer.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/SignerWithRecovery;


# instance fields
.field private block:[B

.field private cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private fullMessage:Z

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private recoveredMessage:[B

.field private trailer:I


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;Z)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    if-eqz p3, :cond_0

    const/16 v0, 0xbc

    iput v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    if-eqz v0, :cond_1

    const/16 v0, 0x33cc

    iput v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    if-eqz v0, :cond_2

    const/16 v0, 0x31cc

    iput v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    if-eqz v0, :cond_3

    const/16 v0, 0x32cc

    iput v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no valid trailer for digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearBlock([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isSameAs([B[B)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    array-length v3, p2

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-eq v0, v2, :cond_3

    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    array-length v3, p2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_2
    array-length v2, p2

    if-eq v0, v2, :cond_3

    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v8}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v9, 0xbc

    if-ne v8, v9, :cond_0

    const/16 v6, 0x8

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v8, v8

    sub-int/2addr v8, v2

    add-int/lit8 v1, v8, -0x1

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v8, v9, v1}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    const/16 v10, -0x44

    aput-byte v10, v8, v9

    :goto_0
    const/4 v3, 0x0

    iget v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x4

    iget v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    sub-int v7, v8, v9

    if-lez v7, :cond_1

    iget v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v9, v7, 0x7

    div-int/lit8 v9, v9, 0x8

    sub-int v5, v8, v9

    const/16 v3, 0x60

    sub-int/2addr v1, v5

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-static {v8, v11, v9, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v8, v1, -0x1

    if-lez v8, :cond_3

    add-int/lit8 v4, v1, -0x1

    :goto_2
    if-eqz v4, :cond_2

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, -0x45

    aput-byte v9, v8, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_0
    const/16 v6, 0x10

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v8, v8

    sub-int/2addr v8, v2

    add-int/lit8 v1, v8, -0x2

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v8, v9, v1}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    add-int/lit8 v9, v9, -0x2

    iget v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    ushr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    goto :goto_0

    :cond_1
    const/16 v3, 0x40

    iget v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int/2addr v1, v8

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    invoke-static {v8, v11, v9, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    add-int/lit8 v9, v1, -0x1

    aget-byte v10, v8, v9

    xor-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, 0xb

    aput-byte v9, v8, v11

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v9, v8, v11

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v11

    :goto_3
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v10, v10

    invoke-interface {v8, v9, v11, v10}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-direct {p0, v8}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    return-object v0

    :cond_3
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, 0xa

    aput-byte v9, v8, v11

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v9, v8, v11

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v11

    goto :goto_3
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, v0}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v2, 0xbc

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    :goto_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->reset()V

    return-void

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    iput v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    return-void
.end method

.method public update(B)V
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    aput-byte p1, v0, v1

    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    return-void
.end method

.method public update([BII)V
    .locals 4

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v1, p3

    iput v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    return-void
.end method

.method public verifySignature([B)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v11, 0x0

    array-length v12, p1

    invoke-interface {v10, p1, v11, v12}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    aget-byte v10, v0, v8

    and-int/lit16 v10, v10, 0xc0

    xor-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_0

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    :goto_0
    return v8

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0xf

    xor-int/lit8 v10, v10, 0xc

    if-eqz v10, :cond_1

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/lit16 v10, v10, 0xbc

    if-nez v10, :cond_3

    const/4 v1, 0x1

    :goto_1
    const/4 v5, 0x0

    const/4 v5, 0x0

    :goto_2
    array-length v10, v0

    if-eq v5, v10, :cond_2

    aget-byte v10, v0, v5

    and-int/lit8 v10, v10, 0xf

    xor-int/lit8 v10, v10, 0xa

    if-nez v10, :cond_5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v10}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    new-array v3, v10, [B

    array-length v10, v0

    sub-int/2addr v10, v1

    array-length v11, v3

    sub-int v6, v10, v11

    sub-int v10, v6, v5

    if-gtz v10, :cond_6

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    goto :goto_0

    :cond_3
    array-length v10, v0

    add-int/lit8 v10, v10, -0x2

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    or-int v7, v10, v11

    sparse-switch v7, :sswitch_data_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "unrecognised hash in signature"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_0
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    instance-of v10, v10, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    if-nez v10, :cond_4

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "signer should be initialised with RIPEMD160"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_1
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    instance-of v10, v10, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    if-nez v10, :cond_4

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "signer should be initialised with SHA1"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_2
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    instance-of v10, v10, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    if-nez v10, :cond_4

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "signer should be initialised with RIPEMD128"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    aget-byte v10, v0, v8

    and-int/lit8 v10, v10, 0x20

    if-nez v10, :cond_9

    iput-boolean v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v10}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    sub-int v11, v6, v5

    invoke-interface {v10, v0, v5, v11}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v10, v3, v8}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v4, 0x0

    :goto_3
    array-length v10, v3

    if-eq v4, v10, :cond_8

    add-int v10, v6, v4

    aget-byte v11, v0, v10

    aget-byte v12, v3, v4

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    add-int v10, v6, v4

    aget-byte v10, v0, v10

    if-eqz v10, :cond_7

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    sub-int v10, v6, v5

    new-array v10, v10, [B

    iput-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v11, v11

    invoke-static {v0, v5, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    iget v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    if-eqz v10, :cond_c

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v10, v11}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->isSameAs([B[B)Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    goto/16 :goto_0

    :cond_9
    iput-boolean v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v10, v3, v8}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v4, 0x0

    :goto_5
    array-length v10, v3

    if-eq v4, v10, :cond_b

    add-int v10, v6, v4

    aget-byte v11, v0, v10

    aget-byte v12, v3, v4

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    add-int v10, v6, v4

    aget-byte v10, v0, v10

    if-eqz v10, :cond_a

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    sub-int v10, v6, v5

    new-array v10, v10, [B

    iput-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v11, v11

    invoke-static {v0, v5, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_c
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    move v8, v9

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x31cc -> :sswitch_0
        0x32cc -> :sswitch_2
        0x33cc -> :sswitch_1
    .end sparse-switch
.end method
