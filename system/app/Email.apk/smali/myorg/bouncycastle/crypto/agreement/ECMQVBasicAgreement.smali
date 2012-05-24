.class public Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;
.super Ljava/lang/Object;
.source "ECMQVBasicAgreement.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BasicAgreement;


# instance fields
.field privParams:Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateMqvAgreement(Lmyorg/bouncycastle/crypto/params/ECDomainParameters;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    div-int/lit8 v2, v13, 0x2

    sget-object v13, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    if-nez p4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Lmyorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    :goto_0
    invoke-virtual {v7}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual/range {p6 .. p6}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v13}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual/range {p6 .. p6}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-static {v13, v14, v15, v3}, Lmyorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Infinity is not a valid agreement value for MQV"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    goto :goto_0

    :cond_1
    return-object v5
.end method


# virtual methods
.method public calculateAgreement(Lmyorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 9

    move-object v8, p1

    check-cast v8, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->getStaticPrivateKey()Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->getEphemeralPrivateKey()Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v3

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->getEphemeralPublicKey()Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v4

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;->getStaticPublicKey()Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v5

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;->getEphemeralPublicKey()Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->calculateMqvAgreement(Lmyorg/bouncycastle/crypto/params/ECDomainParameters;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    check-cast p1, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;

    return-void
.end method
