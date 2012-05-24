.class public abstract Lcom/sec/android/app/twlauncher/Scene;
.super Landroid/view/ViewGroup;
.source "Scene.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/hardware/motion/MRListener;


# static fields
.field private static mIsMotionEngineEnabled:Z


# instance fields
.field protected final ENABLE_DVFS_ONSCROLL:Z

.field protected SNAP_VELOCITY:I

.field private mAccumulatedDelta:D

.field private mAccumulatedDx:I

.field private mAccumulatedDy:I

.field private mAngularVelocityY:F

.field protected mContinuousScrollDuration:I

.field protected mCurrentScreen:I

.field protected mDiscardTouchEvents:Z

.field protected mDownAbsX:F

.field protected mDownAbsY:F

.field mDragCell:I

.field protected mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field protected mDragRect:Landroid/graphics/Rect;

.field protected mDragStartX:I

.field protected mDragStartY:I

.field protected mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field mDropCell:I

.field protected mEnablePageIndicatorShowHide:Z

.field protected mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field protected mFirstLayout:Z

.field private mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

.field private mGyro:Landroid/hardware/Sensor;

.field protected mHideIndicator:Ljava/lang/Runnable;

.field protected mIsSceneShrunk:Z

.field protected mIsSingleTap:Z

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLightingEffectShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

.field protected mLocked:Z

.field protected mMaximumVelocity:I

.field private mMotionListenerRegistered:Z

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field protected mMovePinchStart:I

.field protected mMultiTouchUsed:Z

.field protected mNextScreen:I

.field protected mNormalScaleSide:F

.field protected mOpenFlag:Z

.field protected mOverrideTouchEvent:Z

.field protected mPageBorderPaddingBottom:I

.field protected mPageBorderPaddingLeft:I

.field protected mPageBorderPaddingRight:I

.field protected mPageBorderPaddingTop:I

.field protected mPageFrameExpandX:I

.field protected mPageFrameExpandY:I

.field protected mPageFramePaddingBottom:I

.field protected mPageFramePaddingLeft:I

.field protected mPageFramePaddingRight:I

.field protected mPageFramePaddingTop:I

.field protected mPageGap:I

.field protected mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

.field private mPageIndicatorStartOffset:I

.field protected mPageIndicatorTop:I

.field protected mPanningBasis:D

.field protected mPanningStopDelta:D

.field protected mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field protected mPendingDragScrollPage:I

