.class public Lcom/sec/android/app/twlauncher/Workspace;
.super Lcom/sec/android/app/twlauncher/Scene;
.source "Workspace.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;
.implements Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;,
        Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;,
        Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    }
.end annotation


# instance fields
.field private LAUNCHER_LOOP_WORKSPACE:Z

.field private LAUNCHER_TILT_WORKSPACE:Z

.field private final LOOP_LEFT:I

.field private final LOOP_NONE:I

.field private final LOOP_RIGHT:I

.field private mAllowLongPress:Z

.field private mAniRotateFadeIn3D:Landroid/view/animation/Animation;

.field private mAniRotateFadeOut3D:Landroid/view/animation/Animation;

.field private mAniTransition:Landroid/view/animation/Animation;

.field private mAutoScrollRunnable:Ljava/lang/Runnable;

.field private final mBestFitRect:Landroid/graphics/Rect;

.field final mClipBounds:Landroid/graphics/Rect;

.field private mCurrentWidgetRect:Landroid/graphics/Rect;

.field private mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

.field private mDefaultIMEIPosX:I

.field private mDefaultIMEIPosY:I

.field private mDefaultIMEIPosYGap:I

.field private mDefaultIMEIRectHeight:I

.field private mDefaultIMEIRectLeft:I

.field private mDefaultIMEIRectTop:I

.field private mDefaultIMEIRectWidth:I

.field private mDefaultScreen:I

.field private final mDimPaint:Landroid/graphics/Paint;

.field private mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field final mDrawerBounds:Landroid/graphics/Rect;

.field private mEndScreen:I

.field private mExistWidgetSpace:Z

.field protected mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field protected mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

.field private mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mHoverInRect:Landroid/graphics/Rect;

.field private mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mHoverOutRect:Landroid/graphics/Rect;

.field private mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

.field private mHoverScratchRect:Landroid/graphics/Rect;

.field private mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mIMEITextPaint:Landroid/graphics/Paint;

.field private mIMSISurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mIgnoreRestore:Z

.field private mIsAnimating:Z

.field private mIsAutoScrolling:Z

.field private mIsOnAnimation:Z

.field private mIsResizing:Z

.field private mIsWallpaperLooping:Z

.field private mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mModeResize:Z

.field private mOverlayColorRed:I

.field private mOverlayColorYellow:I

.field private mResizeBaseCellRect:Landroid/graphics/Rect;

.field private mResizeBaseRect:Landroid/graphics/Rect;

.field private mResizeData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mResizeDimPaint:Landroid/graphics/Paint;

.field private mResizeDimRect:Landroid/graphics/Rect;

.field private mResizeDotGray:Landroid/graphics/drawable/Drawable;

.field private mResizeDotRed:Landroid/graphics/drawable/Drawable;

.field private mResizeDotYellow:Landroid/graphics/drawable/Drawable;

.field private mResizeEnableState:I

.field private mResizeHandle:Landroid/graphics/drawable/Drawable;

.field private mResizeHandleRect:Landroid/graphics/Rect;

.field private mResizeHandleRectTouched:Z

.field private mResizeModeCancel:Z

.field private mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

.field private mResizeOverlayRed:Landroid/graphics/drawable/Drawable;

.field private mResizeOverlayYellow:Landroid/graphics/drawable/Drawable;

.field private mResizeRect:Landroid/graphics/Rect;

.field private mResizeRectPaint:Landroid/graphics/Paint;

.field private mResizeStrokePaint:Landroid/graphics/Paint;

.field private mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

.field private mScrollDirection:I

.field private mSnaptoScreenStartTime:J

