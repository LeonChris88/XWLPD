.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnShapeGestureListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x2

.field static final SHAPE_LOG_ON:Z = false

.field private static final SHOW_PRESS:I = 0x1

.field private static final SWEEP_LEFT:I = 0x2

.field private static final SWEEP_RIGHT:I = 0x1

.field static final TAG:Ljava/lang/String; = "GestureDetector"

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I

.field private static velocityType:I


# instance fields
.field AngleTemp:[F

.field InitFlag:I

.field InitX:F

.field InitY:F

.field private LiftTapStep1:Z

.field private LiftTapStep2:Z

.field private LiftTapStep3:Z

.field Nd:[I

.field SSsd:[[F

.field Sad:[[F

.field Sed:[[F

.field Ssd:[[F

.field SvarX:F

.field SvarY:F

.field SweepDirection:I

.field Sxd:[[F

.field Syd:[[F

.field private final TOUCH_DISABLE:I

.field private final TOUCH_ENABLE:I

.field TouchCnt:I

.field private bHandTouchCancel:Z

.field private bInitHandTouch:Z

.field private bLiftTapCancel:Z

.field dist1:F

.field g_Diffx:F

.field g_InitTwistAngle:F

.field g_MaxTouchCnt:I

.field g_SDCnt:I

.field g_SmeanX:F

.field g_SmeanXpre:F

.field g_SweepReverseSum:F

.field g_TwistCnt:I

.field g_bInitTwist:Z

.field private g_bPalmRejection:Z

.field g_bSizeDecreased:Z

.field g_bSweepReady:Z

.field g_bVarXBig:Z

.field g_maxSS1:F

.field g_maxSS2:F

.field g_preSmeanX:F

.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mBiggerTouchSlopSquare:I

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mHandTouched:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreMultitouch:Z

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLiftTapDown:Z

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPalmDown:Z

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

.field private mStillDown:Z

.field private mSweepDown:Z

.field private mTouchSlopSquare:I

.field private mTwistDown:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field medFlag:Z

.field medSize:F

.field medX:F

.field medY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    const/4 v0, 0x0

    sput v0, Landroid/view/GestureDetector;->velocityType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Landroid/view/GestureDetector;->mBiggerTouchSlopSquare:I

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mPalmDown:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mTwistDown:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mSweepDown:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mHandTouched:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    iput-boolean v6, p0, Landroid/view/GestureDetector;->bInitHandTouch:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep3:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mLiftTapDown:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    iput v6, p0, Landroid/view/GestureDetector;->TOUCH_DISABLE:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/GestureDetector;->TOUCH_ENABLE:I

    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sxd:[[F

    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Syd:[[F

    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Ssd:[[F

    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sed:[[F

    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sad:[[F

    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->SSsd:[[F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/GestureDetector;->Nd:[I

    iput v3, p0, Landroid/view/GestureDetector;->SvarX:F

    iput v3, p0, Landroid/view/GestureDetector;->SvarY:F

    iput v2, p0, Landroid/view/GestureDetector;->TouchCnt:I

    iput v2, p0, Landroid/view/GestureDetector;->InitFlag:I

    iput v3, p0, Landroid/view/GestureDetector;->dist1:F

    iput v3, p0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    new-array v0, v4, [F

    iput-object v0, p0, Landroid/view/GestureDetector;->AngleTemp:[F

    iput v2, p0, Landroid/view/GestureDetector;->g_TwistCnt:I

    iput v2, p0, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    iput-boolean v6, p0, Landroid/view/GestureDetector;->g_bInitTwist:Z

    iput-boolean v6, p0, Landroid/view/GestureDetector;->g_bSweepReady:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/GestureDetector;->g_SDCnt:I

    iput v2, p0, Landroid/view/GestureDetector;->SweepDirection:I

    iput v3, p0, Landroid/view/GestureDetector;->InitX:F

    iput v3, p0, Landroid/view/GestureDetector;->InitY:F

    iput v3, p0, Landroid/view/GestureDetector;->g_SmeanXpre:F

    iput v3, p0, Landroid/view/GestureDetector;->g_SmeanX:F

    iput v3, p0, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    iput v3, p0, Landroid/view/GestureDetector;->g_Diffx:F

    iput-boolean v2, p0, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->g_bVarXBig:Z

    iput v3, p0, Landroid/view/GestureDetector;->g_maxSS1:F

    iput v3, p0, Landroid/view/GestureDetector;->g_maxSS2:F

    iput v3, p0, Landroid/view/GestureDetector;->g_preSmeanX:F

    iput v3, p0, Landroid/view/GestureDetector;->medX:F

    iput v3, p0, Landroid/view/GestureDetector;->medY:F

    iput v3, p0, Landroid/view/GestureDetector;->medSize:F

    iput-boolean v6, p0, Landroid/view/GestureDetector;->medFlag:Z

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz p3, :cond_2

    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    :goto_1
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :cond_0
    invoke-direct {p0, p1, p4}, Landroid/view/GestureDetector;->init(Landroid/content/Context;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/GestureDetector;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1

    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/GestureDetector;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 5

    iget-object v3, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "OnGestureListener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    iput-boolean p2, p0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    :goto_0
    mul-int v3, v2, v2

    iput v3, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    mul-int v3, v1, v1

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget v5, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getVelocityType(Landroid/view/View;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVelocityPolynomialType()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->velocityType:I

    :cond_0
    sget v0, Landroid/view/GestureDetector;->velocityType:I

    return v0
.end method

.method public isLongpressEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v10, 0x0

    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    return v10

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const v19, 0xff00

    and-int v19, v19, v4

    shr-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_4

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    :cond_6
    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    sget v23, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    sget v21, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v12, v19, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastMotionY:F

    move/from16 v19, v0

    sub-float v13, v19, v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v7, v0

    mul-int v19, v6, v6

    mul-int v20, v7, v7

    add-int v8, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v8, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v12, v13}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mBiggerTouchSlopSquare:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v8, v0, :cond_2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_0

    :cond_d
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-gez v19, :cond_e

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v12, v13}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    goto/16 :goto_0

    :pswitch_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    :cond_10
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    sget v19, Landroid/view/GestureDetector;->velocityType:I

    if-nez v19, :cond_15

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-gtz v19, :cond_14

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_f

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v15, v3}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    goto/16 :goto_3

    :cond_15
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v16

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getMonomialYVelocity()F

    move-result v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-gtz v19, :cond_16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_f

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v15, v3}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    goto/16 :goto_3

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent_ex(Landroid/view/MotionEvent;)Z
    .locals 27

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    if-ge v0, v5, :cond_1

    const/16 v18, 0x1

    :goto_1
    if-ltz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :cond_1
    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v0, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v22

    const/high16 v23, 0x41f0

    mul-float v22, v22, v23

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAngle(I)F

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getEccen(I)F

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSumSize(I)F

    move-result v22

    aput v22, v20, v21

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v5, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->TouchCnt:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget v22, v22, v23

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget v22, v22, v23

    aput v22, v20, v21

    :cond_3
    const/16 v18, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v12, v12, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v13, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v11, v11, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v10, v10, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v6, v6, v20

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v8, v12, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v9, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v7, v6, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aget v23, v23, v24

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x2

    aget v24, v24, v25

    sub-float v23, v23, v24

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x2

    aget v24, v24, v25

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x1

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    const/16 v26, 0x2

    aget v25, v25, v26

    sub-float v24, v24, v25

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->dist1:F

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitY:F

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SmeanXpre:F

    move-object/from16 v0, p0

    iput v8, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarX:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarY:F

    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v21, v0

    aget-object v21, v21, v18

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v21, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-float v22, v22, v8

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v21, v0

    aget-object v21, v21, v18

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v21, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-float v22, v22, v9

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarY:F

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x40e0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x41c8

    cmpl-float v20, v20, v21

    if-lez v20, :cond_7

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Palm Rejection 1 - size:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " eccen:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x40e0

    cmpl-float v20, v20, v21

    if-gez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x40e0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v20, v0

    const/high16 v21, 0x4348

    cmpg-float v20, v20, v21

    if-gez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x41f0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x41f0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_9

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Palm Rejection 2 -  a[0]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " a[1]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " e[0]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " e[1]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " eccen:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " SvarX:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x41f0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_a

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Palm Rejection 3 - size:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalmRejection(I)Z

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_e

    const/high16 v20, 0x4270

    cmpl-float v20, v7, v20

    if-gtz v20, :cond_d

    const/high16 v20, 0x4270

    cmpl-float v20, v11, v20

    if-lez v20, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v20, v0

    const/high16 v21, 0x4396

    cmpl-float v20, v20, v21

    if-lez v20, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarY:F

    move/from16 v20, v0

    const/high16 v21, 0x4396

    cmpl-float v20, v20, v21

    if-lez v20, :cond_e

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mPalmDown:Z

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    const-string v20, "GestureDetector"

    const-string v21, "[Surface Touch Event] Palm touch"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    move-result v17

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS1:F

    move/from16 v20, v0

    cmpg-float v20, v20, v11

    if-gez v20, :cond_10

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/GestureDetector;->g_maxSS1:F

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS2:F

    move/from16 v20, v0

    cmpg-float v20, v20, v7

    if-gez v20, :cond_11

    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/GestureDetector;->g_maxSS2:F

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v20

    const/high16 v21, 0x4348

    cmpl-float v20, v20, v21

    if-lez v20, :cond_2b

    const/16 v14, 0x28

    :goto_6
    if-nez v16, :cond_12

    move-object/from16 v0, p0

    iput v8, v0, Landroid/view/GestureDetector;->g_preSmeanX:F

    :cond_12
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_Diffx:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_preSmeanX:F

    move/from16 v21, v0

    sub-float v21, v8, v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_Diffx:F

    move-object/from16 v0, p0

    iput v8, v0, Landroid/view/GestureDetector;->g_preSmeanX:F

    :cond_13
    const/high16 v20, 0x4000

    cmpl-float v20, v10, v20

    if-ltz v20, :cond_16

    int-to-float v0, v14

    move/from16 v20, v0

    cmpl-float v20, v7, v20

    if-gtz v20, :cond_14

    int-to-float v0, v14

    move/from16 v20, v0

    cmpl-float v20, v11, v20

    if-lez v20, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    const/high16 v21, 0x4416

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    const/high16 v21, 0x4348

    cmpg-float v20, v20, v21

    if-gez v20, :cond_16

    :cond_15
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    const/high16 v21, 0x4416

    cmpl-float v20, v20, v21

    if-lez v20, :cond_2d

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SweepDirection:I

    :cond_16
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_17

    const/high16 v20, 0x41a0

    cmpg-float v20, v7, v20

    if-gez v20, :cond_17

    const/high16 v20, 0x41a0

    cmpg-float v20, v11, v20

    if-gez v20, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SDCnt:I

    move/from16 v20, v0

    if-gez v20, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SDCnt:I

    :cond_17
    if-eqz v16, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    :cond_18
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v20, v0

    const/high16 v21, 0x43c8

    cmpl-float v20, v20, v21

    if-lez v20, :cond_19

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bVarXBig:Z

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x3f80

    cmpl-float v20, v20, v21

    if-lez v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bInitTwist:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bInitTwist:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    const/high16 v21, 0x42b4

    cmpl-float v20, v20, v21

    if-nez v20, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    :cond_1c
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_TwistCnt:I

    move/from16 v20, v0

    if-nez v20, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v4, v20, v21

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    sub-float v3, v20, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_TwistCnt:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_TwistCnt:I

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x41a0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:F

    move/from16 v20, v0

    const/high16 v21, 0x42f0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_1d

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v17

    const/16 v20, 0x0

    cmpl-float v20, v3, v20

    if-lez v20, :cond_38

    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Twist - Right, DiffAngle:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    move/from16 v20, v0

    if-nez v20, :cond_20

    const/high16 v20, 0x4270

    cmpl-float v20, v11, v20

    if-gtz v20, :cond_1f

    const/high16 v20, 0x4270

    cmpl-float v20, v7, v20

    if-lez v20, :cond_20

    :cond_1f
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarY:F

    move/from16 v21, v0

    add-float v20, v20, v21

    const v21, 0x453b8000

    cmpl-float v20, v20, v21

    if-lez v20, :cond_21

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mHandTouched:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bInitHandTouch:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onHandTouched(Landroid/view/MotionEvent;)Z

    move-result v17

    const-string v20, "GestureDetector"

    const-string v21, "[Surface Touch Event] HandTouched"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bInitHandTouch:Z

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mLiftTapDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    move/from16 v20, v0

    if-nez v20, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x43fa

    cmpg-float v20, v20, v21

    if-ltz v20, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x447a

    cmpg-float v20, v20, v21

    if-gez v20, :cond_24

    :cond_23
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    move/from16 v20, v0

    if-nez v20, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    const/high16 v21, 0x442f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move/from16 v20, v0

    const v21, 0x44898000

    cmpl-float v20, v20, v21

    if-lez v20, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, 0x4248

    cmpl-float v20, v20, v21

    if-lez v20, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, 0x42c8

    cmpl-float v20, v20, v21

    if-lez v20, :cond_25

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep1:Z

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    move/from16 v20, v0

    if-nez v20, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-gez v20, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_28

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->medFlag:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medSize:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->medFlag:Z

    :cond_27
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep2:Z

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-float v21, v21, v22

    add-float v20, v20, v21

    const/high16 v21, -0x4080

    cmpg-float v20, v20, v21

    if-gez v20, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medSize:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, -0x3f60

    cmpg-float v20, v20, v21

    if-gez v20, :cond_29

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mLiftTapDown:Z

    const-string v20, "GestureDetector"

    const-string v21, "[Surface Touch Event] Lift tap Event"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onLiftTap(Landroid/view/MotionEvent;)Z

    move-result v17

    :cond_29
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    :cond_2a
    :goto_c
    const/16 v20, 0x0

    return v20

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v20

    const/high16 v21, 0x42c8

    cmpl-float v20, v20, v21

    if-lez v20, :cond_2c

    const/16 v14, 0x23

    goto/16 :goto_6

    :cond_2c
    const/16 v14, 0x1e

    goto/16 :goto_6

    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    const/high16 v21, 0x4348

    cmpg-float v20, v20, v21

    if-gez v20, :cond_16

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SweepDirection:I

    goto/16 :goto_7

    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    goto/16 :goto_8

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x4334

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    add-float v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_9

    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_9

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_9

    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, 0x42b4

    cmpg-float v20, v20, v21

    if-gez v20, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_9

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x4334

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    add-float v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_9

    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, -0x3d4c

    cmpl-float v20, v20, v21

    if-lez v20, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_9

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x4334

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    aput v22, v20, v21

    goto/16 :goto_9

    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_TwistCnt:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-float v20, v20, v21

    const/high16 v21, 0x4000

    div-float v4, v20, v21

    goto/16 :goto_a

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    add-float v20, v20, v21

    const/high16 v21, 0x4040

    div-float v4, v20, v21

    goto/16 :goto_a

    :cond_38
    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Twist - Left, DiffAngle:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a

    goto/16 :goto_c

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_39

    const-string v20, "GestureDetector"

    const-string v21, "[Surface Touch Event] Palm touch up"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    :cond_39
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SDCnt:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3a

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    move/from16 v20, v0

    const/high16 v21, 0x4248

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_Diffx:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x43af

    cmpg-float v20, v20, v21

    if-ltz v20, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bVarXBig:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3c

    :cond_3b
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3e

    const/high16 v20, 0x437a

    cmpg-float v20, v8, v20

    if-gez v20, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    move-result v17

    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Palm Sweep - RIGHT, ss1:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS1:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ss2:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS2:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_d
    const/16 v19, 0x0

    :goto_e
    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_40

    const/16 v18, 0x0

    :goto_f
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    const/16 v21, 0x0

    aput v21, v20, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    const/16 v21, 0x0

    aput v21, v20, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    const/16 v21, 0x0

    aput v21, v20, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    const/16 v21, 0x0

    aput v21, v20, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    const/16 v21, 0x0

    aput v21, v20, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3d

    const v20, 0x44098000

    cmpl-float v20, v8, v20

    if-lez v20, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-interface/range {v20 .. v21}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    move-result v17

    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Palm Sweep - LEFT, ss1:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS1:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ss2:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS2:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_3f
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_e

    :cond_40
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->TouchCnt:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mPalmDown:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->dist1:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medX:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medY:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medSize:F

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->medFlag:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep1:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep2:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep3:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mLiftTapDown:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bInitHandTouch:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bInitTwist:Z

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSweepReady:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SmeanXpre:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SmeanX:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SDCnt:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SweepDirection:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_Diffx:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_TwistCnt:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_maxSS1:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_maxSS2:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_preSmeanX:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bVarXBig:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    const/16 v18, 0x0

    :goto_10
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v21, v20, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public setVelocityType(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    sput p2, Landroid/view/GestureDetector;->velocityType:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setVelocityPolynomialType(I)V

    :cond_0
    return-void
.end method
