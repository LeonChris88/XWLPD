.class Lcom/sec/android/app/twlauncher/RegionInfo;
.super Ljava/lang/Object;
.source "RegionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/RegionInfo$1;,
        Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;
    }
.end annotation


# instance fields
.field private mRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/RegionInfo;->mRegions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addF(ILandroid/graphics/RectF;)Z
    .locals 2

    new-instance v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;-><init>(Lcom/sec/android/app/twlauncher/RegionInfo;Lcom/sec/android/app/twlauncher/RegionInfo$1;)V

    iput p1, v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;->mId:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/RegionInfo;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/RegionInfo;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getF(Landroid/graphics/PointF;)I
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/RegionInfo;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/RegionInfo;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;->mRect:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;->mId:I

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method
