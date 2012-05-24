.class public Lmyorg/bouncycastle/crypto/engines/IDEAEngine;
.super Ljava/lang/Object;
.source "IDEAEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2

    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private expandKey([B)[I
    .locals 9

    const/16 v8, 0x34

    const/16 v4, 0x10

    const/4 v7, 0x6

    const v6, 0xffff

    new-array v1, v8, [I

    array-length v3, p1

    if-ge v3, v4, :cond_0

    new-array v2, v4, [B

    const/4 v3, 0x0

    array-length v4, v2

    array-length v5, p1

    sub-int/2addr v4, v5

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    mul-int/lit8 v3, v0, 0x2

    invoke-direct {p0, p1, v3}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_1
    if-ge v0, v8, :cond_4

    and-int/lit8 v3, v0, 0x7

    if-ge v3, v7, :cond_2

    add-int/lit8 v3, v0, -0x7

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0x6

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    and-int/lit8 v3, v0, 0x7

    if-ne v3, v7, :cond_3

    add-int/lit8 v3, v0, -0x7

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0xe

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v0, -0xf

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0xe

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method private generateWorkingKey(Z[B)[I
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->invertKey([I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private ideaFunc([I[BI[BI)V
    .locals 13

    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v7

    add-int/lit8 v11, p3, 0x2

    invoke-direct {p0, p2, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v8

    add-int/lit8 v11, p3, 0x4

    invoke-direct {p0, p2, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v9

    add-int/lit8 v11, p3, 0x6

    invoke-direct {p0, p2, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v10

    const/4 v4, 0x0

    move v3, v2

    :goto_0
    const/16 v11, 0x8

    if-ge v4, v11, :cond_0

    add-int/lit8 v2, v3, 0x1

    aget v11, p1, v3

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v7

    add-int/lit8 v3, v2, 0x1

    aget v11, p1, v2

    add-int/2addr v8, v11

    const v11, 0xffff

    and-int/2addr v8, v11

    add-int/lit8 v2, v3, 0x1

    aget v11, p1, v3

    add-int/2addr v9, v11

    const v11, 0xffff

    and-int/2addr v9, v11

    add-int/lit8 v3, v2, 0x1

    aget v11, p1, v2

    invoke-direct {p0, v10, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v10

    move v5, v8

    move v6, v9

    xor-int/2addr v9, v7

    xor-int/2addr v8, v10

    add-int/lit8 v2, v3, 0x1

    aget v11, p1, v3

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v9

    add-int/2addr v8, v9

    const v11, 0xffff

    and-int/2addr v8, v11

    add-int/lit8 v3, v2, 0x1

    aget v11, p1, v2

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v8

    add-int/2addr v9, v8

    const v11, 0xffff

    and-int/2addr v9, v11

    xor-int/2addr v7, v8

    xor-int/2addr v10, v9

    xor-int/2addr v8, v6

    xor-int/2addr v9, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v3, 0x1

    aget v11, p1, v3

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v11

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v11, v0, v1}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    add-int/lit8 v3, v2, 0x1

    aget v11, p1, v2

    add-int/2addr v11, v9

    add-int/lit8 v12, p5, 0x2

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    add-int/lit8 v2, v3, 0x1

    aget v11, p1, v3

    add-int/2addr v11, v8

    add-int/lit8 v12, p5, 0x4

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    aget v11, p1, v2

    invoke-direct {p0, v10, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v11

    add-int/lit8 v12, p5, 0x6

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    return-void
.end method

.method private invertKey([I)[I
    .locals 10

    const/16 v3, 0x34

    const/16 v9, 0x34

    new-array v2, v9, [I

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    aget v9, p1, v0

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    add-int/lit8 v0, v1, 0x1

    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    add-int/lit8 v1, v0, 0x1

    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    add-int/lit8 v0, v1, 0x1

    aget v9, p1, v1

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    const/4 v4, 0x1

    move v1, v0

    :goto_0
    const/16 v9, 0x8

    if-ge v4, v9, :cond_0

    add-int/lit8 v0, v1, 0x1

    aget v5, p1, v1

    add-int/lit8 v1, v0, 0x1

    aget v6, p1, v0

    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    add-int/lit8 v0, v1, 0x1

    aget v9, p1, v1

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    add-int/lit8 v1, v0, 0x1

    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    add-int/lit8 v0, v1, 0x1

    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    add-int/lit8 v1, v0, 0x1

    aget v9, p1, v0

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    aget v5, p1, v1

    add-int/lit8 v1, v0, 0x1

    aget v6, p1, v0

    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    add-int/lit8 v0, v1, 0x1

    aget v9, p1, v1

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    add-int/lit8 v1, v0, 0x1

    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    add-int/lit8 v0, v1, 0x1

    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    aget v9, p1, v0

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    return-object v2
.end method

.method private mul(II)I
    .locals 4

    const v1, 0x10001

    const v3, 0xffff

    if-nez p1, :cond_0

    sub-int p1, v1, p2

    :goto_0
    and-int v1, p1, v3

    return v1

    :cond_0
    if-nez p2, :cond_1

    sub-int p1, v1, p1

    goto :goto_0

    :cond_1
    mul-int v0, p1, p2

    and-int p2, v0, v3

    ushr-int/lit8 p1, v0, 0x10

    sub-int v2, p2, p1

    if-ge p2, p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    add-int p1, v2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private mulInv(I)I
    .locals 8

    const v7, 0x10001

    const/4 v6, 0x1

    const v5, 0xffff

    const/4 v4, 0x2

    if-ge p1, v4, :cond_1

    move v1, p1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    div-int v2, v7, p1

    rem-int v3, v7, p1

    :goto_1
    if-eq v3, v6, :cond_2

    div-int v0, p1, v3

    rem-int/2addr p1, v3

    mul-int v4, v2, v0

    add-int/2addr v4, v1

    and-int v1, v4, v5

    if-eq p1, v6, :cond_0

    div-int v0, v3, p1

    rem-int/2addr v3, p1

    mul-int v4, v1, v0

    add-int/2addr v4, v2

    and-int v2, v4, v5

    goto :goto_1

    :cond_2
    rsub-int/lit8 v4, v2, 0x1

    and-int v1, v4, v5

    goto :goto_0
.end method

.method private wordToBytes(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method addInv(I)I
    .locals 2

    rsub-int/lit8 v0, p1, 0x0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "IDEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to IDEA init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 6

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IDEA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->ideaFunc([I[BI[BI)V

    const/16 v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
