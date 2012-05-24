.class final Lcom/sec/android/app/twlauncher/SamsungUtils;
.super Ljava/lang/Object;
.source "SamsungUtils.java"


# static fields
.field private static final lt1:[F

.field private static final lt2:[F

.field private static final projMatrix:[F

.field private static final rb1:[F

.field private static final rb2:[F

.field private static final traMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x4

    new-array v0, v2, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    new-array v0, v2, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt2:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb2:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static broadcastStkIntent(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    const/high16 v2, 0x4000

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 4

    const/high16 v3, 0x4000

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method static drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFFZ)V

    return-void
.end method

.method static drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFFZ)V
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFF)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v4, v5, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v4, v4, v1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    return-void
.end method

.method static getScaleRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 4

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method static mapPtToRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 14

    move-object v3, p1

    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-direct {v4, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget v11, v4, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    iget v12, v4, Landroid/graphics/PointF;->y:F

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-direct {v2, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget v11, p0, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    iget v12, p0, Landroid/graphics/PointF;->y:F

    iget v13, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    invoke-direct {v1, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v7, p2

    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-direct {v8, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    iget v11, v4, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    iget v12, v4, Landroid/graphics/PointF;->y:F

    iget v13, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-direct {v0, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    iget v11, v0, Landroid/graphics/PointF;->x:F

    iget v12, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    iget v12, v0, Landroid/graphics/PointF;->y:F

    iget v13, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v13

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    iget v11, v1, Landroid/graphics/PointF;->x:F

    iget v12, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v12

    iput v11, v1, Landroid/graphics/PointF;->x:F

    iget v11, v1, Landroid/graphics/PointF;->y:F

    iget v12, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    iput v11, v1, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    new-instance v5, Landroid/graphics/PointF;

    iget v11, v4, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v11, v12

    iget v12, v4, Landroid/graphics/PointF;->y:F

    iget v13, v8, Landroid/graphics/PointF;->y:F

    div-float/2addr v12, v13

    invoke-direct {v5, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    iget v11, v1, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, v12

    iget v12, v1, Landroid/graphics/PointF;->y:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v12, v13

    invoke-direct {v6, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v12

    iget v12, v6, Landroid/graphics/PointF;->y:F

    iget v13, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v13

    invoke-direct {v9, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v9
.end method

.method static mapPtToRectGlobal(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 13

    const/high16 v12, 0x4000

    move-object v2, p1

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-direct {v3, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget v10, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v12

    iget v11, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v11, v12

    invoke-direct {v1, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v7, p2

    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    iget v10, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v12

    iget v11, v8, Landroid/graphics/PointF;->y:F

    div-float/2addr v11, v12

    invoke-direct {v6, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x0

    new-instance v4, Landroid/graphics/PointF;

    iget v10, v8, Landroid/graphics/PointF;->x:F

    iget v11, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v11

    iget v11, v8, Landroid/graphics/PointF;->y:F

    iget v12, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v11, v12

    invoke-direct {v4, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    iget v10, p0, Landroid/graphics/PointF;->x:F

    iget v11, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/graphics/PointF;->y:F

    iget v12, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    invoke-direct {v0, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v11

    iget v11, v0, Landroid/graphics/PointF;->y:F

    iget v12, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v11, v12

    invoke-direct {v5, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    iget v10, p2, Landroid/graphics/RectF;->left:F

    iget v11, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    iget v11, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    iget v11, p2, Landroid/graphics/RectF;->top:F

    iget v12, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    iget v12, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v9
.end method

.method static mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-object v0
.end method

.method static mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 12

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getMatrix([F)V

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getProjectionMatrix([F)V

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt2:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt2:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    div-float v6, v0, v1

    const/high16 v0, -0x4080

    sget-object v1, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    div-float/2addr v1, v2

    mul-float v7, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb2:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb2:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    div-float v8, v0, v1

    const/high16 v0, -0x4080

    sget-object v1, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    div-float/2addr v1, v2

    mul-float v9, v0, v1

    const/high16 v0, 0x3f80

    add-float/2addr v6, v0

    const/high16 v0, 0x3f80

    add-float/2addr v7, v0

    const/high16 v0, 0x3f80

    add-float/2addr v8, v0

    const/high16 v0, 0x3f80

    add-float/2addr v9, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float v10, v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float v11, v0, v1

    mul-float/2addr v6, v10

    mul-float/2addr v7, v11

    mul-float/2addr v8, v10

    mul-float/2addr v9, v11

    iput v6, p2, Landroid/graphics/RectF;->left:F

    iput v7, p2, Landroid/graphics/RectF;->top:F

    iput v8, p2, Landroid/graphics/RectF;->right:F

    iput v9, p2, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method static setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V
    .locals 0

    return-void
.end method
