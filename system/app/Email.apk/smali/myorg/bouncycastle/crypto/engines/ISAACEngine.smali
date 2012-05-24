.class public Lmyorg/bouncycastle/crypto/engines/ISAACEngine;
.super Ljava/lang/Object;
.source "ISAACEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field private results:[I

.field private final sizeL:I

.field private final stateArraySize:I

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->sizeL:I

    const/16 v0, 0x100

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->stateArraySize:I

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    return-void
.end method

.method private byteToIntLittle([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p2, v0, 0x1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p2, 0x1

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 p2, v0, 0x1

    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method private intToByteLittle(I)[B
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private intToByteLittle([I)[B
    .locals 6

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x4

    new-array v2, v3, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget v3, p1, v0

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->intToByteLittle(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private isaac()V
    .locals 6

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    add-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x100

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    aget v1, v3, v0

    and-int/lit8 v3, v0, 0x3

    packed-switch v3, :pswitch_data_0

    :goto_1
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int/lit16 v5, v0, 0x80

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    add-int/2addr v4, v5

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    add-int v2, v4, v5

    aput v2, v3, v0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    ushr-int/lit8 v5, v2, 0xa

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    add-int/2addr v4, v1

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    shl-int/lit8 v4, v4, 0xd

    xor-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1

    :pswitch_1
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    ushr-int/lit8 v4, v4, 0x6

    xor-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1

    :pswitch_2
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    shl-int/lit8 v4, v4, 0x2

    xor-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1

    :pswitch_3
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    ushr-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private mix([I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v0, p1, v3

    aget v1, p1, v4

    shl-int/lit8 v1, v1, 0xb

    xor-int/2addr v0, v1

    aput v0, p1, v3

    aget v0, p1, v6

    aget v1, p1, v3

    add-int/2addr v0, v1

    aput v0, p1, v6

    aget v0, p1, v4

    aget v1, p1, v5

    add-int/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v4

    aget v1, p1, v5

    ushr-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v7

    aget v1, p1, v4

    add-int/2addr v0, v1

    aput v0, p1, v7

    aget v0, p1, v5

    aget v1, p1, v6

    add-int/2addr v0, v1

    aput v0, p1, v5

    aget v0, p1, v5

    aget v1, p1, v6

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    aput v0, p1, v5

    const/4 v0, 0x5

    aget v1, p1, v0

    aget v2, p1, v5

    add-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v6

    aget v1, p1, v7

    add-int/2addr v0, v1

    aput v0, p1, v6

    aget v0, p1, v6

    aget v1, p1, v7

    ushr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    aput v0, p1, v6

    const/4 v0, 0x6

    aget v1, p1, v0

    aget v2, p1, v6

    add-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v7

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v7

    aget v0, p1, v7

    const/4 v1, 0x5

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    xor-int/2addr v0, v1

    aput v0, p1, v7

    const/4 v0, 0x7

    aget v1, p1, v0

    aget v2, p1, v7

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x5

    aget v1, p1, v0

    const/4 v2, 0x6

    aget v2, p1, v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x5

    aget v1, p1, v0

    const/4 v2, 0x6

    aget v2, p1, v2

    ushr-int/lit8 v2, v2, 0x4

    xor-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v3

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v3

    const/4 v0, 0x6

    aget v1, p1, v0

    const/4 v2, 0x7

    aget v2, p1, v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x6

    aget v1, p1, v0

    const/4 v2, 0x7

    aget v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v4

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v4

    const/4 v0, 0x7

    aget v1, p1, v0

    aget v2, p1, v3

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x7

    aget v1, p1, v0

    aget v2, p1, v3

    ushr-int/lit8 v2, v2, 0x9

    xor-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v5

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v5

    aget v0, p1, v3

    aget v1, p1, v4

    add-int/2addr v0, v1

    aput v0, p1, v3

    return-void
.end method

.method private setKey([B)V
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0x100

    const/16 v8, 0x8

    const/4 v7, 0x0

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    if-nez v5, :cond_0

    new-array v5, v9, [I

    iput-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    :cond_0
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    if-nez v5, :cond_1

    new-array v5, v9, [I

    iput-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_2

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    aput v7, v6, v1

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    array-length v5, p1

    array-length v6, p1

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    new-array v4, v5, [B

    array-length v5, p1

    invoke-static {p1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    shr-int/lit8 v6, v1, 0x2

    invoke-direct {p0, v4, v1}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->byteToIntLittle([BI)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_3
    new-array v0, v8, [I

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_4

    const v5, -0x61c88647

    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const/4 v5, 0x4

    if-ge v1, v5, :cond_5

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->mix([I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_4
    const/4 v5, 0x2

    if-ge v1, v5, :cond_a

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v9, :cond_9

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v8, :cond_7

    aget v6, v0, v3

    if-ge v1, v10, :cond_6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    add-int v7, v2, v3

    aget v5, v5, v7

    :goto_7
    add-int/2addr v5, v6

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int v7, v2, v3

    aget v5, v5, v7

    goto :goto_7

    :cond_7
    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->mix([I)V

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v8, :cond_8

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int v6, v2, v3

    aget v7, v0, v3

    aput v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v2, 0x8

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->isaac()V

    iput-boolean v10, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "ISAAC"

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to ISAAC init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->setKey([B)V

    return-void
.end method

.method public processBytes([BII[BI)V
    .locals 4

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not initialised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_2

    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_4

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    if-nez v1, :cond_3

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->isaac()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->intToByteLittle([I)[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    :cond_3
    add-int v1, v0, p5

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x3ff

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->setKey([B)V

    return-void
.end method
