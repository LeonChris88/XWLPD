.class public Lcom/android/internal/widget/PenGestureView;
.super Landroid/view/View;
.source "PenGestureView.java"


# static fields
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x64

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PenGesture"

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mBootCompleted:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDisplay:Landroid/view/Display;

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mDoubleTapSlopSquare:I

.field mHandler:Landroid/os/Handler;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsDoubleTapping:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mMovingSlop:I

.field mPenDoubleTap:Ljava/lang/Runnable;

.field private mPenGestureEventDispatchThread:Ljava/lang/Thread;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mPressed:Z

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mTheshold:Z

.field private mTouchSlop:I

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/widget/PenGestureView;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/widget/PenGestureView;->TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/widget/PenGestureView;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/android/internal/widget/PenGestureView;->mX:F

    iput v4, p0, Lcom/android/internal/widget/PenGestureView;->mY:F

    iput-boolean v3, p0, Lcom/android/internal/widget/PenGestureView;->mPressed:Z

    iput-boolean v3, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    iput-boolean v3, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    iput-boolean v3, p0, Lcom/android/internal/widget/PenGestureView;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v3, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/widget/PenGestureView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/PenGestureView$3;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v3, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/internal/widget/PenGestureView$4;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/PenGestureView$4;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v3, p0, Lcom/android/internal/widget/PenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/internal/widget/PenGestureView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/PenGestureView$1;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v3, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/PenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    mul-int v3, v1, v1

    iput v3, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapSlopSquare:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/PenGestureView;->mTouchSlop:I

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/widget/PenGestureView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/PenGestureView$2;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/PenGestureView;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/internal/widget/PenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/PenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    :goto_0
    iput v3, p0, Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/PenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/PenGestureView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mPressed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->isSecureUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->isLockScreenShowing()Z

    move-result v0

    return v0
.end method

.method private handleBootCompleted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    return-void
.end method

.method private injectionKeyEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PenGesture"

    const-string/jumbo v1, "send interrupt to previous mPenGestureEventDispatchThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/widget/PenGestureView$5;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/PenGestureView$5;-><init>(Lcom/android/internal/widget/PenGestureView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/internal/widget/PenGestureView;->mAlwaysInBiggerTapRegion:Z

    if-nez v6, :cond_1

    const-string v6, "PenGesture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConsideredDoubleTap() : mAlwaysInBiggerTapRegion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mAlwaysInBiggerTapRegion:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    sget v6, Lcom/android/internal/widget/PenGestureView;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    const-string v6, "PenGesture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConsideredDoubleTap() : DoubleTab Time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    sub-int v0, v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int v1, v6, v7

    mul-int v6, v0, v0

    mul-int v7, v1, v1

    add-int v4, v6, v7

    const-string v6, "PenGesture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConsideredDoubleTap() : Result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", deltaX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", deltaY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapSlopSquare:I

    if-ge v4, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private isLockScreenShowing()Z
    .locals 3

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "PenGesture"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecureUnlockEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "PenGesture"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPenEvent(Landroid/view/MotionEvent;)V
    .locals 13

    const/16 v12, 0x64

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    if-ne v7, v8, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    if-ne v7, v8, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput v5, p0, Lcom/android/internal/widget/PenGestureView;->mX:F

    iput v6, p0, Lcom/android/internal/widget/PenGestureView;->mY:F

    iput-boolean v11, p0, Lcom/android/internal/widget/PenGestureView;->mPressed:Z

    iput-boolean v9, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v7, v8, p1}, Lcom/android/internal/widget/PenGestureView;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-boolean v11, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    const-string v7, "PenGesture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPenEvent(MotionEvent.ACTION_DOWN) : mIsDoubleTapping = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", post(mPenDoubleTap)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string v7, "PenGesture"

    const-string v8, "addPenEvent(MotionEvent.ACTION_DOWN) : postDelayed(mPenLongPress)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    sget v9, Lcom/android/internal/widget/PenGestureView;->LONGPRESS_TIMEOUT:I

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iput-boolean v11, p0, Lcom/android/internal/widget/PenGestureView;->mAlwaysInBiggerTapRegion:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v7, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    if-eqz v7, :cond_3

    const-string v7, "PenGesture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPenEvent(MotionEvent.ACTION_MOVE) : mIsDoubleTapping is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Ignore Move event."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget v7, p0, Lcom/android/internal/widget/PenGestureView;->mX:F

    sub-float/2addr v7, v5

    float-to-int v3, v7

    iget v7, p0, Lcom/android/internal/widget/PenGestureView;->mY:F

    sub-float/2addr v7, v6

    float-to-int v4, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v7, p0, Lcom/android/internal/widget/PenGestureView;->mTouchSlop:I

    if-gt v0, v7, :cond_4

    iget v7, p0, Lcom/android/internal/widget/PenGestureView;->mTouchSlop:I

    if-le v1, v7, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v9, p0, Lcom/android/internal/widget/PenGestureView;->mAlwaysInBiggerTapRegion:Z

    :cond_5
    if-gtz v3, :cond_6

    if-lez v4, :cond_0

    :cond_6
    if-ge v1, v12, :cond_7

    if-le v0, v1, :cond_7

    iget v7, p0, Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I

    if-lt v3, v7, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    if-nez v7, :cond_0

    const-string v7, "PenGesture"

    const-string/jumbo v8, "onTouchEvent() : Threshold is reched!!! Back key"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V

    goto/16 :goto_0

    :cond_7
    if-ge v0, v12, :cond_0

    if-ge v0, v1, :cond_0

    iget v7, p0, Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I

    if-lt v4, v7, :cond_8

    iget-boolean v7, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    if-nez v7, :cond_8

    const-string v7, "PenGesture"

    const-string/jumbo v8, "onTouchEvent() : Threshold is reched!!! Menu Key"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    const/16 v7, 0x52

    invoke-direct {p0, v7}, Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V

    goto/16 :goto_0

    :cond_8
    iget v7, p0, Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I

    neg-int v7, v7

    if-gt v4, v7, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    if-nez v7, :cond_0

    const-string v7, "PenGesture"

    const-string/jumbo v8, "onTouchEvent() : Threshold is reched!!! Home Key"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v7, "PenGesture"

    const-string/jumbo v8, "onTouchEvent(ACTION_UP or ACTION_CANCEL) : RemoveCallbacks(mPenLongPress)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    iput v10, p0, Lcom/android/internal/widget/PenGestureView;->mX:F

    iput v10, p0, Lcom/android/internal/widget/PenGestureView;->mY:F

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    iput-boolean v9, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isBootCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PenGestureView;->addPenEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method
