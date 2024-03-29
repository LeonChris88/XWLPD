.class public Lcom/sec/android/app/twlauncher/ScalarAnimator;
.super Ljava/lang/Object;
.source "ScalarAnimator.java"


# instance fields
.field private mCurrent:F

.field private mDefaultDuration:J

.field private mDelta:F

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mInverseDuration:F

.field private mIsRunning:Z

.field private mStart:F

.field private mStartTime:J

.field private mStop:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    return-void
.end method

.method public constructor <init>(JF)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    iput p3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    iput p3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    return-void
.end method

.method public constructor <init>(JLandroid/view/animation/Interpolator;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    move-result v0

    return v0
.end method

.method public abort(F)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    iput p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iput p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    return v0
.end method

.method public extend(FJ)V
    .locals 4

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    :cond_3
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    goto :goto_0

    :cond_4
    const/high16 v0, 0x3f80

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInverseDuration:F

    goto :goto_0
.end method

.method public get()F
    .locals 2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get(J)F

    move-result v0

    return v0
.end method

.method public get(J)F
    .locals 7

    const-wide/16 v5, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStartTime:J

    sub-long v0, p1, v3

    cmp-long v3, v0, v5

    if-gtz v3, :cond_0

    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStartTime:J

    const-wide/16 v0, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    iput v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    :cond_0
    iget-wide v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    iget v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iput v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    :cond_1
    :goto_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    return v3

    :cond_2
    cmp-long v3, v0, v5

    if-lez v3, :cond_1

    long-to-float v3, v0

    iget v4, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInverseDuration:F

    mul-float v2, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    :cond_3
    iget v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    iget v4, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    goto :goto_0
.end method

.method public getRemaining()F
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    return v0
.end method

.method public setDefaultDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public start(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    return-void
.end method

.method public start(FFJ)V
    .locals 4

    const-wide/16 v2, 0x0

    iput p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    iput p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    iput p2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iput-wide p3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    return-void

    :cond_1
    const/high16 v0, 0x3f80

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInverseDuration:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStartTime:J

    goto :goto_0
.end method

.method public to(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    :cond_1
    return-void
.end method

.method public to(FJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    :cond_1
    return-void
.end method
