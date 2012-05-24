.class public Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;
.super Ljava/lang/Object;
.source "ECGOST3410Signer.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DSA;


# instance fields
.field key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 14

    const/4 v13, 0x1

    array-length v11, p1

    new-array v4, v11, [B

    const/4 v2, 0x0

    :goto_0
    array-length v11, v4

    if-eq v2, v11, :cond_0

    array-length v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v2

    aget-byte v11, p1, v11

    aput-byte v11, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v13, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, v11, v12}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual {v11, v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v11, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x2

    new-array v8, v11, [Ljava/math/BigInteger;

    const/4 v11, 0x0

    aput-object v7, v8, v11

    aput-object v9, v8, v13

    return-object v8
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    check-cast p2, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    :cond_1
    check-cast p2, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 12

    array-length v11, p1

    new-array v5, v11, [B

    const/4 v4, 0x0

    :goto_0
    array-length v11, v5

    if-eq v4, v11, :cond_0

    array-length v11, v5

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v4

    aget-byte v11, p1, v11

    aput-byte v11, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    const/4 v11, 0x1

    invoke-direct {v3, v11, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_1

    invoke-virtual {p2, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_2

    :cond_1
    const/4 v11, 0x0

    :goto_1
    return v11

    :cond_2
    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_3

    invoke-virtual {p3, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_4

    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v11, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v0, v9, v1, v10}, Lmyorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_1
.end method