.field private mStartScreen:I

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempEstimate:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mWallpaperLooingState:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidgetResizeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, v6}, Lcom/sec/android/app/twlauncher/Scene;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    new-array v2, v7, [I

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempCell:[I

    new-array v2, v7, [I

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mClipBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWidgetResizeLock:Ljava/lang/Object;

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0xc8

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0xc8

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverScratchRect:Landroid/graphics/Rect;

    new-instance v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    invoke-direct {v2, p0, v5}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsResizing:Z

    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x12c

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x12c

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_NONE:I

    iput v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_LEFT:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_RIGHT:I

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_TILT_WORKSPACE:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace$2;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    sget-object v2, Lcom/sec/android/app/twlauncher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v2, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v2, "ro.csc.homescreen.defaultscreen"

    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->initWorkspace(Landroid/content/res/Resources;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->initPageIndicator(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/twlauncher/Workspace;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$408(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$410(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/twlauncher/Workspace;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentWidgetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/Workspace;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/twlauncher/Workspace;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/Workspace;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->setResizeRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method private cancelRunningTransitionAnimation()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private checkResizeHandleRectTouchedDown(II)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3faaaaab

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    int-to-float v4, p1

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float v4, p2

    sub-float/2addr v2, v4

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearVacantCache()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    :cond_0
    return-void
.end method

.method private cloneFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/CellLayout;IIZ)V
    .locals 19

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v17

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v18

    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->renewFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V

    const-wide/16 v2, -0x1

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v3, 0x7f03000a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    invoke-static {v3, v4, v2, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml2(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v7

    :goto_0
    if-eqz p5, :cond_1

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-nez v2, :cond_2

    :goto_2
    return-void

    :cond_0
    const v3, 0x7f03000a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    invoke-static {v3, v4, v2, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v10, -0x64

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget v13, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v14, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v9, v18

    invoke-static/range {v8 .. v16}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabaseUserFolderWithShortcut(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZI)V

    :goto_3
    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/LauncherModel;->addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    check-cast v7, Lcom/sec/android/app/twlauncher/FolderIcon;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/FolderIcon;->onClone()V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v10, -0x64

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget v13, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v14, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v9, v18

    invoke-static/range {v8 .. v14}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_3
.end method

.method private currentlyOverscrollingChild(I)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawDefaultIMSIText(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectWidth:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mPdaVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mPhoneVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mCscVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mRfCalDate:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mCameraFirmVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mTspFirmVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x7

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x9

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMSISurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const v0, 0x3f19999a

    invoke-virtual {p1, v6, v6, v6, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectTop:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectLeft:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectTop:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMSISurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    return-void
.end method

.method private drawHoverRect(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;FF)V
    .locals 6

    const/high16 v5, 0x3f80

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    sub-float v0, v5, v0

    mul-float/2addr v0, p3

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    invoke-direct {p0, p1, v1, p4}, Lcom/sec/android/app/twlauncher/Workspace;->transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;IF)V

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isManagingWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x306

    const/16 v2, 0x300

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    const/high16 v1, 0x3f00

    invoke-static {v1, v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    invoke-virtual {p1, v1, v1, v1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncErase()V

    goto :goto_0
.end method

.method private drawPageIndicator(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageScrollOffset(I)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    goto :goto_0
.end method

.method private drawResizeGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/CellLayout;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPointX(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPointY(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixelW(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixelH(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->drawWidgetResizeAnimatorGL(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v7, v1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->drawResizeOverlay(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v1, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    return v7

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_0
.end method

.method private drawResizeOverlay(Landroid/graphics/Canvas;)V
    .locals 17

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayRed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorRed:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorRed:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v9, Landroid/graphics/Rect;->top:I

    iget v13, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->right:I

    iget v14, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    iget v15, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayYellow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorYellow:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

    iget v12, v9, Landroid/graphics/Rect;->left:I

    iget v13, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->top:I

    iget v14, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    iget v14, v9, Landroid/graphics/Rect;->right:I

    iget v15, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    iget v11, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_5
    iget v11, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_6
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    invoke-direct {v8, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v11, v8, Landroid/graphics/Rect;->left:I

    iget v12, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iput v11, v8, Landroid/graphics/Rect;->left:I

    iget v11, v8, Landroid/graphics/Rect;->right:I

    iget v12, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    iput v11, v8, Landroid/graphics/Rect;->right:I

    iget v11, v8, Landroid/graphics/Rect;->top:I

    iget v12, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iput v11, v8, Landroid/graphics/Rect;->top:I

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    iput v11, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v11, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, v11, v12

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    int-to-float v11, v2

    int-to-float v12, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawWidgetResizeAnimatorGL(Landroid/graphics/Canvas;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p6, v0, p5}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingLeft:I

    sub-int/2addr p1, v0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findNearestVacantArea(IIIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private findCellForResizableWidget([ILjava/lang/Object;)Z
    .locals 11

    const/16 v10, 0x78

    const/4 v3, 0x0

    const/4 v2, 0x1

    check-cast p2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v6, :cond_0

    move v5, v2

    :goto_0
    if-nez v6, :cond_1

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v4, v7, v5, v1, v3}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->getSupportSize()[Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v1, -0x1

    move v0, v3

    :goto_2
    array-length v8, v7

    if-ge v0, v8, :cond_8

    aget-object v8, v7, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v0

    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    if-ltz v1, :cond_6

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v4

    :goto_4
    if-ltz v1, :cond_7

    aget-object v4, v7, v1

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v8, v9, v5, v4, v3}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v4

    or-int/2addr v4, v0

    if-eqz v4, :cond_5

    if-nez v6, :cond_3

    move v0, v2

    :goto_5
    iput v0, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    if-nez v6, :cond_4

    move v0, v2

    :goto_6
    iput v0, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    :goto_7
    return v2

    :cond_0
    iget v1, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move v5, v1

    goto :goto_0

    :cond_1
    iget v1, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget v0, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    goto :goto_5

    :cond_4
    iget v0, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v4

    goto :goto_4

    :cond_6
    move v0, v4

    :cond_7
    move v2, v0

    goto :goto_7

    :cond_8
    move v0, v3

    goto :goto_3
.end method

.method private findSearchWidget(Lcom/sec/android/app/twlauncher/CellLayout;)Lcom/sec/android/app/twlauncher/Search;
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/Search;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sec/android/app/twlauncher/Search;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getAllResizeCellSpans()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v5, v12, v13}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMaxX()I

    move-result v3

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMaxY()I

    move-result v4

    const/4 v12, 0x2

    new-array v6, v12, [I

    const/4 v12, 0x2

    new-array v2, v12, [I

    const/4 v9, 0x0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v12}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v1

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v12}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v9

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v12

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v13

    invoke-virtual {v8, v12, v13, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    const/4 v11, 0x1

    :goto_0
    if-gt v11, v4, :cond_2

    const/4 v10, 0x1

    :goto_1
    if-gt v10, v3, :cond_1

    invoke-virtual {v5, v10, v11}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v8, v10, v11, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/2addr v12, v1

    const/4 v13, 0x0

    aget v13, v2, v13

    if-gt v12, v13, :cond_0

    const/4 v12, 0x1

    aget v12, v6, v12

    add-int/2addr v12, v9

    const/4 v13, 0x1

    aget v13, v2, v13

    if-gt v12, v13, :cond_0

    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    aget v13, v6, v13

    add-int/2addr v13, v1

    const/4 v14, 0x1

    aget v14, v6, v14

    add-int/2addr v14, v9

    invoke-direct {v12, v1, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    return-object v7
.end method

.method private getWhichScreen()I
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v2

    :cond_0
    move v3, v2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    if-lt v1, v6, :cond_2

    if-gez v4, :cond_1

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v4, v6

    div-int v5, v6, v3

    :goto_0
    return v5

    :cond_1
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    div-int v5, v6, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v7

    sub-int v0, v6, v7

    if-gez v4, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    if-gtz v0, :cond_4

    add-int/lit8 v5, v1, -0x1

    goto :goto_0

    :cond_4
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-nez v6, :cond_5

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    div-int v5, v6, v3

    goto :goto_0

    :cond_5
    if-lez v3, :cond_6

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    div-int v5, v6, v3

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private initPageIndicator(Landroid/content/res/Resources;)V
    .locals 9

    new-instance v0, Lcom/sec/android/app/twlauncher/PageIndicator;

    const v1, 0x7f0b0042

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x7

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorTop:I

    const v1, 0x7f0b003d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v1, 0x7f0b003e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v1, 0x7f090004

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    move-object v1, p1

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/twlauncher/PageIndicator;-><init>(Landroid/content/res/Resources;IIIIIZLcom/sec/android/app/twlauncher/Scene;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    return-void
.end method

.method private initWorkspace(Landroid/content/res/Resources;)V
    .locals 9

    const-wide/16 v7, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    const v1, 0x7f090005

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x7f07000e

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_4

    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    const v1, 0x7f02002c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x6700

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, 0x7f02001b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayYellow:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020018

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayRed:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020014

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020017

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    const v1, 0x7f020016

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    const v1, 0x7f020015

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    const v1, 0x7f020055

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    const v1, 0x7f070012

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorYellow:I

    const v1, 0x7f070010

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorRed:I

    return-void

    :cond_4
    const/16 v1, 0x258

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    goto/16 :goto_0
.end method

.method private isResizableWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->countAvailableSizes()I

    move-result v2

    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resizable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%#x"

    new-array v6, v1, [Ljava/lang/Object;

    iget-wide v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cnt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isSamsungWidgetInfo(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    instance-of v3, v0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->getProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.android.widgetapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MultipleSize;->countAvailableSizes()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    return-void
.end method

.method private onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    :cond_0
    check-cast p4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v8

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v9

    iget v0, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-wide v0, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v0, v8

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    move-object v8, v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const v2, 0x7f030001

    move-object v0, v8

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v1, v2, p5, v0}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v5

    if-eqz p6, :cond_5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p5, v5, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;I)V

    if-nez v5, :cond_6

    :cond_2
    :goto_1
    return-void

    :sswitch_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    iput v0, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    iput v3, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    iput v4, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    :goto_2
    iget v0, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/16 v1, 0xfa4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v8, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/app/twlauncher/Launcher;->addNewDroppedAppWidget(Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/app/twlauncher/Launcher;->addNewDroppedSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_1

    :sswitch_2
    move-object v1, v8

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v0, p0

    move-object v2, p5

    move v3, p2

    move v4, p3

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->cloneFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/CellLayout;IIZ)V

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    invoke-virtual {p5, v5, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    invoke-virtual {v9, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v2, -0x64

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    iget v5, v1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v6, v1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move-object v1, v8

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0xfa4 -> :sswitch_1
    .end sparse-switch
.end method

.method private setResizeBaseRect(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 12

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    const/4 v7, 0x2

    new-array v5, v7, [I

    new-instance v4, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v4, v7, v8}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinX()I

    move-result v3

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinY()I

    move-result v2

    invoke-virtual {v0, v3, v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    new-instance v7, Landroid/graphics/Rect;

    aget v8, v5, v10

    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v8

    mul-int v6, v7, v8

    iget v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v8

    mul-int v1, v7, v8

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget-object v8, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v8

    iget-object v9, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v9, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v10, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    add-int/2addr v10, v3

    iget v11, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    add-int/2addr v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseCellRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setResizeRect(Landroid/graphics/Rect;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentWidgetRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    return-void
.end method

.method private snapToDestination()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    return-void
.end method

.method private transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;IF)V
    .locals 11

    const/high16 v10, 0x4000

    const/high16 v9, 0x3fc0

    const/high16 v8, 0x3f80

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    mul-int v0, v6, p2

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int v7, v0, v1

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_TILT_WORKSPACE:Z

    if-nez v1, :cond_1

    cmpg-float v1, p3, v5

    if-gtz v1, :cond_0

    int-to-float v0, v0

    int-to-float v1, v7

    int-to-float v2, v6

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageGap:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    :goto_0
    int-to-float v0, v6

    mul-float/2addr v0, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float/2addr v0, p3

    sub-float v0, v8, v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    :goto_1
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleMain:F

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleSide:F

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v6

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    invoke-static {v8, v1, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomPageGap:I

    mul-int/2addr v1, v7

    div-int/2addr v1, v6

    add-int/2addr v1, v0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    int-to-float v4, v1

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleMain:F

    invoke-static {v8, v1, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNormalScaleSide:F

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleSide:F

    invoke-static {v2, v3, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v6

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageGap:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomPageGap:I

    int-to-float v2, v2

    invoke-static {v1, v2, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    int-to-float v0, v0

    int-to-float v2, v7

    mul-float/2addr v1, v2

    int-to-float v2, v6

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v1, v0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    int-to-float v4, v1

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    int-to-float v0, v6

    mul-float/2addr v0, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float/2addr v0, p3

    sub-float v0, v8, v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    neg-int v0, v7

    int-to-float v0, v0

    int-to-float v1, v6

    div-float/2addr v0, v1

    const/high16 v1, 0x41a0

    const/high16 v2, 0x4170

    invoke-static {v1, v2, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->currentlyOverscrollingChild(I)Z

    move-result v1

    if-eqz v1, :cond_2

    neg-int v0, v7

    int-to-float v0, v0

    invoke-virtual {p1, v0, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    div-int/lit8 v0, v6, 0x4

    const/high16 v1, 0x4140

    int-to-float v2, v7

    int-to-float v0, v0

    div-float v0, v2, v0

    mul-float/2addr v0, v1

    :cond_2
    int-to-float v1, v6

    div-float/2addr v1, v10

    invoke-virtual {p1, v1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotateY(F)V

    neg-int v0, v6

    int-to-float v0, v0

    div-float/2addr v0, v10

    invoke-virtual {p1, v0, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    goto/16 :goto_1
.end method

.method private updateWallpaperOffset(I)V
    .locals 5

    const/high16 v0, 0x3f80

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float v1, v0, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    cmpl-float v3, v1, v4

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-gtz v2, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    int-to-float v0, v0

    int-to-float v3, p1

    div-float/2addr v0, v3

    invoke-virtual {v2, v1, v0, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_2
.end method


# virtual methods
.method public ResizeWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_3

    new-instance v3, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MultipleSize;->countAvailableSizes()I

    move-result v0

    if-le v0, v9, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->isResizableWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->deactivate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v5

    mul-int/2addr v4, v5

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v1, v5, v6, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aget v6, v4, v8

    aget v7, v4, v9

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->setResizeRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinX()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinY()I

    move-result v3

    invoke-virtual {v1, v5, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    new-instance v3, Landroid/graphics/Rect;

    aget v5, v4, v8

    aget v4, v4, v9

    invoke-direct {v3, v8, v8, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v1

    mul-int/2addr v1, v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getTop()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setResizeBaseRect(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    new-instance v1, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;

    invoke-direct {v1, p0, v10}, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->flipTo(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getAllResizeCellSpans()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Launcher.Workspace"

    const-string v1, "Unable to getAppWidgetInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iput-object v10, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    goto :goto_1
.end method

.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v1, :cond_1

    move v4, v5

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v7, :cond_0

    if-nez v1, :cond_3

    move-object v2, v6

    :goto_2
    invoke-virtual {v3, v6, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    :cond_0
    invoke-direct {p0, p6}, Lcom/sec/android/app/twlauncher/Workspace;->isSamsungWidgetInfo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-direct {p0, v6, p6}, Lcom/sec/android/app/twlauncher/Workspace;->findCellForResizableWidget([ILjava/lang/Object;)Z

    move-result v0

    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    if-eqz v0, :cond_5

    sget-object v6, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    :goto_4
    invoke-interface {v7, v6}, Lcom/sec/android/app/twlauncher/DragController;->setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    return v0

    :cond_1
    iget v4, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    goto :goto_0

    :cond_2
    iget v5, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v0

    goto :goto_3

    :cond_5
    sget-object v6, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRANS:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    goto :goto_4
.end method

.method addApplicationShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 8

    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v5

    const/4 v0, 0x2

    new-array v7, v0, [I

    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v5, v0, v1, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    new-instance v4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v4, p1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    if-nez v0, :cond_2

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method addInCurrentScreen(Landroid/view/View;IIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;IIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 8

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    if-lt p2, v5, :cond_2

    :cond_0
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item in db lies on nonexistent screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Screen count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Item will be deleted. Iteminfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    :cond_3
    if-nez v4, :cond_5

    new-instance v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    invoke-direct {v4, p3, p4, p5, p6}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(IIII)V

    :goto_1
    if-eqz p7, :cond_6

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3, p1, v5, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    instance-of v5, p1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto :goto_0

    :cond_5
    iput p3, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iput p4, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    iput p5, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    iput p6, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1

    :cond_6
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method addWidget(Landroid/view/View;Lcom/sec/android/app/twlauncher/Widget;Z)V
    .locals 8

    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method public animateClose()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelRunningTransitionAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    check-cast v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    return-void
.end method

.method public animateOpen()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelRunningTransitionAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    check-cast v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    return-void
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 3

    const/4 v0, 0x0

    const v1, 0x3e99999a

    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_1
    sub-float v2, p1, v0

    sub-float v0, v1, v0

    div-float v0, v2, v0

    goto :goto_0
.end method

.method public cancelOutAnimIfRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelRunningTransitionAnimation()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 13

    const/4 v7, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->suspendWidgetUpdates()V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v5, :cond_0

    if-lt v0, v11, :cond_0

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_4

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    mul-int/2addr v6, v0

    add-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v5, :cond_8

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    if-eqz v5, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    sub-long/2addr v5, v7

    long-to-int v1, v5

    int-to-float v5, v1

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    int-to-float v6, v6

    div-float v2, v5, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    if-ne v5, v11, :cond_5

    cmpl-float v5, v2, v10

    if-lez v5, :cond_1

    const/high16 v2, 0x3f80

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    :cond_1
    move v4, v2

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5, v3, v4, v12}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-le v5, v6, :cond_0

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    mul-int/2addr v6, v0

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    goto :goto_0

    :cond_5
    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    cmpl-float v5, v2, v10

    if-lez v5, :cond_6

    const/high16 v2, 0x3f80

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    :cond_6
    sub-float v4, v10, v2

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5, v3, v4, v12}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_1

    :cond_9
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-eq v5, v7, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v0, v11, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-gez v5, :cond_c

    add-int/lit8 v5, v0, -0x1

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    :cond_a
    :goto_3
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    iput v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_e

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    :goto_4
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->resumeWidgetUpdates()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    goto/16 :goto_2

    :cond_c
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v5, v0, :cond_a

    iput v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_3

    :cond_d
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_4

    :cond_e
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    goto :goto_5
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v0

    if-gez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMSI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawDefaultIMSIText(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Workspace$1;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCylinderAnimationFactor()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->isCylinderAnimating()Z

    move-result v0

    or-int v4, v2, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDarkenFactor()F

    move-result v0

    cmpl-float v1, v0, v9

    if-lez v1, :cond_c

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const/high16 v1, 0x42ff

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(I)V

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v5, v0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    int-to-float v6, v0

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v7, v0

    iget v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {p1, v5, v6, v7, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move v0, v1

    :goto_1
    invoke-virtual {p1, p0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClipToView(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v9, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    or-int/2addr v1, v4

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v5

    mul-float/2addr v5, v3

    invoke-direct {p0, p1, v4, v5, v3}, Lcom/sec/android/app/twlauncher/Workspace;->drawHoverRect(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;FF)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v1, v4

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v5

    mul-float/2addr v5, v3

    invoke-direct {p0, p1, v4, v5, v3}, Lcom/sec/android/app/twlauncher/Workspace;->drawHoverRect(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;FF)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v1, v4

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v5, v5

    int-to-float v6, v4

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    cmpl-float v6, v3, v9

    if-gtz v6, :cond_8

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    rem-int v4, v6, v4

    if-eqz v4, :cond_9

    :cond_8
    add-int/lit8 v4, v5, -0x1

    invoke-virtual {p0, p1, v4, v3, v10}, Lcom/sec/android/app/twlauncher/Workspace;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v4

    or-int/2addr v1, v4

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p0, p1, v4, v3, v10}, Lcom/sec/android/app/twlauncher/Workspace;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v4

    or-int/2addr v1, v4

    :cond_9
    invoke-virtual {p0, p1, v5, v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-boolean v2, v2, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    if-eqz v2, :cond_a

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->fadeEdges(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    :cond_a
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawResizeGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageIndicator(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    or-int v2, v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method draggingOverTouchSlop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    return-void
.end method

.method protected drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z
    .locals 9

    const/high16 v8, 0x3f00

    const v5, 0x3a83126f

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAtLooped(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_4

    move v0, v2

    :goto_0
    return v0

    :cond_2
    if-ltz p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Workspace;->transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;IF)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_TILT_WORKSPACE:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v4, p2

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v0

    invoke-static {v0, v7, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v0

    cmpl-float v4, v0, v5

    if-lez v4, :cond_5

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageBackground(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    :cond_5
    cmpl-float v0, p3, v5

    if-lez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_TILT_WORKSPACE:Z

    if-nez v0, :cond_6

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageBackground(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const/high16 v0, 0x4000

    mul-float/2addr v0, p3

    const/high16 v4, 0x40a0

    mul-float/2addr v4, p3

    const/high16 v5, 0x40a0

    mul-float/2addr v5, p3

    invoke-virtual {p1, v0, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    mul-float v0, v8, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/CellLayout;->drawShadows(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_7
    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-static {p1, v0, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCylinderAnimationFactor()F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->setScreenClipExtendedEdge(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_d

    if-ltz p2, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_d

    :cond_9
    const v0, 0x186a0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->setScreenClipExtendedEdge(I)V

    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDarkenFactor()F

    move-result v0

    mul-float/2addr v0, v8

    sub-float v0, v7, v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p1, v0, v0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    invoke-virtual {v1, p1, v2, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollPage:I

    if-ne p2, v1, :cond_b

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    :cond_b
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_0

    :cond_c
    div-int/lit8 v0, v3, 0x4

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->setScreenClipExtendedEdge(I)V

    goto :goto_1

    :cond_d
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_TILT_WORKSPACE:Z

    if-eqz v0, :cond_a

    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->currentlyOverscrollingChild(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->setScreenClipExtendedEdge(I)V

    goto :goto_2
.end method

.method public drawWallpaperImageGL(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;)V
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, v7, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCylinderAnimationFactor()F

    move-result v0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    iput v11, v7, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getWidth()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int v4, v7, v8

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-le v3, v4, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int v5, v7, v8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    neg-int v7, v5

    int-to-float v7, v7

    int-to-float v8, v3

    int-to-float v9, v4

    div-float/2addr v8, v9

    mul-float v6, v7, v8

    :cond_2
    invoke-static {v10, v10, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, v2, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_3
    return-void
.end method

.method public estimateDropLocation(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v8, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v8, :cond_1

    const/4 v4, 0x1

    :goto_1
    if-nez v8, :cond_2

    const/4 v5, 0x0

    :goto_2
    if-eqz p5, :cond_3

    move-object/from16 v10, p5

    :goto_3
    sub-int v1, p1, p3

    sub-int v2, p2, p4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempCell:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v9

    if-nez v9, :cond_4

    const/4 v10, 0x0

    :goto_4
    return-object v10

    :cond_0
    iget v3, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    goto :goto_0

    :cond_1
    iget v4, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    goto :goto_1

    :cond_2
    iget-object v5, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_2

    :cond_3
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x0

    aget v0, v9, v0

    add-int/2addr v0, v3

    const/4 v1, 0x1

    aget v1, v9, v1

    add-int/2addr v1, v4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 6

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v4, v3, v0, v1, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->findAllOccupiedCells([[ZIII)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCellsFromOccupied([[ZII)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;
    .locals 2

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidget(Lcom/sec/android/app/twlauncher/CellLayout;)Lcom/sec/android/app/twlauncher/Search;

    move-result-object v1

    return-object v1
.end method

.method finishAppWidgetResize()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWidgetResizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-static {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    const/16 v2, 0xaa

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->removeMessages(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAnimationGL()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected getChildAtLooped(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    add-int v1, v0, p1

    rem-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    :goto_1
    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_1
.end method

.method getCurrentScreen()I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    :goto_1
    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_1
.end method

.method protected getCylinderAnimationFactor()F
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->getCylinderAnimationFactor()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    const/high16 v2, 0x3f80

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v2

    return v2
.end method

.method public getDarkenFactor()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_2

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getColumns()I

    move-result v9

    if-ne v8, v9, :cond_0

    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getRows()I

    move-result v9

    if-ne v8, v9, :cond_0

    instance-of v8, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v8, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/sec/android/app/twlauncher/Folder;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v8

    if-ne v8, p1, :cond_0

    :goto_2
    return-object v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    :goto_0
    const/4 v2, 0x0

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    move-object v0, v6

    :goto_2
    return-object v0

    :cond_0
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    iget v7, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getColumns()I

    move-result v8

    if-ne v7, v8, :cond_3

    iget v7, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getRows()I

    move-result v8

    if-ne v7, v8, :cond_3

    instance-of v7, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v7, :cond_3

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move-object v0, v6

    goto :goto_2
.end method

.method getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    iget v6, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getColumns()I

    move-result v7

    if-ne v6, v7, :cond_1

    iget v6, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getRows()I

    move-result v7

    if-ne v6, v7, :cond_1

    instance-of v6, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v6, :cond_1

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v5

    goto :goto_0
.end method

.method getOpenFolders()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/Folder;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_2

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getColumns()I

    move-result v9

    if-ne v8, v9, :cond_1

    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getRows()I

    move-result v9

    if-ne v8, v9, :cond_1

    instance-of v8, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v8, :cond_1

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    return-object v0
.end method

.method public getScreenForView(Landroid/view/View;)I
    .locals 5

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method initAddWidget()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    return-void
.end method

.method public invalidateIMSICache()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMSISurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    return-void
.end method

.method protected isCylinderAnimating()Z
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->isCylinderAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

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

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method moveToDefaultScreen()V
    .locals 3

    const-string v0, "ro.csc.homescreen.defaultscreen"

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    iput p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 8

    const-wide/high16 v4, 0x4000

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    sub-int/2addr v0, p2

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    sub-int/2addr v2, p3

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x402e

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    iput p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverScratchRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropLocation(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getTop()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->setDropLocationFeedback(Landroid/graphics/Rect;)V

    :cond_1
    invoke-super {p0, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->setPageOnDragOver(II)V

    return-void
.end method

.method public onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 14

    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/Workspace;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v5

    if-eq p1, p0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    sub-int v2, p2, p4

    sub-int v3, p3, p5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    if-eq v4, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrop()  both cell and cell parent are NULL : originalCellLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " screen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v2, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cell.getParent()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrop() cell screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v5, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;)V

    :cond_5
    if-eqz v11, :cond_9

    sub-int v7, p2, p4

    sub-int v8, p3, p5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v10, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v6, p0

    move-object v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_6
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    invoke-virtual {v5, v11, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v2, -0x64

    iget v5, v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v6, v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    instance-of v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    :cond_8
    instance-of v0, v11, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-eqz v0, :cond_9

    check-cast v11, Lcom/sec/android/app/twlauncher/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setIsDragging(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    :cond_a
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->isLauncherAppWidgetInfo()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isShown()Z

    move-result v0

    if-nez v0, :cond_b

    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->ResizeWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    goto/16 :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    instance-of v0, p7, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DragController.startDrag()\'s dragInfo argument should have been LauncherDragInfo instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p7, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->disableRollNavigation()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setIsDragging(Z)V

    :cond_1
    if-eqz p6, :cond_4

    if-eq p1, p0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-virtual {p7}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->shouldDelayRemovingFromSourceWhenDrop()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    return-void

    :cond_3
    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    if-eqz v2, :cond_3

    :cond_0
    if-eq v1, v0, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    packed-switch v1, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    move v0, v5

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    move v5, v0

    goto :goto_1

    :cond_6
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v1, :cond_7

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    :cond_7
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v9, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v1

    if-gez v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float v1, v4, v1

    float-to-int v1, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float v2, v3, v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    sub-int v1, v3, v1

    const/16 v2, 0x2710

    if-le v1, v2, :cond_5

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    move v5, v0

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v3, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v4, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-le v3, v1, :cond_b

    move v1, v0

    :goto_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-le v4, v2, :cond_c

    move v2, v0

    :goto_3
    if-nez v1, :cond_9

    if-eqz v2, :cond_5

    :cond_9
    iput v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v1, :cond_a

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    :cond_a
    if-lt v3, v4, :cond_d

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move v5, v0

    goto/16 :goto_1

    :cond_b
    move v1, v5

    goto :goto_2

    :cond_c
    move v2, v5

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v1

    if-nez v1, :cond_5

    float-to-int v1, v7

    float-to-int v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v1

    if-eq v1, v10, :cond_5

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move v5, v0

    goto/16 :goto_1

    :pswitch_2
    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    iput v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v1

    if-nez v1, :cond_e

    float-to-int v1, v7

    float-to-int v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v1

    if-eq v1, v10, :cond_f

    :cond_e
    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move v5, v0

    :cond_f
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_13

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move v5, v0

    goto/16 :goto_1

    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getOpenedWidgetsCount()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    :cond_10
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.wallpaper.tap"

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_11
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    :cond_12
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :pswitch_4
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v9, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float v1, v4, v1

    float-to-int v1, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    sub-float v0, v3, v0

    float-to-int v0, v0

    mul-int/2addr v1, v1

    mul-int/2addr v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_5

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v9, :cond_5

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    goto/16 :goto_1

    :cond_13
    move v5, v0

    goto/16 :goto_1

    :cond_14
    move v0, v5

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v6, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    sub-int v7, p4, p2

    invoke-virtual {v6, v4, v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->setLayout(II)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x4000

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v6, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    const-string v3, "LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widthMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", width = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v6, :cond_1

    :try_start_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v3

    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "heightMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, v3, -0x1

    mul-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    :cond_4
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v1, p1

    check-cast v1, Landroid/view/AbsSavedState;

    invoke-virtual {v1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/sec/android/app/twlauncher/Scene;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    instance-of v1, p1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    iget v1, v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSizeChanged( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getWidth() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getHeight() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectWidth:I

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectHeight:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectLeft:I

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectTop:I

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Scene;->onSizeChanged(IIII)V

    return-void

    :cond_0
    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectLeft:I

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectTop:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    if-eqz v2, :cond_3

    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v4

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v5, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_6
    packed-switch v0, :pswitch_data_0

    :cond_7
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    :cond_9
    float-to-int v0, v2

    float-to-int v4, v3

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    if-eq v0, v9, :cond_7

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    sub-float/2addr v0, v5

    float-to-int v6, v0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    if-eqz v4, :cond_b

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-gt v4, v7, :cond_b

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-le v0, v4, :cond_7

    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->suspendWidgetUpdates()V

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    float-to-int v2, v5

    invoke-virtual {v0, v2, v8, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->getTouchScrollOffset(IIZ)I

    move-result v0

    if-eq v0, v9, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->setFastScrollFactor()V

    invoke-virtual {p0, v0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    :cond_d
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v0

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    if-gez v6, :cond_10

    neg-int v0, v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-le v2, v0, :cond_7

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-lez v2, :cond_f

    invoke-virtual {p0, v6, v8}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_f
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int/2addr v0, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    goto :goto_3

    :cond_10
    if-lez v6, :cond_7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-ge v2, v0, :cond_7

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int/2addr v0, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    float-to-int v4, v2

    float-to-int v5, v3

    invoke-virtual {v0, v4, v5, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    goto/16 :goto_1

    :cond_12
    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    goto/16 :goto_1

    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    :cond_14
    :goto_4
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    :cond_15
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->resumeWidgetUpdates()V

    iput v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :cond_16
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    if-eq v0, v9, :cond_17

    float-to-int v0, v2

    float-to-int v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    if-ne v0, v2, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto :goto_4

    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddWidget(I)V

    goto :goto_4

    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    goto :goto_4

    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_5

    :cond_1b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.intent.action.DVFS_LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-nez v4, :cond_1e

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    if-le v0, v4, :cond_1c

    if-lez v3, :cond_1c

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_5

    :cond_1c
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    neg-int v4, v4

    if-ge v0, v4, :cond_1d

    add-int/lit8 v0, v2, -0x1

    if-ge v3, v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_5

    :cond_1d
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToDestination()V

    goto/16 :goto_5

    :cond_1e
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    if-le v0, v4, :cond_1f

    if-ltz v3, :cond_1f

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_5

    :cond_1f
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    neg-int v4, v4

    if-ge v0, v4, :cond_20

    add-int/lit8 v0, v2, -0x1

    if-gt v3, v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_5

    :cond_20
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToDestination()V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchResizeMode(Landroid/view/MotionEvent;)Z
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v17, v0

    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v5, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v5, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x1

    aget v5, v17, v5

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v7, 0x0

    aget v7, v18, v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v17, v7

    const/4 v8, 0x1

    aget v8, v18, v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentWidgetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->startFitting()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-static {v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->checkResizeHandleRectTouchedDown(II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    const/4 v3, 0x1

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move/from16 v0, v22

    if-ge v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move/from16 v0, v22

    if-ge v3, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v22, 0x1e

    iput v4, v3, Landroid/graphics/Rect;->right:I

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v23

    if-ge v3, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v23, 0x28

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v13, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCellRound(II)[I

    move-result-object v20

    new-instance v16, Lcom/sec/android/app/twlauncher/MultipleSize;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-wide v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    const/4 v3, 0x0

    aget v3, v20, v3

    const/4 v4, 0x1

    aget v4, v20, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->getBestFit(II)[I

    move-result-object v9

    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    const/4 v6, 0x0

    aget v6, v9, v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v7, 0x1

    aget v7, v9, v7

    add-int/2addr v6, v7

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    const/4 v4, 0x0

    aget v4, v9, v4

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    const/4 v4, 0x1

    aget v4, v9, v4

    if-eq v3, v4, :cond_9

    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v13, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v10

    iget-object v14, v10, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    iget v3, v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_7

    iget v3, v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_7

    iget v3, v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    const/4 v4, 0x0

    aget v4, v9, v4

    if-ne v3, v4, :cond_7

    iget v3, v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    const/4 v4, 0x1

    aget v4, v9, v4

    if-ne v3, v4, :cond_7

    const/4 v11, 0x1

    :cond_8
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    const/4 v4, 0x0

    aget v4, v9, v4

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    const/4 v4, 0x1

    aget v4, v9, v4

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v4, 0x0

    aget v4, v9, v4

    const/4 v5, 0x1

    aget v5, v9, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v6, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v7, v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->removeInScreen(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v4, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v6, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v7, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v8, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v8, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    aput v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v8, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    aput v8, v6, v7

    invoke-virtual {v13, v4, v5, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->cellsToPixelRect(II[I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onWidgetUpdated(Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;)V
    .locals 4

    invoke-interface {p1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;->getCustomCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWidgetUpdated: no cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->flipTo(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected panStart(I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->panStart(I)V

    return-void
.end method

.method pauseScreen(I)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeInScreen(Landroid/view/View;I)V
    .locals 3

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The screen must be >= 0 and < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 14

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v7, :cond_7

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v9

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v9, :cond_4

    invoke-virtual {v8, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_2
    if-ltz v2, :cond_2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v11, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    :cond_0
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_2

    :cond_1
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_3
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v8, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_5
    if-lez v2, :cond_6

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->requestLayout()V

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public reqExtEndDrag()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDragWoDragFactor()Z

    move-result v0

    return v0
.end method

.method public reqExtEndDragWoDragFactor()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->disableRollNavigation()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public reqExtStartDrag(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iput-object p1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iput v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iput v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->enableRollNavigation()V

    return v2
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method resume(I)V
    .locals 4

    move v0, p1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    :cond_0
    mul-int v2, v0, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method resumeScreen(I)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resumeWidgetUpdates()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->resumeUpdates()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollLeft()V
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto :goto_0
.end method

.method public setAllowLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    return-void
.end method

.method setAutoScrollScreen(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setCurrentScreen(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    return-void
.end method

.method public setDropLocationFeedback(Landroid/graphics/Rect;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v8, v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FF)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int v5, v6, v7

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int v2, v6, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public setExternalBottomOffset(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    return-void
.end method

.method public setExternalZoomFactor(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setShowIndicator()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    return-void
.end method

.method protected snapToScreen(Landroid/view/animation/Interpolator;II)V
    .locals 9

    const/4 v0, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v5, :cond_6

    if-lt v1, v7, :cond_6

    const/4 v5, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-eq p2, v5, :cond_1

    move v0, v4

    :cond_1
    if-eqz v0, :cond_2

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v2, v5, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v5

    mul-int v3, p2, v5

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v5, :cond_4

    if-lt v1, v7, :cond_4

    if-gez p2, :cond_7

    add-int/lit8 p2, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    iput v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    :cond_4
    :goto_1
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-gez p3, :cond_5

    iget p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v5, v5

    int-to-float v6, v3

    int-to-long v7, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    return-void

    :cond_6
    add-int/lit8 v5, v1, -0x1

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_7
    if-lt p2, v1, :cond_4

    const/4 p2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    goto :goto_1
.end method

.method startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/sec/android/app/twlauncher/Search;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v4, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->onDragChild(Landroid/view/View;)V

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;Z)V

    invoke-interface {v3, v0, p0, v4, v6}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->enableRollNavigation()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v4, v2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-interface {v3, v0, p0, v4, v6}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method stopAutoScrollRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    return-void
.end method

.method public suspendWidgetUpdates()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->suspendUpdates()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    return-void
.end method

.method public updateDragInfo(II)V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    int-to-float v0, p1

    float-to-double v2, v0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v0

    int-to-float v0, v0

    float-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    int-to-float v0, p2

    float-to-double v2, v0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v0

    int-to-float v0, v0

    float-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    return-void
.end method

.method updateShortcutsForPackage(Ljava/lang/String;)V
    .locals 11

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v7

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_2

    invoke-virtual {v6, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget v10, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-nez v10, :cond_0

    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v8, v9, :cond_0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    check-cast v1, Lcom/sec/android/app/twlauncher/BubbleTextView;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method updateWallpaperOffset()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    return-void
.end method
