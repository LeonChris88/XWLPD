.class public Lcom/sec/android/app/twlauncher/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragController;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/DragLayer$1;,
        Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;,
        Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;,
        Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;
    }
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mAnimationType:I

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field private mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field private mDownX:F

.field private mDownY:F

.field private mDragAction:I

.field private mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragIconAlpha:F

.field private mDragInfo:Ljava/lang/Object;

.field private mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragRegions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

.field private mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

.field private mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mDragging:Z

.field private final mDropCoordinates:[I

.field private mEnteredRegion:Z

.field private mGenericViewAnims:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/twlauncher/GenericViewAnim;",
            ">;"
        }
    .end annotation
.end field

.field private mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

.field private mIgnoredDropTarget:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDragAnimation:Z

.field private mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastTouchAmbiguous:Z

.field private mLastTouchPoint:Landroid/graphics/PointF;

.field private mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

.field private mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

.field private mOriginator:Landroid/view/View;

.field private final mRect:Landroid/graphics/Rect;

.field private mReloadIconSurface:Z

.field private mResizeRatio:F

.field private mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

.field private mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

.field private mShadowSurfaceUpdateNeeded:Z

.field private mShadowX:I

.field private mShadowY:I

.field private mShouldDrop:Z

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mTouchSlop:I

.field private mTransformEventEnabled:Z

.field private mVelTracker:Landroid/view/VelocityTracker;

