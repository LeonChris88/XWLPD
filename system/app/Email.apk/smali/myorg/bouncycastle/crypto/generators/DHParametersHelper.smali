.class Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;
.super Ljava/lang/Object;
.source "DHParametersHelper.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    add-int/lit8 v2, p0, -0x1

    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v5, p2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-le p1, v5, :cond_1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    new-array v3, v5, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v6

    return-object v3
.end method

.method static selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4

    sget-object v2, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_0
    sget-object v2, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-static {v2, v1, p2}, Lmyorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0
.end method
