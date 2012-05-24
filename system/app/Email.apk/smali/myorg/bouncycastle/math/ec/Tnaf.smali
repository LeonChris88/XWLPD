.class Lmyorg/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger;

.field private static final MINUS_THREE:Ljava/math/BigInteger;

.field private static final MINUS_TWO:Ljava/math/BigInteger;

.field public static final alpha0:[Lmyorg/bouncycastle/math/ec/ZTauElement;

.field public static final alpha0Tnaf:[[B

.field public static final alpha1:[Lmyorg/bouncycastle/math/ec/ZTauElement;

.field public static final alpha1Tnaf:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v0, Lmyorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    sget-object v0, Lmyorg/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    const/16 v0, 0x9

    new-array v0, v0, [Lmyorg/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha0:[Lmyorg/bouncycastle/math/ec/ZTauElement;

    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    const/16 v0, 0x9

    new-array v0, v0, [Lmyorg/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha1:[Lmyorg/bouncycastle/math/ec/ZTauElement;

    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    :array_0
    .array-data 0x1
        0xfft
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 0x1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 0x1
        0xfft
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 0x1
        0xfft
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 0x1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 0x1
        0xfft
        0x0t
        0x0t
        0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 8

    add-int/lit8 v7, p4, 0x5

    div-int/lit8 v7, v7, 0x2

    add-int v0, v7, p5

    sub-int v7, p4, v0

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v7, p3

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sub-int v7, v0, p5

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    sub-int v7, v0, p5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    :cond_0
    new-instance v7, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v7, v5, p5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v7
.end method

.method public static getLucas(BIZ)[Ljava/math/BigInteger;
    .locals 9

    const/4 v8, 0x1

    if-eq p0, v8, :cond_0

    const/4 v6, -0x1

    if-eq p0, v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mu must be 1 or -1"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    if-eqz p2, :cond_1

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    int-to-long v6, p0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-ge v0, p1, :cond_3

    const/4 v2, 0x0

    if-ne p0, v8, :cond_2

    move-object v2, v4

    :goto_2
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object v3, v4

    move-object v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    sget-object v4, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/math/BigInteger;

    const/4 v6, 0x0

    aput-object v3, v1, v6

    aput-object v4, v1, v8

    return-object v1
.end method

.method public static getMu(Lmyorg/bouncycastle/math/ec/ECCurve$F2m;)B
    .locals 4

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    sget-object v2, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getPreComp(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;B)[Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 5

    const/16 v4, 0x10

    new-array v3, v4, [Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v4, 0x1

    aput-object p0, v3, v4

    if-nez p1, :cond_0

    sget-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    :goto_0
    array-length v2, v0

    const/4 v1, 0x3

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    invoke-static {p0, v4}, Lmyorg/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;[B)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_0
    sget-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static getSi(Lmyorg/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "si is defined for Koblitz curves only"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v5

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v6

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getH()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    add-int/lit8 v9, v5, 0x3

    sub-int v4, v9, v0

    invoke-static {v6, v4, v12}, Lmyorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v8

    if-ne v6, v11, :cond_1

    sget-object v9, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v9, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v12

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_0
    new-array v7, v13, [Ljava/math/BigInteger;

    if-ne v3, v13, :cond_3

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v12

    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v11

    :goto_1
    return-object v7

    :cond_1
    const/4 v9, -0x1

    if-ne v6, v9, :cond_2

    sget-object v9, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v9, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v12

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "mu must be 1 or -1"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    const/4 v9, 0x4

    if-ne v3, v9, :cond_4

    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v12

    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v11

    goto :goto_1

    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "h (Cofactor) must be 2 or 4"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static getTw(BI)Ljava/math/BigInteger;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    if-ne p0, v6, :cond_0

    const-wide/16 v4, 0x6

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v5}, Lmyorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    aget-object v4, v3, v6

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Lmyorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public static multiplyFromTnaf(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;[B)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 5

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getInfinity()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-static {v2}, Lmyorg/bouncycastle/math/ec/Tnaf;->tau(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    aget-byte v3, p1, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v2, p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    aget-byte v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public static norm(BLmyorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v4, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v4, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    iget-object v5, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    if-ne p0, v6, :cond_0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v4, -0x1

    if-ne p0, v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "mu must be 1 or -1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lmyorg/bouncycastle/math/ec/ZTauElement;
    .locals 14

    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p4

    invoke-static {v0, p1, v1}, Lmyorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v13

    const/4 v1, 0x1

    aget-object v3, v13, v1

    const/4 v1, 0x0

    aget-object v2, p3, v1

    move-object v1, p0

    move/from16 v4, p2

    move v5, p1

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lmyorg/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    const/4 v1, 0x1

    aget-object v2, p3, v1

    move-object v1, p0

    move/from16 v4, p2

    move v5, p1

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lmyorg/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    move/from16 v0, p4

    invoke-static {v8, v9, v0}, Lmyorg/bouncycastle/math/ec/Tnaf;->round(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;B)Lmyorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v10

    iget-object v1, v10, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v4, v10, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    const/4 v1, 0x1

    aget-object v1, p3, v1

    iget-object v2, v10, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p3, v2

    iget-object v4, v10, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v1, Lmyorg/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v1, v11, v12}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_0
.end method

.method public static round(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;B)Lmyorg/bouncycastle/math/ec/ZTauElement;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v15

    if-eq v15, v13, :cond_0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "lambda0 and lambda1 do not have same scale"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    const/4 v15, 0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_1

    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_1

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "mu must be 1 or -1"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    invoke-virtual {v4, v4}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_4

    invoke-virtual {v3, v5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v15

    invoke-virtual {v15, v5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v14

    invoke-virtual {v14, v5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_5

    invoke-virtual {v4, v14}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {v4, v8}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v15, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_7

    sget-object v15, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_6

    move/from16 v10, p2

    :cond_2
    :goto_2
    sget-object v15, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_9

    sget-object v15, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_8

    move/from16 v0, p2

    neg-int v15, v0

    int-to-byte v10, v15

    :cond_3
    :goto_3
    int-to-long v15, v9

    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    int-to-long v15, v10

    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v15, Lmyorg/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v15, v11, v12}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v15

    :cond_4
    invoke-virtual {v3, v5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v14}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {v4, v8}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    goto :goto_1

    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    sget-object v15, Lmyorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_2

    move/from16 v10, p2

    goto :goto_2

    :cond_8
    const/4 v9, -0x1

    goto :goto_3

    :cond_9
    sget-object v15, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_3

    move/from16 v0, p2

    neg-int v15, v0

    int-to-byte v10, v15

    goto :goto_3
.end method

.method public static tau(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 7

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    new-instance v2, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->isCompressed()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v2

    goto :goto_0
.end method

.method public static tauAdicWNaf(BLmyorg/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lmyorg/bouncycastle/math/ec/ZTauElement;)[B
    .locals 15

    const/4 v13, 0x1

    if-eq p0, v13, :cond_0

    const/4 v13, -0x1

    if-eq p0, v13, :cond_0

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "mu must be 1 or -1"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    invoke-static/range {p0 .. p1}, Lmyorg/bouncycastle/math/ec/Tnaf;->norm(BLmyorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v13, 0x1e

    if-le v2, v13, :cond_3

    add-int/lit8 v13, v2, 0x4

    add-int v3, v13, p2

    :goto_0
    new-array v10, v3, [B

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    iget-object v7, v0, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    const/4 v1, 0x0

    :goto_1
    sget-object v13, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    sget-object v13, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-ltz v13, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    int-to-byte v11, v13

    :goto_2
    aput-byte v11, v10, v1

    const/4 v8, 0x1

    if-gez v11, :cond_2

    const/4 v8, 0x0

    neg-int v13, v11

    int-to-byte v11, v13

    :cond_2
    if-eqz v8, :cond_5

    aget-object v13, p5, v11

    iget-object v13, v13, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aget-object v13, p5, v11

    iget-object v13, v13, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    :goto_3
    move-object v9, v6

    const/4 v13, 0x1

    if-ne p0, v13, :cond_7

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :goto_4
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, p2, 0x22

    goto :goto_0

    :cond_4
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    int-to-byte v11, v13

    goto :goto_2

    :cond_5
    aget-object v13, p5, v11

    iget-object v13, v13, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aget-object v13, p5, v11

    iget-object v13, v13, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    aput-byte v13, v10, v1

    goto :goto_3

    :cond_7
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_4

    :cond_8
    return-object v10
.end method
