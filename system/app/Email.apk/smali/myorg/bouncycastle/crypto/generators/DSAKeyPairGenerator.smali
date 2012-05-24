.class public Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "DSAKeyPairGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2

    sget-object v0, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmyorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v4}, Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-static {v3, v4}, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v4, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-direct {v4, v2, v0}, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DSAParameters;)V

    new-instance v5, Lmyorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-direct {v5, v1, v0}, Lmyorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DSAParameters;)V

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;)V

    return-object v3
.end method

.method public init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    return-void
.end method
