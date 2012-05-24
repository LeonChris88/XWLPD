.class public Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;
.super Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GOST3410"
.end annotation


# instance fields
.field engine:Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;

.field gost3410Params:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

.field initialised:Z

.field param:Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GOST3410"

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->engine:Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;

    const/16 v0, 0x400

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->strength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->initialised:Z

    return-void
.end method

.method private init(Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->getPublicKeyParameters()Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v0

    new-instance v1, Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p2, v2}, Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->param:Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->engine:Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->param:Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->initialised:Z

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->gost3410Params:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 7

    iget-boolean v3, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->initialised:Z

    if-nez v3, :cond_0

    new-instance v3, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_A:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v3, v4}, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->init(Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;Ljava/security/SecureRandom;)V

    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->engine:Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;->generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;

    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->gost3410Params:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    invoke-direct {v4, v2, v5}, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;-><init>(Lmyorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;)V

    new-instance v5, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;

    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->gost3410Params:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    invoke-direct {v5, v1, v6}, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;-><init>(Lmyorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;)V

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->strength:I

    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a GOST3410ParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->init(Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method
