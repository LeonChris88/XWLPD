.class public Lmyorg/bouncycastle/crypto/engines/RC532Engine;
.super Ljava/lang/Object;
.source "RC532Engine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private _S:[I

.field private _noRounds:I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([BI[BI)I
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v0

    add-int/lit8 v3, p2, 0x4

    invoke-direct {p0, p1, v3}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    :goto_0
    if-lt v2, v5, :cond_0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    sub-int v3, v1, v3

    invoke-direct {p0, v3, v0}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->rotateRight(II)I

    move-result v3

    xor-int v1, v3, v0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v4, v2, 0x2

    aget v3, v3, v4

    sub-int v3, v0, v3

    invoke-direct {p0, v3, v1}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->rotateRight(II)I

    move-result v3

    xor-int v0, v3, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v3, v0, v3

    invoke-direct {p0, v3, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    aget v3, v3, v5

    sub-int v3, v1, v3

    add-int/lit8 v4, p4, 0x4

    invoke-direct {p0, v3, p3, v4}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    const/16 v3, 0x8

    return v3
.end method

.method private encryptBlock([BI[BI)I
    .locals 6

    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int v0, v3, v4

    add-int/lit8 v3, p2, 0x4

    invoke-direct {p0, p1, v3}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int v1, v3, v4

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    if-gt v2, v3, :cond_0

    xor-int v3, v0, v1

    invoke-direct {p0, v3, v1}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    add-int v0, v3, v4

    xor-int v3, v1, v0

    invoke-direct {p0, v3, v0}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    add-int v1, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    add-int/lit8 v3, p4, 0x4

    invoke-direct {p0, v1, p3, v3}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    const/16 v3, 0x8

    return v3
.end method

.method private rotateLeft(II)I
    .locals 2

    and-int/lit8 v0, p2, 0x1f

    shl-int v0, p1, v0

    and-int/lit8 v1, p2, 0x1f

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private rotateRight(II)I
    .locals 2

    and-int/lit8 v0, p2, 0x1f

    ushr-int v0, p1, v0

    and-int/lit8 v1, p2, 0x1f

    rsub-int/lit8 v1, v1, 0x20

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setKey([B)V
    .locals 11

    array-length v7, p1

    add-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x4

    new-array v2, v7, [I

    const/4 v3, 0x0

    :goto_0
    array-length v7, p1

    if-eq v3, v7, :cond_0

    div-int/lit8 v7, v3, 0x4

    aget v8, v2, v7

    aget-byte v9, p1, v3

    and-int/lit16 v9, v9, 0xff

    rem-int/lit8 v10, v3, 0x4

    mul-int/lit8 v10, v10, 0x8

    shl-int/2addr v9, v10

    add-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v8, 0x0

    const v9, -0x481eae9d

    aput v9, v7, v8

    const/4 v3, 0x1

    :goto_1
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v7, v7

    if-ge v3, v7, :cond_1

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    const v9, -0x61c88647

    add-int/2addr v8, v9

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    array-length v7, v2

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v8, v8

    if-le v7, v8, :cond_2

    array-length v7, v2

    mul-int/lit8 v4, v7, 0x3

    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_3

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    aget v8, v8, v3

    add-int/2addr v8, v0

    add-int/2addr v8, v1

    const/4 v9, 0x3

    invoke-direct {p0, v8, v9}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v0

    aput v0, v7, v3

    aget v7, v2, v5

    add-int/2addr v7, v0

    add-int/2addr v7, v1

    add-int v8, v0, v1

    invoke-direct {p0, v7, v8}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v1

    aput v1, v2, v5

    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v8, v8

    rem-int v3, v7, v8

    add-int/lit8 v7, v5, 0x1

    array-length v8, v2

    rem-int v5, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v7, v7

    mul-int/lit8 v4, v7, 0x3

    goto :goto_2

    :cond_3
    return-void
.end method

.method private wordToBytes(I[BI)V
    .locals 2

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RC5-32"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/RC5Parameters;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/RC5Parameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/RC5Parameters;->getRounds()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/RC5Parameters;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->setKey([B)V

    :goto_0
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->forEncryption:Z

    return-void

    :cond_0
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->setKey([B)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to RC532 init - "

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

.method public processBlock([BI[BI)I
    .locals 1

    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
