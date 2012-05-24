.class public Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;
.super Ljava/lang/Object;
.source "NaccacheSternEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;


# instance fields
.field private debug:Z

.field private forEncryption:Z

.field private key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

.field private lookup:[Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    return-void
.end method

.method private static chineseRemainder(Ljava/util/Vector;Ljava/util/Vector;)Ljava/math/BigInteger;
    .locals 8

    sget-object v5, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public encrypt(Ljava/math/BigInteger;)[B
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v4}, Lmyorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    sub-int/2addr v2, v3

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encrypted value is:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getInputBlockSize()I
    .locals 1

    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getLowerSigmaBound()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getOutputBlockSize()I
    .locals 1

    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getLowerSigmaBound()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 11

    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    instance-of v8, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v8, :cond_0

    check-cast p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :cond_0
    check-cast p2, Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    iget-boolean v8, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v8, :cond_1

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Constructing lookup Array"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    check-cast v7, Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getSmallPrimes()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Ljava/util/Vector;

    iput-object v8, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    aput-object v9, v8, v4

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v8, v8, v4

    sget-object v9, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-boolean v8, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v8, :cond_2

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Constructing lookup ArrayList for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    const/4 v5, 0x1

    :goto_1
    if-ge v5, v2, :cond_3

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getPhi_n()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v8, v8, v4

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public processBlock([BII)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    if-nez v15, :cond_0

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "NaccacheStern engine not initialised"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p3

    if-le v0, v15, :cond_1

    new-instance v15, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v16, "input too large for Naccache-Stern cipher.\n"

    invoke-direct/range {v15 .. v16}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-nez v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v15

    move/from16 v0, p3

    if-ge v0, v15, :cond_2

    new-instance v15, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v16, "BlockLength does not match modulus for Naccache-Stern cipher.\n"

    invoke-direct/range {v15 .. v16}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_2
    if-nez p2, :cond_3

    move-object/from16 v0, p1

    array-length v15, v0

    move/from16 v0, p3

    if-eq v0, v15, :cond_5

    :cond_3
    move/from16 v0, p3

    new-array v4, v0, [B

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v4, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-instance v7, Ljava/math/BigInteger;

    const/4 v15, 0x1

    invoke-direct {v7, v15, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v15, :cond_4

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "input as BigInteger: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->encrypt(Ljava/math/BigInteger;)[B

    move-result-object v10

    :goto_1
    return-object v10

    :cond_5
    move-object/from16 v4, p1

    goto :goto_0

    :cond_6
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    check-cast v13, Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    invoke-virtual {v13}, Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getSmallPrimes()Ljava/util/Vector;

    move-result-object v12

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v6, v15, :cond_b

    invoke-virtual {v13}, Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getPhi_n()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual {v12, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v13}, Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v3, v15, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v15, v15, v6

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v16

    invoke-virtual {v12, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->intValue()I

    move-result v15

    move/from16 v0, v16

    if-eq v0, v15, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v15, :cond_7

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Prime is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", lookup table has size "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    new-instance v16, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error in lookup Array for "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->intValue()I

    move-result v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ": Size mismatch. Expected ArrayList with length "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->intValue()I

    move-result v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " but found ArrayList of length "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_8
    invoke-virtual {v3, v5}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v15, -0x1

    if-ne v9, v15, :cond_a

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v15, :cond_9

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Actual prime is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Decrypted value is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "LookupList for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " with size "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v15, v15, v6

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v8, v15, :cond_9

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    new-instance v15, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v16, "Lookup failed"

    invoke-direct/range {v15 .. v16}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_a
    int-to-long v15, v9

    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_b
    invoke-static {v11, v12}, Lmyorg/bouncycastle/crypto/engines/NaccacheSternEngine;->chineseRemainder(Ljava/util/Vector;Ljava/util/Vector;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    goto/16 :goto_1
.end method
