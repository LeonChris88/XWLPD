.class public Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;
.super Ljava/lang/Object;
.source "RSABlindingEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private blindingFactor:Ljava/math/BigInteger;

.field private core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

.field private forEncryption:Z

.field private key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    return-void
.end method

.method private blindMessage(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->blindingFactor:Ljava/math/BigInteger;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private unblindMessage(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    move-object v2, p1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->blindingFactor:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    instance-of v2, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p2

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/RSABlindingParameters;

    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/RSABlindingParameters;->getPublicKey()Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->forEncryption:Z

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/RSABlindingParameters;->getPublicKey()Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/RSABlindingParameters;->getBlindingFactor()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->blindingFactor:Ljava/math/BigInteger;

    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/RSABlindingParameters;

    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 2

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v1, p1, p2, p3}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->convertInput([BII)Ljava/math/BigInteger;

    move-result-object v0

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->blindMessage(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v1, v0}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->convertOutput(Ljava/math/BigInteger;)[B

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/RSABlindingEngine;->unblindMessage(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method
