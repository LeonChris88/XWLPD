.class public abstract Lcom/sec/android/app/twlauncher/QuickView;
.super Landroid/widget/FrameLayout;
.source "QuickView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/QuickView$Animate;
    }
.end annotation


# instance fields
.field protected mAddDrawable:Landroid/graphics/drawable/Drawable;

.field protected mAnimationDuration:I

.field protected mAnimationStartTime:J

.field protected mAnimationState:I

.field protected mChildRects:[Landroid/graphics/Rect;

.field protected mCurrentPage:I

.field protected mCurrentRects:[Landroid/graphics/Rect;

.field protected mDeleteIndex:I

.field protected mDeleteView:Landroid/view/View;

.field protected mDraggingIndex:I

.field protected mDraggingView:Landroid/view/View;

.field protected mEnabledChildAnimation:Z

.field protected mFinishRects:[Landroid/graphics/Rect;

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field protected mMovePinchStart:I

.field protected mMultiTouchUsed:Z

.field protected mOriginDragIndex:I

.field protected mPinchIndex:I

.field protected mPinchOutIndex:I

.field protected mPinchOutProcess:Z

.field protected mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

.field protected mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

.field protected mScreenBgDrawablePadding:Landroid/graphics/Rect;

.field protected mScreenRect:Landroid/graphics/Rect;

.field protected mStartRects:[Landroid/graphics/Rect;

.field protected mTmpRect:Landroid/graphics/Rect;

.field protected mTouchState:I

.field protected mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public drawCloseAnimation()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    :cond_0
    return-void
.end method

.method protected drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .locals 11

    iget v1, p4, Landroid/graphics/Rect;->right:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    sub-int v10, v1, v2

    const/4 v1, 0x1

    if-lt v10, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickView;->getWidth()I

    move-result v1

    if-le v10, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    sub-int v9, v1, v2

    const/4 v1, 0x1

    if-lt v9, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickView;->getHeight()I

    move-result v1

    if-le v9, v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    if-eqz p2, :cond_4

    int-to-float v1, v10

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3ca3d70a

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_4

    int-to-float v1, v9

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3ca3d70a

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    :cond_4
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {p2, v7}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    :cond_5
    const/4 v1, 0x0

    cmpl-float v1, p6, v1

    if-ltz v1, :cond_6

    move/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    :cond_6
    if-eqz p7, :cond_7

    const/4 v1, 0x0

    aget v1, p7, v1

    const/4 v2, 0x1

    aget v2, p7, v2

    const/4 v3, 0x2

    aget v3, p7, v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    :cond_7
    move-object/from16 v0, p5

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    move-object/from16 v0, p5

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    move-object/from16 v0, p5

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    move-object/from16 v0, p5

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move-object v1, p2

    goto/16 :goto_0
.end method

.method public drawOpenAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    return v0
.end method

.method public isAnimating()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOpened()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-void
.end method
