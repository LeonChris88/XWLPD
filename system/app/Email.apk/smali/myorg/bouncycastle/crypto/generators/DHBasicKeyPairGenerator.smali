.class public Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;
.super Ljava/lang/Object;
.source "DHBasicKeyPairGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private param:Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 7

    sget-object v1, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v4}, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v4}, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Lmyorg/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Lmyorg/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v5, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-direct {v5, v3, v0}, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHParameters;)V

    new-instance v6, Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-direct {v6, v2, v0}, Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHParameters;)V

    invoke-direct {v4, v5, v6}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;)V

    return-object v4
.end method

.method public init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    return-void
.end method
