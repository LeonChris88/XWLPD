.class public Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;
.super Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;
.source "EUCJPContextAnalysis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .locals 3

    aget-byte v2, p1, p2

    and-int/lit16 v0, v2, 0xff

    const/16 v2, 0xa4

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v1, v2, 0xff

    const/16 v2, 0xa1

    if-lt v1, v2, :cond_0

    const/16 v2, 0xf3

    if-gt v1, v2, :cond_0

    add-int/lit16 v2, v1, -0xa1

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method
