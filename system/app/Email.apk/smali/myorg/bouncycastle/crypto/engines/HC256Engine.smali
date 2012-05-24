.class public Lmyorg/bouncycastle/crypto/engines/HC256Engine;
.super Ljava/lang/Object;
.source "HC256Engine.java"

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

    const/16 v2, 0x400

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    return-void
.end method

.method private getByte()B
    .locals 5

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->step()I

    move-result v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    const/4 v3, 0x0

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    const/4 v3, 0x1

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    const/4 v3, 0x2

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    const/4 v3, 0x3

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    aget-byte v0, v2, v3

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    return v0
.end method

.method private init()V
    .locals 14

    const/16 v13, 0xa00

    const/16 v12, 0x400

    const/16 v8, 0x10

    const/16 v11, 0x20

    const/4 v10, 0x0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v6, v6

    if-eq v6, v11, :cond_0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v6, v6

    if-eq v6, v8, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The key must be 128/256 bits long"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v6, v6

    if-ge v6, v8, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The IV must be at least 128 bits long"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v6, v6

    if-eq v6, v11, :cond_2

    new-array v1, v11, [B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v7, v7

    invoke-static {v6, v10, v1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v7, v7

    invoke-static {v6, v10, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    :cond_2
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v6, v6

    if-ge v6, v11, :cond_3

    new-array v2, v11, [B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v7, v7

    invoke-static {v6, v10, v2, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v7, v7

    array-length v8, v2

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v9, v9

    sub-int/2addr v8, v9

    invoke-static {v6, v10, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    :cond_3
    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    new-array v3, v13, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v11, :cond_4

    shr-int/lit8 v6, v0, 0x2

    aget v7, v3, v6

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    aget-byte v8, v8, v0

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v0, 0x3

    mul-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v11, :cond_5

    shr-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x8

    aget v7, v3, v6

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    aget-byte v8, v8, v0

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v0, 0x3

    mul-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/16 v0, 0x10

    :goto_2
    if-ge v0, v13, :cond_6

    add-int/lit8 v6, v0, -0x2

    aget v4, v3, v6

    add-int/lit8 v6, v0, -0xf

    aget v5, v3, v6

    const/16 v6, 0x11

    invoke-static {v4, v6}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v6

    const/16 v7, 0x13

    invoke-static {v4, v7}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v7

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v4, 0xa

    xor-int/2addr v6, v7

    add-int/lit8 v7, v0, -0x7

    aget v7, v3, v7

    add-int/2addr v6, v7

    const/4 v7, 0x7

    invoke-static {v5, v7}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v7

    const/16 v8, 0x12

    invoke-static {v5, v8}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v8

    xor-int/2addr v7, v8

    ushr-int/lit8 v8, v5, 0x3

    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v0, -0x10

    aget v7, v3, v7

    add-int/2addr v6, v7

    add-int/2addr v6, v0

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/16 v6, 0x200

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    invoke-static {v3, v6, v7, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x600

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    invoke-static {v3, v6, v7, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_3
    const/16 v6, 0x1000

    if-ge v0, v6, :cond_7

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->step()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    return-void
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
    .locals 10

    const/16 v9, 0x17

    const/16 v8, 0xa

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    and-int/lit16 v0, v4, 0x3ff

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    const/16 v5, 0x400

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit8 v5, v0, -0x3

    and-int/lit16 v5, v5, 0x3ff

    aget v2, v4, v5

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit16 v5, v0, -0x3ff

    and-int/lit16 v5, v5, 0x3ff

    aget v3, v4, v5

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    aget v5, v4, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit8 v7, v0, -0xa

    and-int/lit16 v7, v7, 0x3ff

    aget v6, v6, v7

    invoke-static {v2, v8}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v7

    invoke-static {v3, v9}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v8

    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    xor-int v8, v2, v3

    and-int/lit16 v8, v8, 0x3ff

    aget v7, v7, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v4, v0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit8 v5, v0, -0xc

    and-int/lit16 v5, v5, 0x3ff

    aget v2, v4, v5

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    and-int/lit16 v5, v2, 0xff

    aget v4, v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    aget v5, v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    shr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x200

    aget v5, v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    shr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x300

    aget v5, v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    aget v5, v5, v0

    xor-int v1, v4, v5

    :goto_0
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0x7ff

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    return v1

    :cond_0
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit8 v5, v0, -0x3

    and-int/lit16 v5, v5, 0x3ff

    aget v2, v4, v5

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit16 v5, v0, -0x3ff

    and-int/lit16 v5, v5, 0x3ff

    aget v3, v4, v5

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    aget v5, v4, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit8 v7, v0, -0xa

    and-int/lit16 v7, v7, 0x3ff

    aget v6, v6, v7

    invoke-static {v2, v8}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v7

    invoke-static {v3, v9}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v8

    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    xor-int v8, v2, v3

    and-int/lit16 v8, v8, 0x3ff

    aget v7, v7, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v4, v0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit8 v5, v0, -0xc

    and-int/lit16 v5, v5, 0x3ff

    aget v2, v4, v5

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    and-int/lit16 v5, v2, 0xff

    aget v4, v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    aget v5, v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    shr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x200

    aget v5, v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    shr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x300

    aget v5, v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    aget v5, v5, v0

    xor-int v1, v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "HC-256"

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

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

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

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->init()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->initialised:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter passed to HC256 init - "

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

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->initialised:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->getAlgorithmName()Ljava/lang/String;

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

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->getByte()B

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

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;->init()V

    return-void
.end method
