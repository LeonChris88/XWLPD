.class public Lcom/sec/android/app/twlauncher/MultipleSize;
.super Ljava/lang/Object;
.source "MultipleSize.java"


# instance fields
.field private mBits:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    return-void
.end method

.method static getIndexBit(II)J
    .locals 4

    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/MultipleSize;->isInvalidSize(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const/4 v2, 0x1

    add-int/lit8 v3, p0, -0x1

    shl-int/2addr v2, v3

    int-to-long v0, v2

    add-int/lit8 v2, p1, -0x1

    mul-int/lit8 v2, v2, 0x8

    shl-long/2addr v0, v2

    goto :goto_0
.end method

.method static isInvalidSize(II)Z
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    if-ge v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lt p1, v0, :cond_0

    if-lt v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public countAvailableSizes()I
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    :goto_0
    cmp-long v3, v5, v0

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x1

    and-long/2addr v3, v0

    cmp-long v3, v5, v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    const/4 v3, 0x1

    shr-long/2addr v0, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getBestFit(II)[I
    .locals 9

    const v5, 0xffff

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, 0x1

    :goto_0
    if-gt v4, p2, :cond_1

    const/4 v3, 0x1

    :goto_1
    if-gt v3, p1, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v7

    if-eqz v7, :cond_2

    sub-int v7, p1, v3

    sub-int v8, p2, v4

    add-int v2, v7, v8

    if-ge v2, v5, :cond_0

    move v0, v3

    move v1, v4

    move v5, v2

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    const/4 v7, 0x2

    new-array v6, v7, [I

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    return-object v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getMaxX()I
    .locals 8

    const/16 v7, 0x8

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v7, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-gt v1, v7, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    if-eq v7, v0, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getMaxY()I
    .locals 8

    const/16 v7, 0x8

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v7, :cond_0

    add-int/lit8 v2, v0, 0x1

    :goto_1
    if-gt v2, v7, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    if-eq v7, v0, :cond_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getMinX()I
    .locals 8

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move v0, v3

    :cond_0
    return v0

    :cond_1
    const/16 v0, 0x8

    const/4 v2, 0x1

    :goto_0
    const/16 v4, 0x8

    if-gt v2, v4, :cond_0

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    if-eq v3, v0, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getMinY()I
    .locals 8

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move v0, v3

    :cond_0
    return v0

    :cond_1
    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_0
    const/16 v4, 0x8

    if-gt v1, v4, :cond_0

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    if-eq v3, v0, :cond_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isAvailableSize(II)Z
    .locals 6

    const-wide/16 v0, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/MultipleSize;->getIndexBit(II)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)Z
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/MultipleSize;->getIndexBit(II)J

    move-result-wide v0

    cmp-long v3, v0, v5

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-wide v3, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    and-long/2addr v3, v0

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toLong()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    return-wide v0
.end method