.field protected mPoint:[I

.field protected mScaledRect:Landroid/graphics/RectF;

.field protected mScrollInterpolator:Landroid/view/animation/Interpolator;

.field protected mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field protected mSensorMgr:Landroid/hardware/SensorManager;

.field private mSensorsRegistered:Z

.field protected mSnapToScreenDuration:I

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchedPageIndicatorIndex:I

.field protected mTransPaint:Landroid/graphics/Paint;

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mZoomPageGap:I

.field protected mZoomScaleMain:F

.field protected mZoomScaleSide:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/twlauncher/Scene;->mIsMotionEngineEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v9, -0x1

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->ENABLE_DVFS_ONSCROLL:Z

    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    const/16 v1, 0x320

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    iput v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v5, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSceneShrunk:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPoint:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragRect:Landroid/graphics/Rect;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mOverrideTouchEvent:Z

    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0x190

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0x190

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTransPaint:Landroid/graphics/Paint;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mGyro:Landroid/hardware/Sensor;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorsRegistered:Z

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    iput v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorStartOffset:I

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    const-wide/high16 v1, 0x404e

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDy:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDx:I

    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    new-instance v1, Lcom/sec/android/app/twlauncher/Scene$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Scene$1;-><init>(Lcom/sec/android/app/twlauncher/Scene;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLightingEffectShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->Scene:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Scene;->init(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0xff

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->ENABLE_DVFS_ONSCROLL:Z

    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    const/16 v1, 0x320

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v5, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSceneShrunk:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPoint:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragRect:Landroid/graphics/Rect;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mOverrideTouchEvent:Z

    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0x190

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0x190

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTransPaint:Landroid/graphics/Paint;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mGyro:Landroid/hardware/Sensor;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorsRegistered:Z

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorStartOffset:I

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    const-wide/high16 v1, 0x404e

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    iput-wide v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDy:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDx:I

    iput-wide v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    new-instance v1, Lcom/sec/android/app/twlauncher/Scene$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Scene$1;-><init>(Lcom/sec/android/app/twlauncher/Scene;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLightingEffectShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->Scene:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Scene;->init(Landroid/content/res/TypedArray;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTransPaint:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    return-void
.end method

.method private getMotionSensor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    const-string v0, "MotionEngine"

    const-string v1, "Cannot get Motion Sensor Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private init(Landroid/content/res/TypedArray;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorTop:I

    sput-boolean v3, Lcom/sec/android/app/twlauncher/Scene;->mIsMotionEngineEnabled:Z

    sget-boolean v0, Lcom/sec/android/app/twlauncher/Scene;->mIsMotionEngineEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Scene;->getMotionSensor()V

    :cond_0
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingLeft:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingTop:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingRight:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingBottom:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageFrameExpandX:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageFrameExpandY:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingLeft:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingTop:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingRight:I

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingBottom:I

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageGap:I

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomPageGap:I

    const/16 v0, 0xa

    const/high16 v1, 0x3f40

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleMain:F

    const/16 v0, 0xb

    const/high16 v1, 0x3f00

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleSide:F

    const/16 v0, 0xc

    const v1, 0x3f4ccccd

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNormalScaleSide:F

    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    return-void
.end method


# virtual methods
.method protected clearFastScrollFactor()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(FJ)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->exitSeekBarMode()V

    :cond_0
    return-void
.end method

.method public clearPendingDragScroll()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    return-void
.end method

.method protected disableRollNavigation()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorsRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mGyro:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorsRegistered:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v0, p0}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    :cond_1
    return-void
.end method

.method protected drawPageBackground(Lcom/sec/android/app/twlauncher/GLCanvas;F)V
    .locals 42

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Scene;->getWidth()I

    move-result v41

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Scene;->getHeight()I

    move-result v33

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLightingEffectShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    const-string v2, "highlightSurface"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/Launcher;->mPageHighlight:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderSurface(Ljava/lang/String;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    const-string v2, "highlightXMA"

    const/high16 v3, 0x3f00

    const/high16 v8, 0x3f00

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FF)V

    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->getWidth()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->getHeight()I

    move-result v37

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingLeft:I

    sub-int v2, v38, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingRight:I

    sub-int v35, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingTop:I

    sub-int v2, v37, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingBottom:I

    sub-int v34, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->getScaleFactor()F

    move-result v36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingLeft:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v4, v2, v36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingTop:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v5, v2, v36

    move/from16 v0, v41

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingRight:I

    int-to-float v3, v3

    mul-float v3, v3, v36

    add-float v39, v2, v3

    move/from16 v0, v33

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingBottom:I

    int-to-float v3, v3

    mul-float v3, v3, v36

    add-float v40, v2, v3

    move/from16 v0, v41

    move/from16 v1, v35

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingLeft:I

    int-to-float v2, v2

    move/from16 v0, v38

    int-to-float v3, v0

    div-float v10, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingRight:I

    sub-int v2, v38, v2

    int-to-float v2, v2

    move/from16 v0, v38

    int-to-float v3, v0

    div-float v20, v2, v3

    const/4 v6, 0x0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingTop:I

    int-to-float v2, v2

    move/from16 v0, v37

    int-to-float v3, v0

    div-float v11, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingBottom:I

    sub-int v2, v37, v2

    int-to-float v2, v2

    move/from16 v0, v37

    int-to-float v3, v0

    div-float v30, v2, v3

    const/4 v7, 0x0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v26, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, v2, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v13, v2, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const/16 v19, 0x0

    move-object/from16 v12, p1

    move v14, v6

    move v15, v5

    move/from16 v17, v7

    move/from16 v18, v10

    move/from16 v21, v11

    invoke-virtual/range {v12 .. v21}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v15, v2, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    move-object/from16 v14, p1

    move/from16 v17, v5

    move/from16 v18, v39

    move/from16 v19, v7

    move/from16 v23, v11

    invoke-virtual/range {v14 .. v23}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v0, v2, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    move-object/from16 v22, v0

    const/16 v27, 0x0

    move-object/from16 v21, p1

    move/from16 v23, v4

    move/from16 v24, v7

    move/from16 v25, v6

    move/from16 v28, v11

    move/from16 v29, v10

    invoke-virtual/range {v21 .. v30}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v15, v2, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const/high16 v22, 0x3f80

    move-object/from16 v14, p1

    move/from16 v17, v7

    move/from16 v18, v39

    move/from16 v19, v26

    move/from16 v21, v11

    move/from16 v23, v30

    invoke-virtual/range {v14 .. v23}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v0, v2, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    move-object/from16 v24, v0

    const/16 v29, 0x0

    const/high16 v32, 0x3f80

    move-object/from16 v23, p1

    move/from16 v25, v4

    move/from16 v27, v6

    move/from16 v28, v40

    move/from16 v31, v10

    invoke-virtual/range {v23 .. v32}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v0, v2, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    move-object/from16 v24, v0

    const/high16 v32, 0x3f80

    move-object/from16 v23, p1

    move/from16 v25, v6

    move/from16 v27, v16

    move/from16 v28, v40

    move/from16 v29, v10

    move/from16 v31, v20

    invoke-virtual/range {v23 .. v32}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v15, v2, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const/high16 v22, 0x3f80

    const/high16 v23, 0x3f80

    move-object/from16 v14, p1

    move/from16 v17, v26

    move/from16 v18, v39

    move/from16 v19, v40

    move/from16 v21, v30

    invoke-virtual/range {v14 .. v23}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFrameExpandX:I

    int-to-float v2, v2

    move/from16 v0, v38

    int-to-float v3, v0

    div-float v20, v2, v3

    move/from16 v10, v20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFrameExpandX:I

    int-to-float v2, v2

    mul-float v2, v2, v36

    add-float v6, v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFrameExpandX:I

    sub-int v2, v38, v2

    int-to-float v2, v2

    mul-float v2, v2, v36

    sub-float v16, v39, v2

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFrameExpandY:I

    int-to-float v2, v2

    move/from16 v0, v37

    int-to-float v3, v0

    div-float v30, v2, v3

    move/from16 v11, v30

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFrameExpandY:I

    int-to-float v2, v2

    mul-float v2, v2, v36

    add-float v7, v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFrameExpandY:I

    sub-int v2, v37, v2

    int-to-float v2, v2

    mul-float v2, v2, v36

    sub-float v26, v40, v2

    goto/16 :goto_1
.end method

.method protected drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Scene;->drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;FI)V

    return-void
.end method

.method protected drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;FI)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, v1, Lcom/sec/android/app/twlauncher/Launcher;->mPageOutline:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Scene;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Scene;->getHeight()I

    move-result v12

    const/4 v13, 0x6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingLeft:I

    neg-int v14, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingTop:I

    neg-int v1, v1

    add-int v16, v1, p3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingRight:I

    add-int v15, v17, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingBottom:I

    add-int/2addr v1, v12

    sub-int v11, v1, p3

    add-int/lit8 v1, v14, 0x6

    int-to-float v3, v1

    add-int/lit8 v1, v16, -0x6

    int-to-float v4, v1

    add-int/lit8 v1, v15, -0x6

    int-to-float v5, v1

    add-int/lit8 v1, v16, 0x6

    int-to-float v6, v1

    const/high16 v7, 0x3f00

    const/4 v8, 0x0

    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f00

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    add-int/lit8 v1, v14, 0x6

    int-to-float v3, v1

    add-int/lit8 v1, v11, -0x6

    int-to-float v4, v1

    add-int/lit8 v1, v15, -0x6

    int-to-float v5, v1

    add-int/lit8 v1, v11, 0x6

    int-to-float v6, v1

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    add-int/lit8 v1, v14, -0x6

    int-to-float v3, v1

    add-int/lit8 v1, v16, 0x6

    int-to-float v4, v1

    add-int/lit8 v1, v14, 0x6

    int-to-float v5, v1

    add-int/lit8 v1, v11, -0x6

    int-to-float v6, v1

    const/4 v7, 0x0

    const/high16 v8, 0x3f00

    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f00

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    add-int/lit8 v1, v15, -0x6

    int-to-float v3, v1

    add-int/lit8 v1, v16, 0x6

    int-to-float v4, v1

    add-int/lit8 v1, v15, 0x6

    int-to-float v5, v1

    add-int/lit8 v1, v11, -0x6

    int-to-float v6, v1

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f00

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    add-int/lit8 v1, v14, -0x6

    int-to-float v3, v1

    add-int/lit8 v1, v16, -0x6

    int-to-float v4, v1

    add-int/lit8 v1, v14, 0x6

    int-to-float v5, v1

    add-int/lit8 v1, v16, 0x6

    int-to-float v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f00

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    add-int/lit8 v1, v15, -0x6

    int-to-float v3, v1

    add-int/lit8 v1, v16, -0x6

    int-to-float v4, v1

    add-int/lit8 v1, v15, 0x6

    int-to-float v5, v1

    add-int/lit8 v1, v16, 0x6

    int-to-float v6, v1

    const/high16 v7, 0x3f00

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f00

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    add-int/lit8 v1, v14, -0x6

    int-to-float v3, v1

    add-int/lit8 v1, v11, -0x6

    int-to-float v4, v1

    add-int/lit8 v1, v14, 0x6

    int-to-float v5, v1

    add-int/lit8 v1, v11, 0x6

    int-to-float v6, v1

    const/4 v7, 0x0

    const/high16 v8, 0x3f00

    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    add-int/lit8 v1, v15, -0x6

    int-to-float v3, v1

    add-int/lit8 v1, v11, -0x6

    int-to-float v4, v1

    add-int/lit8 v1, v15, 0x6

    int-to-float v5, v1

    add-int/lit8 v1, v11, 0x6

    int-to-float v6, v1

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    return-void
.end method

.method protected enableRollNavigation()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_2

    :cond_0
    const-string v0, "MotionEngine"

    const-string v1, "motion setting is turned off"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Scene;->mIsMotionEngineEnabled:Z

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDy:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDx:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning_sensitivity"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x28

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    const-string v0, "MotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRollNavigation : mPanningBasis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected fadeEdges(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->isHorizontalFadingEdgeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getCylinderAnimationFactor()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getWidth()I

    move-result v4

    rem-int/2addr v3, v4

    if-eqz v3, :cond_1

    :cond_0
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v3, p1, p2, v1, v2}, Lcom/sec/android/app/twlauncher/GLScrollBars;->fadeEdges(Lcom/sec/android/app/twlauncher/GLCanvas;I[F[I)Z

    move-result v0

    :cond_1
    return v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getCurrentScaledRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    return v0
.end method

.method protected getCylinderAnimationFactor()F
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    const/high16 v2, 0x3f80

    add-float v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method protected getFastScrollFactor()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method getPageIndicatorArea(II)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->getTouchPage(II)I

    move-result v0

    goto :goto_0
.end method

.method public getScreenCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected getTopMostScaledRect()Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getTopMostScene()Lcom/sec/android/app/twlauncher/Scene;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getTopMostScene()Lcom/sec/android/app/twlauncher/Scene;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    goto :goto_0
.end method

.method protected isCylinderAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

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

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 12

    const-wide/16 v10, 0x0

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v3

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDx:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDx:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDy:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDy:I

    const/4 v4, 0x5

    int-to-double v0, v2

    const/4 v5, 0x5

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDx:I

    if-nez v6, :cond_2

    const-wide/16 v0, 0x0

    :cond_1
    :goto_1
    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delta = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " acc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    cmpl-double v6, v6, v10

    if-lez v6, :cond_4

    iget-wide v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    cmpl-double v6, v0, v10

    if-lez v6, :cond_3

    const/4 v6, -0x1

    :goto_2
    int-to-double v9, v6

    mul-double/2addr v9, v0

    add-double v6, v7, v9

    iput-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDy:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDx:I

    div-int/2addr v6, v7

    if-le v6, v5, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    add-double/2addr v6, v0

    iput-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    neg-double v8, v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_7

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    :cond_5
    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Scene;->snapToScreen(I)V

    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : panning left from page"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v6, "MotionEngine"

    const-string v7, "onMotionListener : accumulated delta is not considered, skip adding"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    sub-double/2addr v6, v0

    iput-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    goto/16 :goto_0

    :cond_7
    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    :cond_8
    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    sub-double/2addr v6, v8

    iput-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Scene;->snapToScreen(I)V

    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : panning right from page"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string v6, "MotionEngine"

    const-string v7, "onMotionListener : accumulated delta is not considered, skip adding"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    sub-double/2addr v6, v0

    iput-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mGyro:Landroid/hardware/Sensor;

    if-eq v1, v2, :cond_1

    const-string v1, "Scene"

    const-string v2, "Unexpected sensor in onSensorChanged callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccc

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    const-string v1, "Scene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Angular Velocity (y) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getTopMostScene()Lcom/sec/android/app/twlauncher/Scene;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    const/high16 v2, 0x4120

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Scene;->panRight()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    const/high16 v2, -0x3ee0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Scene;->panLeft()V

    goto :goto_0
.end method

.method protected panLeft()V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Scene;->panStart(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->getRemaining()F

    move-result v0

    const/high16 v1, -0x3dc0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->extend(FJ)V

    goto :goto_0
.end method

.method protected panRight()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Scene;->panStart(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-ge v1, v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->getRemaining()F

    move-result v1

    const/high16 v2, 0x4240

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->extend(FJ)V

    goto :goto_0
.end method

.method protected panStart(I)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setDefaultDuration(J)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Scene;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_1
    iput p1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getWidth()I

    move-result v2

    mul-int v1, p1, v2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->invalidate()V

    :cond_2
    return-void
.end method

.method public requestFrame()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 4

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    if-eq v2, p2, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    iput p1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/sec/android/app/twlauncher/Scene;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->requestFrame()V

    :cond_1
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-void
.end method

.method protected setFastScrollFactor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLightingEffectShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    return-void
.end method

.method public setPageOnDragOver(II)V
    .locals 0

    return-void
.end method

.method public setPendingDragScroll(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollPage:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    return-void
.end method

.method public snapToScreen(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Scene;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    return-void
.end method

.method protected snapToScreen(Landroid/view/animation/Interpolator;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Scene;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    return-void
.end method

.method protected abstract snapToScreen(Landroid/view/animation/Interpolator;II)V
.end method
