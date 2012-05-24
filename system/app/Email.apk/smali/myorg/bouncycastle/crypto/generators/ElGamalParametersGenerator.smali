.class public Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;
.super Ljava/lang/Object;
.source "ElGamalParametersGenerator.java"


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;
    .locals 7

    iget v4, p0, Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->size:I

    iget v5, p0, Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->certainty:I

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v4, v5, v6}, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    const/4 v4, 0x1

    aget-object v2, v3, v4

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v2, v4}, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v4, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-direct {v4, v1, v0}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v4
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->size:I

    iput p2, p0, Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->certainty:I

    iput-object p3, p0, Lmyorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method
