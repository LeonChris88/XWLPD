.class public Lmyorg/bouncycastle/crypto/engines/HC128Engine;
.super Ljava/lang/Object;
.source "HC128Engine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private buf:[B

.field private cnt:I

.field private idx:I

.field private initialised:Z

.field private iv:[B

.field private key:[B

.field private p:[I

.field private q:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x200

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    return-void
.end method

.method private static dim(II)I
    .locals 1

    sub-int v0, p0, p1

    invoke-static {v0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->mod512(I)I

    move-result v0

    return v0
.end method

.method private static f1(I)I
    .locals 2

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x12

    invoke-static {p0, v1}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private static f2(I)I
    .locals 2

    const/16 v0, 0x11

    invoke-static {p0, v0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x13

    invoke-static {p0, v1}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private g1(III)I
    .locals 2

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {p3, v1}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private g2(III)I
    .locals 2

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {p3, v1}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getByte()B
    .locals 5

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v3, 0x0

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v3, 0x1

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v3, 0x2

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v3, 0x3

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    aget-byte v0, v2, v3

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    return v0
.end method

.method private h1(I)I
    .locals 3

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    and-int/lit16 v1, p1, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private h2(I)I
    .locals 3

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    and-int/lit16 v1, p1, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 11

    const/16 v10, 0x500

    const/16 v9, 0x10

    const/4 v8, 0x4

    const/16 v7, 0x200

    const/4 v6, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    array-length v2, v2

    if-eq v2, v9, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The key must be 128 bits long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    new-array v1, v10, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_1

    shr-int/lit8 v2, v0, 0x2

    aget v3, v1, v2

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v0, 0x3

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v6, v1, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    if-ge v0, v9, :cond_2

    shr-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x8

    aget v3, v1, v2

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v0, 0x3

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-static {v1, v2, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x10

    :goto_2
    if-ge v0, v10, :cond_3

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    invoke-static {v2}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->f2(I)I

    move-result v2

    add-int/lit8 v3, v0, -0x7

    aget v3, v1, v3

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, -0xf

    aget v3, v1, v3

    invoke-static {v3}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->f1(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, -0x10

    aget v3, v1, v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/16 v2, 0x100

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v1, v2, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x300

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v1, v2, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_4

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v7, :cond_5

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    return-void
.end method

.method private static mod1024(I)I
    .locals 1

    and-int/lit16 v0, p0, 0x3ff

    return v0
.end method

.method private static mod512(I)I
    .locals 1

    and-int/lit16 v0, p0, 0x1ff

    return v0
.end method

.method private static rotateLeft(II)I
    .locals 2

    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static rotateRight(II)I
    .locals 2

    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private step()I
    .locals 9

    const/16 v7, 0x1ff

    const/16 v8, 0xc

    const/16 v6, 0xa

    const/4 v5, 0x3

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    invoke-static {v2}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->mod512(I)I

    move-result v0

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    const/16 v3, 0x200

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    aget v3, v2, v0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v5}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v6}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v6

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v7}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v7

    aget v6, v6, v7

    invoke-direct {p0, v4, v5, v6}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->g1(III)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v8}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v3

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->h1(I)I

    move-result v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    aget v3, v3, v0

    xor-int v1, v2, v3

    :goto_0
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->mod1024(I)I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    return v1

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    aget v3, v2, v0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v5}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v6}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v6

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v7}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v7

    aget v6, v6, v7

    invoke-direct {p0, v4, v5, v6}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->g2(III)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v8}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v3

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->h2(I)I

    move-result v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    aget v3, v3, v0

    xor-int v1, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "HC-128"

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p2

    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    move-object v1, p2

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_1

    check-cast v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->init()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->initialised:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter passed to HC128 init - "

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
.end method

.method public processBytes([BII[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->initialised:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->getAlgorithmName()Ljava/lang/String;

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
    if-ge v0, p3, :cond_3

    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->getByte()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;->init()V

    return-void
.end method