.field private mVelTrackerNumItems:I

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchPoint:Landroid/graphics/PointF;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    new-instance v3, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    new-instance v3, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;-><init>(Lcom/sec/android/app/twlauncher/DragLayer;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    iput v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTransformEventEnabled:Z

    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    new-instance v3, Lcom/sec/android/app/twlauncher/ShadowSurface;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/ShadowSurface;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    iput v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x4040

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    new-array v3, v6, [Lcom/sec/android/app/twlauncher/DragAnimation;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchSlop:I

    const v3, 0x7f0b0039

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowX:I

    const v3, 0x7f0b003a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowY:I

    return-void
.end method

.method private checkDraggingTouchSlop(FF)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownX:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v1, v6

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownY:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v3, v6

    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchSlop:I

    if-le v1, v0, :cond_2

    move v2, v4

    :goto_0
    if-le v3, v0, :cond_3

    :goto_1
    if-nez v2, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->draggingOverTouchSlop()V

    :cond_1
    return-void

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private checkForScroll(FF)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getTopMostScaledRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setDirection(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->isQueued()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    const-wide/16 v4, 0x384

    invoke-virtual {p0, v1, v4, v5}, Lcom/sec/android/app/twlauncher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    move v1, v3

    :goto_1
    return v1

    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setDirection(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    move v1, v2

    goto :goto_1
.end method

.method private drawDragIconGL(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 14

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_0

    const v10, 0x3f19999a

    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    :cond_0
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationStartTime:J

    const/4 v10, 0x2

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    :cond_1
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationStartTime:J

    sub-long/2addr v10, v12

    long-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationDuration:I

    int-to-float v11, v11

    div-float v5, v10, v11

    const/high16 v10, 0x3f80

    cmpl-float v10, v5, v10

    if-ltz v10, :cond_2

    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    :cond_2
    :goto_0
    const/high16 v10, 0x3f80

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v5

    add-float v8, v10, v11

    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    packed-switch v10, :pswitch_data_0

    :goto_1
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_4

    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    const/high16 v10, 0x3f80

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    iput v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->postInvalidate()V

    :cond_4
    :goto_2
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    if-eqz v10, :cond_d

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    array-length v6, v10

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_c

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    aget-object v0, v10, v4

    if-eqz v0, :cond_6

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-interface {v10, v11}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->getDragAnimationXOffset(Landroid/view/View;)I

    move-result v9

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget v10, v0, Lcom/sec/android/app/twlauncher/DragAnimation;->mXOffset:F

    int-to-float v11, v9

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/DragAnimation;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x3

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f80

    sub-float/2addr v11, v8

    mul-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    mul-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getIconPaintColor()[F

    move-result-object v2

    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    const/4 v12, 0x2

    aget v12, v2, v12

    const/4 v13, 0x3

    aget v13, v2, v13

    invoke-virtual {p1, v10, v11, v12, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    const-string v10, "additionalAlpha"

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v10, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    :cond_8
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v10, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getIconPaintColor()[F

    move-result-object v2

    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    const/4 v12, 0x2

    aget v12, v2, v12

    const/4 v13, 0x3

    aget v13, v2, v13

    invoke-virtual {p1, v10, v11, v12, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    const-string v10, "additionalAlpha"

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    :cond_a
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v10, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_2

    :cond_b
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    const/4 v11, 0x0

    aput-object v11, v10, v4

    goto/16 :goto_4

    :cond_c
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->postInvalidate()V

    :cond_d
    :goto_5
    return-void

    :cond_e
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private drop(FF)Z
    .locals 12

    const/4 v7, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p0, v1, v2, v9}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->dropParent:Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    aget v2, v9, v11

    aget v3, v9, v7

    iget v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/DropTarget;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    const/4 v10, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->dropParent:Ljava/lang/Object;

    return v10

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move v3, p1

    move v4, p2

    move v7, v11

    invoke-interface/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move v3, p1

    move v4, p2

    move v7, v11

    invoke-interface/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    const/4 v10, 0x1

    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    :cond_2
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    return-void
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;
    .locals 19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    add-int v16, p2, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    add-int v17, p3, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v5, :cond_0

    const/4 v14, 0x0

    :cond_0
    add-int/lit8 v13, v12, -0x1

    :goto_0
    if-ltz v13, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    if-eq v11, v14, :cond_5

    instance-of v5, v11, Lcom/sec/android/app/twlauncher/DropTarget;

    if-eqz v5, :cond_2

    move-object v5, v11

    check-cast v5, Lcom/sec/android/app/twlauncher/DropTarget;

    invoke-interface {v5, v15}, Lcom/sec/android/app/twlauncher/DropTarget;->getDropHitRect(Landroid/graphics/Rect;)V

    :goto_1
    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v18, 0x0

    instance-of v5, v11, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    iget v5, v15, Landroid/graphics/Rect;->left:I

    sub-int p2, v16, v5

    iget v5, v15, Landroid/graphics/Rect;->top:I

    sub-int p3, v17, v5

    move-object v5, v11

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v18

    :cond_1
    if-nez v18, :cond_4

    instance-of v5, v11, Lcom/sec/android/app/twlauncher/DropTarget;

    if-eqz v5, :cond_5

    move-object v4, v11

    check-cast v4, Lcom/sec/android/app/twlauncher/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-interface/range {v4 .. v10}, Lcom/sec/android/app/twlauncher/DropTarget;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    aput p2, p4, v5

    const/4 v5, 0x1

    aput p3, p4, v5

    check-cast v11, Lcom/sec/android/app/twlauncher/DropTarget;

    :goto_2
    return-object v11

    :cond_2
    invoke-virtual {v11, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v11, v18

    goto :goto_2

    :cond_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private getIconPaintColor()[F
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [F

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    sget-object v1, Lcom/sec/android/app/twlauncher/DragLayer$1;->$SwitchMap$com$sec$android$app$twlauncher$DragLayer$PaintRegion:[I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    aput v3, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    aput v3, v0, v7

    :goto_0
    return-object v0

    :pswitch_0
    aput v3, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    const/high16 v1, 0x3f00

    aput v1, v0, v7

    goto :goto_0

    :pswitch_1
    aput v3, v0, v4

    const v1, 0x3f75c28f

    aput v1, v0, v5

    const/high16 v1, 0x3f80

    aput v1, v0, v6

    const/high16 v1, 0x3f00

    aput v1, v0, v7

    goto :goto_0

    :pswitch_2
    aput v3, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    aput v3, v0, v7

    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    goto :goto_0

    :pswitch_3
    const v1, 0x3f1eb852

    aput v1, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    const/high16 v1, 0x3f00

    aput v1, v0, v7

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getPaintForPos(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mRegion:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mPaintRegion:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkForScroll(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRANS:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    goto :goto_1
.end method


# virtual methods
.method public addDragRegion(Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    :cond_0
    return-void
.end method

.method public cancelDrag()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    :cond_3
    return-void
.end method

.method public cancelPendingScroll()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->isQueued()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    :cond_0
    return v0
.end method

.method public clearGenericViewAnims(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GenericViewAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->clear()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v5, p1, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z

    move-result v3

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/app/twlauncher/ShadowSurface;->update(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const v5, 0x3f19999a

    invoke-virtual {p1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowX:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowY:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v5, p1, v6, v7}, Lcom/sec/android/app/twlauncher/ShadowSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;FF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GenericViewAnim;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->isOwnerDrawn()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v5

    or-int/2addr v3, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/DragLayer;->drawDragIconGL(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    return v3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTransRefList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "Launcher.DragLayer"

    const-string v2, "this.getParent() or glSurfaceViewGroup.getTransRefList() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTransformEventEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTransRefList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->processTransformRefEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->isAbsRefEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v4, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0
.end method

.method public drawGenericViewAnims(ILcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GenericViewAnim;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_0
    return v1
.end method

.method findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;
    .locals 1

    invoke-direct {p0, p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDragScroller()Lcom/sec/android/app/twlauncher/DragScroller;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    goto :goto_0
.end method

.method getDraggedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    return-object v0
.end method

.method public getGenericViewAnims(IZ)Lcom/sec/android/app/twlauncher/GenericViewAnim;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GenericViewAnim;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/GenericViewAnim;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;-><init>()V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->setOwnerDrawn(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getLastMotion()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iget v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getLastTouchPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    return-void
.end method

.method public isLastTouchAmbiguous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    return v3

    :pswitch_1
    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownX:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownY:F

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/DragLayer;->resetVelTracker(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    const-string v3, "onInterceptTouch"

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V

    packed-switch v10, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    move/from16 v17, v0

    move/from16 v0, v19

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    add-float/2addr v3, v4

    sub-float v3, v3, v22

    move/from16 v0, v16

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v15, v3

    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    add-float/2addr v3, v4

    sub-float v3, v3, v23

    move/from16 v0, v17

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int/lit8 v3, v15, -0x1

    add-int/lit8 v4, v21, -0x1

    add-int v5, v15, v24

    add-int/lit8 v5, v5, 0x1

    add-int v6, v21, v14

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move/from16 v0, v19

    int-to-float v3, v0

    add-float v3, v3, v25

    sub-float v3, v3, v22

    move/from16 v0, v16

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v15, v3

    move/from16 v0, v20

    int-to-float v3, v0

    add-float v3, v3, v26

    sub-float v3, v3, v23

    move/from16 v0, v17

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v21, v0

    add-int/lit8 v3, v15, -0x1

    add-int/lit8 v4, v21, -0x1

    add-int v5, v15, v24

    add-int/lit8 v5, v5, 0x1

    add-int v6, v21, v14

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    move/from16 v0, v25

    float-to-int v3, v0

    move/from16 v0, v26

    float-to-int v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    if-ne v3, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    const/4 v5, 0x0

    aget v5, v11, v5

    const/4 v6, 0x1

    aget v6, v11, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/DragLayer;->getPaintForPos(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkDraggingTouchSlop(FF)V

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    const/4 v5, 0x0

    aget v5, v11, v5

    const/4 v6, 0x1

    aget v6, v11, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    const/4 v3, 0x0

    aget v5, v11, v3

    const/4 v3, 0x1

    aget v6, v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v8, v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v3, v13

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    const/4 v5, 0x0

    aget v5, v11, v5

    const/4 v6, 0x1

    aget v6, v11, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkDraggingTouchSlop(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkDraggingTouchSlop(FF)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDragRegion(Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resetVelTracker(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    const-string v0, "Initial Point"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method public setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    return-void
.end method

.method public setDragListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    return-void
.end method

.method public setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    return-void
.end method

.method public setDragMenuScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    return-void
.end method

.method public setDragScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    return-void
.end method

.method public setDragSource(Lcom/sec/android/app/twlauncher/DragSource;IIII)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/DragSource;->onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/DragSource;->onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method setIgnoredDropTarget(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    return-void
.end method

.method public setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    return-void
.end method

.method setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-void
.end method

.method public startAnimation(Landroid/view/View;FFFFFFILcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V
    .locals 12

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    array-length v11, v2

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    aget-object v2, v2, v10

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    new-instance v1, Lcom/sec/android/app/twlauncher/DragAnimation;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p9

    invoke-direct {v1, v3, v0}, Lcom/sec/android/app/twlauncher/DragAnimation;-><init>(Landroid/view/animation/Interpolator;Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V

    aput-object v1, v2, v10

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/twlauncher/DragAnimation;->setAnimation(Landroid/view/View;FFFFFFI)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragStart(Landroid/view/View;FFLcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v3, :cond_8

    move-object/from16 v3, p1

    check-cast v3, Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIsDragging(Z)V

    :cond_2
    :goto_1
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    const v3, 0x7f06000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v17

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v11

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    if-eqz v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v14

    if-nez v14, :cond_a

    const-string v3, "Launcher.DragLayer"

    const-string v4, "startDrag().. drawing cache is a null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Failed to initialize dragging for the widget"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    invoke-interface {v3}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    :cond_6
    :goto_3
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragStart(Landroid/view/View;FFLcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-eqz v3, :cond_2

    move-object/from16 v3, p1

    check-cast v3, Lcom/sec/android/app/twlauncher/BubbleTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setIsDragging(Z)V

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_d

    instance-of v3, v13, Lcom/sec/android/app/twlauncher/Widget;

    if-nez v3, :cond_b

    instance-of v3, v13, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v3, :cond_d

    :cond_b
    const v3, 0x3f866666

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    :goto_4
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    const/16 v3, 0x64

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationDuration:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    invoke-static {v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    move/from16 v0, v16

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v15, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v3, v16

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v12

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragSource;->onPreDragStart(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAction:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x23

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mEnteredRegion:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    :cond_d
    const v3, 0x3f8ccccd

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    goto/16 :goto_4
.end method

.method public startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    iget v0, p5, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iget v0, p5, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/DragLayer;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    return-void
.end method

.method public startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/DragLayer;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    return-void
.end method
