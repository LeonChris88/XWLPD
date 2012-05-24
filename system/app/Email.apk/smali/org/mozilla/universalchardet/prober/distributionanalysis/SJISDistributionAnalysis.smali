.class public Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;
.super Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;
.source "SJISDistributionAnalysis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .locals 4

    const/4 v2, -0x1

    aget-byte v3, p1, p2

    and-int/lit16 v0, v3, 0xff

    const/16 v3, 0x81

    if-lt v0, v3, :cond_1

    const/16 v3, 0x9f

    if-gt v0, v3, :cond_1

    add-int/lit16 v3, v0, -0x81

    mul-int/lit16 v2, v3, 0xbc

    :goto_0
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    add-int/lit8 v3, v1, -0x40

    add-int/2addr v2, v3

    const/16 v3, 0x80

    if-lt v1, v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    move v3, v2

    :goto_1
    return v3

    :cond_1
    const/16 v3, 0xe0

    if-lt v0, v3, :cond_2

    const/16 v3, 0xef

    if-gt v0, v3, :cond_2

    add-int/lit16 v3, v0, -0xe0

    add-int/lit8 v3, v3, 0x1f

    mul-int/lit16 v2, v3, 0xbc

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method
