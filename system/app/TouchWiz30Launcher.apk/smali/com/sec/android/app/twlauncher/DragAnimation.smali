.class public Lcom/sec/android/app/twlauncher/DragAnimation;
.super Ljava/lang/Object;
.source "DragAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/DragAnimation$1;,
        Lcom/sec/android/app/twlauncher/DragAnimation$DummyLstnr;,
        Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;
    }
.end annotation


# instance fields
.field mAnimationDuration:I

.field mAnimationFromX:F

.field mAnimationFromY:F

.field mAnimationStartTime:J

.field mAnimationState:I

.field mAnimationToX:F

.field mAnimationToY:F

.field mAnimationView:Landroid/view/View;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mLstnr:Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;

.field private mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field mXOffset:F

.field mYOffset:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    return-void
.end method

.method constructor <init>(Landroid/view/animation/Interpolator;Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mLstnr:Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;

    return-void

    :cond_0
    new-instance p2, Lcom/sec/android/app/twlauncher/DragAnimation$DummyLstnr;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/twlauncher/DragAnimation$DummyLstnr;-><init>(Lcom/sec/android/app/twlauncher/DragAnimation;Lcom/sec/android/app/twlauncher/DragAnimation$1;)V

    goto :goto_0
.end method


# virtual methods
.method drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 11

    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationStartTime:J

    iput v8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mLstnr:Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;

    invoke-interface {v6, p0}, Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;->onAnimStart(Lcom/sec/android/app/twlauncher/DragAnimation;)V

    :cond_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    if-ne v6, v8, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationDuration:I

    int-to-float v7, v7

    div-float v2, v6, v7

    const/high16 v6, 0x3f80

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_6

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    const/high16 v2, 0x3f80

    :cond_1
    :goto_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromX:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToX:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromX:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float v4, v6, v7

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromY:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToY:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromY:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float v5, v6, v7

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v6, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    if-ne v6, v10, :cond_4

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mLstnr:Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;

    invoke-interface {v6, p0, v4, v5}, Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/DragAnimation;FF)V

    :cond_4
    const/4 v3, 0x1

    :cond_5
    return v3

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/View;FFFFFFI)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    iput p2, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromX:F

    iput p3, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToX:F

    iput p4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromY:F

    iput p5, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToY:F

    iput p6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mXOffset:F

    iput p7, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mYOffset:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    iput p8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationDuration:I

    return-void
.end method
