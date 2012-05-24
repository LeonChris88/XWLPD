.class Lcom/sec/android/app/twlauncher/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Grid;,
        Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;,
        Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;,
        Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;,
        Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;,
        Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;,
        Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Surface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final TRACK_TEXTURE_UPLOADS:Z


# instance fields
.field private mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

.field private mHeight:I

.field private mIdentityMatrix:[F

.field private mIsTouchTrackingEnabled:Z

.field private mNativeSelf:I

.field private mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

.field mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

.field private mScratchMatrix:[F

.field private mTransRefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/TransRef;",
            ">;"
        }
    .end annotation
.end field

.field mTransformPointResult:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "glcanvas"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeClassInit()V

    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->nativeClassInit()V

    const-string v0, "GLCanvas"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLCanvas;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;II)V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mWidth:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iput p3, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mWidth:I

    iput p4, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mHeight:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->access$000(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)I

    move-result v0

    invoke-direct {p0, p3, p4, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeInit(III)V

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$100(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncPremultipliedAlpha()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$200(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/ShaderProgram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->clearClip()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->createRenderCache()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->destroyRenderCache(I)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static checkGlError(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method static clamp(FFF)F
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static native createRenderCache()I
.end method

.method private static native destroyRenderCache(I)V
.end method

.method private native isStackSizeOne()Z
.end method

.method static mix(FFF)F
    .locals 2

    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeInit(III)V
.end method

.method private native nativeRestore()Z
.end method

.method private native nativeSetClip(IIII)V
.end method

.method private native nativeSetClipIntersection(IIII)V
.end method

.method private native setGeometry(IIII)V
.end method

.method private native setShaderSurface(Ljava/lang/String;I)V
.end method

.method private transformPoint(Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->transformPoint([F)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v4

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v5

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private native transformPoint([F)V
.end method


# virtual methods
.method public accumulateAlpha(F)V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    return-void
.end method

.method public accumulateClipRegion(Landroid/view/View;Z)V
    .locals 12

    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->top:F

    iget v7, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    :cond_0
    invoke-static {p0, v6}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget v7, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v7, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v7, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v2

    if-gt v3, v4, :cond_1

    if-gt v5, v0, :cond_1

    sub-int v7, v2, v0

    sub-int v8, v2, v5

    invoke-direct {p0, v3, v7, v4, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeSetClipIntersection(IIII)V

    :cond_1
    return-void
.end method

.method public accumulateColor(FFF)V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    return-void
.end method

.method public native accumulateColor(FFFF)V
.end method

.method public accumulateColor(I)V
    .locals 5

    const/high16 v4, 0x437f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    return-void
.end method

.method public addTransRef(IIIIIIII)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p8}, Lcom/sec/android/app/twlauncher/TransRef;->requestTransRef(IIIIIIII)Lcom/sec/android/app/twlauncher/TransRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/TransRef;->getTransRefRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->transformPoint(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTransRef(Landroid/view/View;IIII)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/android/app/twlauncher/TransRef;->requestTransRef(Landroid/view/View;IIII)Lcom/sec/android/app/twlauncher/TransRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/TransRef;->getTransRefRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->transformPoint(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTransRefChild(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr v7, v0

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr v8, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int v2, v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int v3, v8, v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    add-int v4, v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int v5, v8, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRef(Landroid/view/View;IIII)V

    return-void
.end method

.method public addTransRefSelf(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v4, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int v5, v3, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRef(Landroid/view/View;IIII)V

    return-void
.end method

.method assertBalancedSaveRestore()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->isStackSizeOne()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GLCanvas"

    const-string v1, "unbalanced save/restore: save() called more times than restore()"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public clearClip()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeSetClip(IIII)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FF)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v4, p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFFF)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFFF)V
    .locals 6

    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;

    invoke-direct {v1, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    return-void
.end method

.method public drawRect(FFFF)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Rect;)V

    return-void
.end method

.method public drawSurface(IFFFF)V
    .locals 10

    const/high16 v8, 0x3f80

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(IFFFFFFFF)V

    return-void
.end method

.method public native drawSurface(IFFFFFFFF)V
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v4, p2, v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V
    .locals 10

    const/high16 v8, 0x3f80

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V
    .locals 10

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$300(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->addSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    iget v0, p1, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v1, v0, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(IFFFFFFFF)V

    :goto_0
    return-void

    :cond_1
    iget v1, p1, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(IFFFFFFFF)V

    goto :goto_0
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Rect;)V
    .locals 6

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v7, v0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/RectF;)V
    .locals 6

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public native getAlpha()F
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mHeight:I

    return v0
.end method

.method public native getMatrix([F)V
.end method

.method public native getProjectionMatrix([F)V
.end method

.method public getProjectionMatrix()[F
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getProjectionMatrix([F)V

    return-object v0
.end method

.method getSceneGraph()Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    return-object v0
.end method

.method public native getShaderUniform(Ljava/lang/String;[F)I
.end method

.method public getTransRef(Landroid/view/View;)Lcom/sec/android/app/twlauncher/TransRef;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/TransRef;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/TransRef;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getTransRefList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/TransRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mWidth:I

    return v0
.end method

.method public preloadShader(Lcom/sec/android/app/twlauncher/ShaderProgram;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->preloadShader(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    return-void
.end method

.method public preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->addSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    return-void
.end method

.method public native premultiplyMatrix([F)V
.end method

.method public queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

    invoke-interface {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    return-void
.end method

.method public recycle()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/TransRef;->releaseTransRef(Lcom/sec/android/app/twlauncher/TransRef;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeFinalize()V

    return-void
.end method

.method public restore()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeRestore()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GLCanvas"

    const-string v1, "unbalanced save/restore: restore() called once more than save()"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public rotate(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->premultiplyMatrix([F)V

    return-void
.end method

.method public rotateX(F)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotate(FFFF)V

    return-void
.end method

.method public rotateY(F)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotate(FFFF)V

    return-void
.end method

.method public rotateZ(F)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotate(FFFF)V

    return-void
.end method

.method public native save()V
.end method

.method public scale(FF)V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FFF)V

    return-void
.end method

.method public scale(FFF)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->premultiplyMatrix([F)V

    return-void
.end method

.method public native setAlpha(F)V
.end method

.method public setBlendFunc(II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    return-void
.end method

.method public native setBlendFunc(IIII)V
.end method

.method public setBlendFuncErase()V
    .locals 2

    const/16 v1, 0x303

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    return-void
.end method

.method public setBlendFuncPremultipliedAlpha()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(II)V

    return-void
.end method

.method public native setBlendingEnabled(Z)V
.end method

.method public setClip(IIII)V
    .locals 3

    if-gt p1, p3, :cond_0

    if-le p2, p4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "left > right || top > bottom"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v0

    sub-int v1, v0, p4

    sub-int v2, v0, p2

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeSetClip(IIII)V

    return-void
.end method

.method public setClipToView(Landroid/view/View;Z)V
    .locals 11

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    iget v6, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    :cond_0
    invoke-static {p0, v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget v6, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v6, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-gt v2, v3, :cond_1

    if-gt v4, v0, :cond_1

    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClip(IIII)V

    :cond_1
    return-void
.end method

.method public setColor(FFF)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getAlpha()F

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    return-void
.end method

.method public native setColor(FFFF)V
.end method

.method public setColor(I)V
    .locals 5

    const/high16 v4, 0x437f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    return-void
.end method

.method public setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$100(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$400(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mGeometriesToResend:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mGeometriesToResend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(IIII)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$400(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$500(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v1

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$600(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$700(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(IIII)V

    goto :goto_0
.end method

.method public native setProjectionMatrix([F)V
.end method

.method public native setShaderProgram(II)V
.end method

.method public setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V
    .locals 2

    iget v0, p1, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mShadersToResend:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mShadersToResend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getTransformType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(II)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getTransformType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(II)V

    goto :goto_0
.end method

.method public setShaderSurface(Ljava/lang/String;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$300(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->addSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    iget v0, p2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderSurface(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    iget v0, p2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderSurface(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public native setShaderUnfirom(Ljava/lang/String;[F)V
.end method

.method public native setShaderUniform(Ljava/lang/String;F)V
.end method

.method public native setShaderUniform(Ljava/lang/String;FF)V
.end method

.method public native setShaderUniform(Ljava/lang/String;FFF)V
.end method

.method public native setShaderUniform(Ljava/lang/String;FFFF)V
.end method

.method public native setShaderUniform(Ljava/lang/String;[F)V
.end method

.method public setSubdivide(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$800(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$100(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    goto :goto_0
.end method

.method public setTouchTrackingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    return-void
.end method

.method public translate(FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    return-void
.end method

.method public translate(FFF)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->premultiplyMatrix([F)V

    return-void
.end method
