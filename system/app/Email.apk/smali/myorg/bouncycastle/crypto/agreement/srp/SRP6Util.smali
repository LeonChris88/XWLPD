.class public Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;
.super Ljava/lang/Object;
.source "SRP6Util.java"


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateK(Lmyorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-static {p0, p1, p1, p2}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->hashPaddedPair(Lmyorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateU(Lmyorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->hashPaddedPair(Lmyorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateX(Lmyorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p0}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    array-length v1, p3

    invoke-interface {p0, p3, v2, v1}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    const/16 v1, 0x3a

    invoke-interface {p0, v1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    array-length v1, p4

    invoke-interface {p0, p4, v2, v1}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, v0, v2}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v1, p2

    invoke-interface {p0, p2, v2, v1}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, v0, v2}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public static generatePrivateValue(Lmyorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 5

    const/16 v3, 0x100

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    sget-object v3, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lmyorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method private static getPadded(Ljava/math/BigInteger;I)[B
    .locals 5

    invoke-static {p0}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    array-length v2, v0

    if-ge v2, p1, :cond_0

    new-array v1, p1, [B

    const/4 v2, 0x0

    array-length v3, v0

    sub-int v3, p1, v3

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private static hashPaddedPair(Lmyorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v3, v4, 0x8

    invoke-static {p2, v3}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-static {p3, v3}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v1

    array-length v4, v0

    invoke-interface {p0, v0, v5, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v4, v1

    invoke-interface {p0, v1, v5, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v2, v4, [B

    invoke-interface {p0, v2, v5}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    return-object v4
.end method

.method public static validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmyorg/bouncycastle/crypto/CryptoException;

    const-string v1, "Invalid public value: 0"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p1
.end method
