.class public Lmyorg/bouncycastle/crypto/signers/PSSSigner;
.super Ljava/lang/Object;
.source "PSSSigner.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Signer;


# instance fields
.field private block:[B

.field private cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private contentDigest:Lmyorg/bouncycastle/crypto/Digest;

.field private emBits:I

.field private hLen:I

.field private mDash:[B

.field private mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private sLen:I

.field private salt:[B

.field private trailer:B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/Digest;IB)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lmyorg/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {p3}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    iput p4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    new-array v0, p4, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    add-int/lit8 v0, p4, 0x8

    iget v1, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iput-byte p5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    return-void
.end method

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

.method private maskGeneratorFunction1([BIII)[B
    .locals 8

    const/4 v7, 0x0

    new-array v3, p4, [B

    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    new-array v2, v4, [B

    const/4 v4, 0x4

    new-array v0, v4, [B

    const/4 v1, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    :goto_0
    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    div-int v4, p4, v4

    if-ge v1, v4, :cond_0

    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    iget v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_1

    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    array-length v5, v3

    iget v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v3
.end method


# virtual methods
.method public generateSignature()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/CryptoException;,
            Lmyorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    iget v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    invoke-interface {v4, v5, v6}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    iget v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v4, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    new-array v2, v4, [B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    invoke-interface {v4, v5, v9, v6}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v9}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    iget v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v4, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v2

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v2, v9, v4, v5}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v4, v3

    aget-byte v6, v1, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v4, v9

    const/16 v6, 0xff

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x8

    iget v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v7, v8

    shr-int/2addr v6, v7

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v9

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-static {v2, v9, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    aput-byte v6, v4, v5

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    invoke-interface {v4, v5, v9, v6}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6

    instance-of v3, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_1

    move-object v1, p2

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    :cond_0
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, v2}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    instance-of v3, v2, Lmyorg/bouncycastle/crypto/params/RSABlindingParameters;

    if-eqz v3, :cond_2

    check-cast v2, Lmyorg/bouncycastle/crypto/params/RSABlindingParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/RSABlindingParameters;->getPublicKey()Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/lit8 v4, v4, 0x8

    iget v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x9

    if-ge v3, v4, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key too small for specified hash and salt lengths"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v2, p2

    if-eqz p1, :cond_0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_2
    move-object v0, v2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    goto :goto_1

    :cond_3
    iget v3, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 12

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v9, v9

    iget v10, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v9, v10

    iget v10, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v9, v10

    invoke-interface {v7, v8, v9}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v8, 0x0

    array-length v9, p1

    invoke-interface {v7, p1, v8, v9}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    const/4 v7, 0x0

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v9, v9

    array-length v10, v0

    sub-int/2addr v9, v10

    array-length v10, v0

    invoke-static {v0, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-byte v7, v7, v8

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    if-eq v7, v8, :cond_0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    :goto_0
    return v5

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    iget v9, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v10, v10

    iget v11, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    array-length v7, v1

    if-eq v3, v7, :cond_1

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v8, v7, v3

    aget-byte v9, v1, v3

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v8, v7, v5

    const/16 v9, 0xff

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x8

    iget v11, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v10, v11

    shr-int/2addr v9, v10

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v5

    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v7, v7

    iget v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v7, v8

    iget v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    if-eq v3, v7, :cond_3

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v7, v7, v3

    if-eqz v7, :cond_2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    iget v9, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v8, v9

    iget v9, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x2

    aget-byte v7, v7, v8

    if-eq v7, v6, :cond_4

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    iget v9, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v8, v9

    iget v9, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v10, v10

    iget v11, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v10, v11

    iget v11, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v9, v9

    invoke-interface {v7, v8, v5, v9}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v9, v9

    iget v10, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v9, v10

    invoke-interface {v7, v8, v9}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v7, v7

    iget v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v7, v8

    add-int/lit8 v3, v7, -0x1

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v7, v7

    iget v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int v4, v7, v8

    :goto_3
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v7, v7

    if-eq v4, v7, :cond_6

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v7, v7, v3

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    aget-byte v8, v8, v4

    xor-int/2addr v7, v8

    if-eqz v7, :cond_5

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v5}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v5}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    move v5, v6

    goto/16 :goto_0
.end method
