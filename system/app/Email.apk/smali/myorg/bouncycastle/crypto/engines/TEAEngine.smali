.class public Lmyorg/bouncycastle/crypto/engines/TEAEngine;
.super Ljava/lang/Object;
.source "TEAEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private _a:I

.field private _b:I

.field private _c:I

.field private _d:I

.field private _forEncryption:Z

.field private _initialised:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_initialised:Z

    return-void
.end method

.method private bytesToInt([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p2, v0, 0x1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p2, 0x1

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private decryptBlock([BI[BI)I
    .locals 7

    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v2

    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v3

    const v1, -0x3910c8e0

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x20

    if-eq v0, v4, :cond_0

    shl-int/lit8 v4, v2, 0x4

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_c:I

    add-int/2addr v4, v5

    add-int v5, v2, v1

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v2, 0x5

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_d:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    sub-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x4

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_a:I

    add-int/2addr v4, v5

    add-int v5, v3, v1

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v3, 0x5

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_b:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    sub-int/2addr v2, v4

    const v4, 0x61c88647

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    add-int/lit8 v4, p4, 0x4

    invoke-direct {p0, v3, p3, v4}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    const/16 v4, 0x8

    return v4
.end method

.method private encryptBlock([BI[BI)I
    .locals 7

    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v2

    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x20

    if-eq v0, v4, :cond_0

    const v4, 0x61c88647

    sub-int/2addr v1, v4

    shl-int/lit8 v4, v3, 0x4

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_a:I

    add-int/2addr v4, v5

    add-int v5, v3, v1

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v3, 0x5

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_b:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0x4

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_c:I

    add-int/2addr v4, v5

    add-int v5, v2, v1

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v2, 0x5

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_d:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    add-int/lit8 v4, p4, 0x4

    invoke-direct {p0, v3, p3, v4}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    const/16 v4, 0x8

    return v4
.end method

.method private setKey([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_a:I

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_b:I

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_c:I

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_d:I

    return-void
.end method

.method private unpackInt(I[BI)V
    .locals 2

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "TEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to TEA init - "

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
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_forEncryption:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_initialised:Z

    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->setKey([B)V

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 3

    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->_forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
