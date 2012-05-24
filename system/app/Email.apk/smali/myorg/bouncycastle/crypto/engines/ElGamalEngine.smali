.class public Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;
.super Ljava/lang/Object;
.source "ElGamalEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private bitSize:I

.field private forEncryption:Z

.field private key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getOutputBlockSize()I
    .locals 1

    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    :goto_0
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    instance-of v1, v1, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ElGamalPublicKeyParameters are required for encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast p2, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    instance-of v1, v1, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ElGamalPrivateKeyParameters are required for decryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method public processBlock([BII)[B
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    new-instance v21, Ljava/lang/IllegalStateException;

    const-string v22, "ElGamal engine not initialised"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    add-int/lit8 v21, v21, 0x7

    div-int/lit8 v12, v21, 0x8

    :goto_0
    move/from16 v0, p3

    if-le v0, v12, :cond_2

    new-instance v21, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v22, "input too large for ElGamal cipher.\n"

    invoke-direct/range {v21 .. v22}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->getInputBlockSize()I

    move-result v12

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    div-int/lit8 v21, p3, 0x2

    move/from16 v0, v21

    new-array v7, v0, [B

    div-int/lit8 v21, p3, 0x2

    move/from16 v0, v21

    new-array v8, v0, [B

    const/16 v21, 0x0

    array-length v0, v7

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v7

    move/from16 v21, v0

    add-int v21, v21, p2

    const/16 v22, 0x0

    array-length v0, v8

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Ljava/math/BigInteger;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v6, v0, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v18, Ljava/math/BigInteger;

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v19, v0

    check-cast v19, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    sget-object v21, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-static {v11}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v15

    :goto_1
    return-object v15

    :cond_3
    if-nez p2, :cond_4

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, p3

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    :cond_4
    move/from16 v0, p3

    new-array v4, v0, [B

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, p3

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    new-instance v9, Ljava/math/BigInteger;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v9, v0, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v21

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->bitLength()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    new-instance v21, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v22, "input too large for ElGamal cipher.\n"

    invoke-direct/range {v21 .. v22}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_5
    move-object/from16 v4, p1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v20, v0

    check-cast v20, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->bitLength()I

    move-result v17

    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    move/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    :goto_3
    sget-object v21, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    sget-object v21, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    if-lez v21, :cond_8

    :cond_7
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    move/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v10, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v13

    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->getOutputBlockSize()I

    move-result v21

    move/from16 v0, v21

    new-array v15, v0, [B

    array-length v0, v13

    move/from16 v21, v0

    array-length v0, v15

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    const/16 v21, 0x1

    array-length v0, v15

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    array-length v0, v13

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    sub-int v22, v22, v23

    array-length v0, v13

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v13, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    array-length v0, v14

    move/from16 v21, v0

    array-length v0, v15

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    const/16 v21, 0x1

    array-length v0, v15

    move/from16 v22, v0

    array-length v0, v14

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    sub-int v22, v22, v23

    array-length v0, v14

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v14, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    :cond_9
    const/16 v21, 0x0

    array-length v0, v15

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    array-length v0, v13

    move/from16 v23, v0

    sub-int v22, v22, v23

    array-length v0, v13

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v13, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_a
    const/16 v21, 0x0

    array-length v0, v15

    move/from16 v22, v0

    array-length v0, v14

    move/from16 v23, v0

    sub-int v22, v22, v23

    array-length v0, v14

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v14, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1
.end method
