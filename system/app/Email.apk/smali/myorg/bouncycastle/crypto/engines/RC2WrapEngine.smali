.class public Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;
.super Ljava/lang/Object;
.source "RC2WrapEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lmyorg/bouncycastle/crypto/CipherParameters;

.field private paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

.field sha1:Lmyorg/bouncycastle/crypto/Digest;

.field private sr:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->IV2:[B

    return-void

    :array_0
    .array-data 0x1
        0x4at
        0xddt
        0xa2t
        0x2ct
        0x79t
        0xe8t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->digest:[B

    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    new-array v0, v4, [B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->digest:[B

    invoke-interface {v1, v2, v3}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->digest:[B

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lmyorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RC2"

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    const/16 v3, 0x8

    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    new-instance v1, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v2, Lmyorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :goto_0
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_3

    check-cast p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    array-length v1, v1

    if-eq v1, v3, :cond_4

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV is not 8 octets"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You should not supply an IV for unwrapping"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    if-eqz v1, :cond_4

    new-array v1, v3, [B

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    :cond_4
    return-void
.end method

.method public unwrap([BII)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Not set for unwrapping"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    if-nez p1, :cond_1

    new-instance v13, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v14, "Null pointer as ciphertext"

    invoke-direct {v13, v14}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v13}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v13

    rem-int v13, p3, v13

    if-eqz v13, :cond_2

    new-instance v13, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ciphertext not multiple of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v15}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2
    new-instance v11, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    sget-object v14, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->IV2:[B

    invoke-direct {v11, v13, v14}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v11}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    move/from16 v0, p3

    new-array v8, v0, [B

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v8, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x0

    :goto_0
    array-length v13, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v14}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v14

    div-int/2addr v13, v14

    if-ge v10, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v13}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v13

    mul-int v9, v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v13, v8, v9, v8, v9}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    array-length v13, v8

    new-array v7, v13, [B

    const/4 v10, 0x0

    :goto_1
    array-length v13, v8

    if-ge v10, v13, :cond_4

    array-length v13, v8

    add-int/lit8 v14, v10, 0x1

    sub-int/2addr v13, v14

    aget-byte v13, v8, v13

    aput-byte v13, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    const/16 v13, 0x8

    new-array v13, v13, [B

    move-object/from16 v0, p0

    iput-object v13, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    array-length v13, v7

    add-int/lit8 v13, v13, -0x8

    new-array v6, v13, [B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    const/4 v15, 0x0

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-static {v7, v13, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v13, 0x8

    const/4 v14, 0x0

    array-length v15, v7

    add-int/lit8 v15, v15, -0x8

    invoke-static {v7, v13, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v13, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-direct {v13, v14, v15}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v13, v14, v15}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    array-length v13, v6

    new-array v5, v13, [B

    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v6

    invoke-static {v6, v13, v5, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x0

    :goto_2
    array-length v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v14}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v14

    div-int/2addr v13, v14

    if-ge v10, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v13}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v13

    mul-int v9, v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v13, v5, v9, v5, v9}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    array-length v13, v5

    add-int/lit8 v13, v13, -0x8

    new-array v12, v13, [B

    const/16 v13, 0x8

    new-array v4, v13, [B

    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v5

    add-int/lit8 v15, v15, -0x8

    invoke-static {v5, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v5

    add-int/lit8 v13, v13, -0x8

    const/4 v14, 0x0

    const/16 v15, 0x8

    invoke-static {v5, v13, v4, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v13

    if-nez v13, :cond_6

    new-instance v13, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v14, "Checksum inside ciphertext is corrupted"

    invoke-direct {v13, v14}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_6
    array-length v13, v12

    const/4 v14, 0x0

    aget-byte v14, v12, v14

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v14, v14, 0x1

    sub-int/2addr v13, v14

    const/4 v14, 0x7

    if-le v13, v14, :cond_7

    new-instance v13, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "too many pad bytes ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v12

    const/16 v16, 0x0

    aget-byte v16, v12, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_7
    const/4 v13, 0x0

    aget-byte v13, v12, v13

    new-array v3, v13, [B

    const/4 v13, 0x1

    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v12, v13, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public wrap([BII)[B
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Not initialized for wrapping"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    add-int/lit8 v13, p3, 0x1

    rem-int/lit8 v17, v13, 0x8

    if-eqz v17, :cond_1

    rem-int/lit8 v17, v13, 0x8

    rsub-int/lit8 v17, v17, 0x8

    add-int v13, v13, v17

    :cond_1
    new-array v12, v13, [B

    const/16 v17, 0x0

    move/from16 v0, p3

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v12, v17

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, p3

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v12

    move/from16 v17, v0

    sub-int v17, v17, p3

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    new-array v15, v0, [B

    array-length v0, v15

    move/from16 v17, v0

    if-lez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v17, 0x0

    add-int/lit8 v18, p3, 0x1

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v15, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v4

    array-length v0, v12

    move/from16 v17, v0

    array-length v0, v4

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v8, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v12, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v17, 0x0

    array-length v0, v12

    move/from16 v18, v0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v4, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v5, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v18

    div-int v14, v17, v18

    array-length v0, v8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v18

    rem-int v10, v17, v18

    if-eqz v10, :cond_3

    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Not multiple of block length"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v17

    mul-int v9, v11, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v9, v5, v9}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    array-length v0, v5

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v6, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v7, v0, [B

    const/4 v11, 0x0

    :goto_1
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_5

    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v18, v11, 0x1

    sub-int v17, v17, v18

    aget-byte v17, v6, v17

    aput-byte v17, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    new-instance v16, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    move-object/from16 v17, v0

    sget-object v18, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->IV2:[B

    invoke-direct/range {v16 .. v18}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v17, v14, 0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v17

    mul-int v9, v11, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v9, v7, v9}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    return-object v7
.end method
