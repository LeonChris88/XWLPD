.class public Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;
.super Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElGamal"
.end annotation


# instance fields
.field certainty:I

.field engine:Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;

.field initialised:Z

.field param:Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ElGamal"

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->engine:Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;

    const/16 v0, 0x400

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->strength:I

    const/16 v0, 0x14

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->certainty:I

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->initialised:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 7

    iget-boolean v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->initialised:Z

    if-nez v4, :cond_0

    new-instance v0, Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;-><init>()V

    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->strength:I

    iget v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->certainty:I

    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4, v5, v6}, Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->init(IILjava/security/SecureRandom;)V

    new-instance v4, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->generateParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V

    iput-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->param:Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->engine:Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->param:Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->initialised:Z

    :cond_0
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->engine:Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;

    invoke-virtual {v4}, Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    new-instance v4, Ljava/security/KeyPair;

    new-instance v5, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;

    invoke-direct {v5, v3}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;-><init>(Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;)V

    new-instance v6, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;

    invoke-direct {v6, v2}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;-><init>(Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;)V

    invoke-direct {v4, v5, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v4
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->strength:I

    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v2, p1, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "parameter object not a DHParameterSpec or an ElGamalParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    instance-of v2, p1, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    new-instance v3, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, p2, v3}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->param:Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->engine:Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->param:Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->initialised:Z

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    new-instance v3, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v2, p2, v3}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->param:Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    goto :goto_0
.end method
