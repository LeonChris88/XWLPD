.class public Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;
.super Ljava/lang/Object;
.source "RFC3211WrapEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

.field private rand:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/RFC3211Wrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    :cond_1
    check-cast p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_0
.end method

.method public unwrap([BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v10, 0x0

    iget-boolean v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "not set for unwrapping"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v7, v0, 0x2

    if-ge p3, v7, :cond_1

    new-instance v7, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v8, "input too short"

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    new-array v1, p3, [B

    new-array v4, v0, [B

    invoke-static {p1, p2, v1, v10, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v4

    invoke-static {p1, p2, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v8, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v7, v10, v8}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    move v3, v0

    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7, v1, v3, v1, v3}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v3, v0

    goto :goto_0

    :cond_2
    array-length v7, v1

    array-length v8, v4

    sub-int/2addr v7, v8

    array-length v8, v4

    invoke-static {v1, v7, v4, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v8, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v7, v10, v8}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7, v1, v10, v1, v10}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v7, v10, v8}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v3, 0x0

    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_3

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7, v1, v3, v1, v3}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v3, v0

    goto :goto_1

    :cond_3
    aget-byte v7, v1, v10

    and-int/lit16 v7, v7, 0xff

    array-length v8, v1

    add-int/lit8 v8, v8, -0x4

    if-le v7, v8, :cond_4

    new-instance v7, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v8, "wrapped key corrupted"

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    aget-byte v7, v1, v10

    and-int/lit16 v7, v7, 0xff

    new-array v5, v7, [B

    const/4 v7, 0x4

    aget-byte v8, v1, v10

    invoke-static {v1, v7, v5, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_2
    const/4 v7, 0x3

    if-eq v3, v7, :cond_5

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v1, v7

    xor-int/lit8 v7, v7, -0x1

    int-to-byte v2, v7

    aget-byte v7, v5, v3

    xor-int/2addr v7, v2

    or-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    new-instance v7, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v8, "wrapped key fails checksum"

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    return-object v5
.end method

.method public wrap([BII)[B
    .locals 6

    const/4 v5, 0x1

    iget-boolean v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not set for wrapping"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3, v5, v4}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    add-int/lit8 v3, p3, 0x4

    mul-int/lit8 v4, v0, 0x2

    if-ge v3, v4, :cond_1

    mul-int/lit8 v3, v0, 0x2

    new-array v1, v3, [B

    :goto_0
    const/4 v3, 0x0

    int-to-byte v4, p3

    aput-byte v4, v1, v3

    aget-byte v3, p1, p2

    xor-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    xor-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    xor-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x4

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p3, 0x4

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, p3, 0x4

    rem-int/2addr v3, v0

    if-nez v3, :cond_2

    add-int/lit8 v3, p3, 0x4

    :goto_2
    new-array v1, v3, [B

    goto :goto_0

    :cond_2
    add-int/lit8 v3, p3, 0x4

    div-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3, v1, v2, v1, v2}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v2, v0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_4
    array-length v3, v1

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3, v1, v2, v1, v2}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v2, v0

    goto :goto_4

    :cond_5
    return-object v1
.end method
