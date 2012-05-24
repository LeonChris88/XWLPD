.class public Lmyorg/bouncycastle/crypto/signers/ECNRSigner;
.super Ljava/lang/Object;
.source "ECNRSigner.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DSA;


# instance fields
.field private forSigning:Z

.field private key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->forSigning:Z

    if-nez v15, :cond_0

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "not initialised for signing"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v15, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v15}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v15

    invoke-virtual {v15}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    new-instance v3, Ljava/math/BigInteger;

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v15, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v8, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-le v4, v7, :cond_1

    new-instance v15, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v16, "input too large for ECNR key."

    invoke-direct/range {v15 .. v16}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    :cond_2
    new-instance v5, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v5}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    new-instance v15, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->random:Ljava/security/SecureRandom;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lmyorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v5, v15}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v5}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v12

    invoke-virtual {v12}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-virtual {v15}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v15, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v15}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v12}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v15

    check-cast v15, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v15}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v9, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    const/4 v15, 0x2

    new-array v10, v15, [Ljava/math/BigInteger;

    const/4 v15, 0x0

    aput-object v9, v10, v15

    const/4 v15, 0x1

    aput-object v11, v10, v15

    return-object v10
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->forSigning:Z

    if-eqz p1, :cond_1

    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->random:Ljava/security/SecureRandom;

    check-cast p2, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    :cond_1
    check-cast p2, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 12

    const/4 v10, 0x0

    iget-boolean v11, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->forSigning:Z

    if-eqz v11, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "not initialised for verifying"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v7, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    new-instance v3, Ljava/math/BigInteger;

    const/4 v11, 0x1

    invoke-direct {v3, v11, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-le v4, v6, :cond_1

    new-instance v10, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v11, "input too large for ECNR key."

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_2

    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_3

    :cond_2
    :goto_0
    return v10

    :cond_3
    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p3, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_2

    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-gez v11, :cond_2

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v0, p3, v2, p2}, Lmyorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_0
.end method
