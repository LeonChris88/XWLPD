.class public Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
.super Landroid/view/ViewGroup;
.source "GLSurfaceViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GLSurfaceCreatedNotifier;,
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;,
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;,
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mIsPortrait:Z

.field private static sOurTopLandscape:I

.field private static sOurTopPortrait:I

.field public static sTextureUploadLock:Ljava/lang/Object;

.field private static screenShotCounter:I


# instance fields
.field private IM4x4:[F

.field private M3x3:[F

.field private M4x4:[F

.field private RM4x4:[F

.field private SM4x4:[F

.field private TM4x4:[F

.field private mAllPreloaded:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockDispatchDraw:Z

.field private mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

.field private mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

.field private mDrawBlackFrame:Z

.field private mDrawRequested:Z

.field private mFixedHeight:I

.field private mFocalDepth:F

.field private mFrameDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mLastFrameStartTime:J

.field private mMyLoc:[I

.field private mPreloadOnNextFrame:Z

.field private mPreloadQueue:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mProjection:[F

.field private mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mSuspendDrawingUntilResume:Z

.field private mTransRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/TransRef;",
            ">;"
        }
    .end annotation
.end field

.field private mViewLoc:[I

.field private mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

.field private trans:Landroid/view/animation/Transformation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->screenShotCounter:I

    sput v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopPortrait:I

    sput v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopLandscape:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    const-string v0, "GLSurfaceViewGroup"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->SM4x4:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TM4x4:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->IM4x4:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->RM4x4:[F

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->trans:Landroid/view/animation/Transformation;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->SM4x4:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TM4x4:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->IM4x4:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->RM4x4:[F

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->trans:Landroid/view/animation/Transformation;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->refreshAllPreloaded()V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawWithoutViewRoot()V

    return-void
.end method

.method private calcProjectionMatrix()V
    .locals 12

    const/16 v11, 0x10

    const/4 v1, 0x0

    const/high16 v10, 0x4000

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v2

    int-to-float v9, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v2

    int-to-float v8, v2

    new-array v0, v11, [F

    mul-float v2, v9, v10

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    neg-float v2, v9

    div-float/2addr v2, v10

    div-float v3, v9, v10

    div-float v4, v8, v10

    neg-float v5, v8

    div-float/2addr v5, v10

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    mul-float/2addr v7, v10

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    const/16 v2, 0xa

    const/16 v3, 0xe

    const/4 v4, 0x0

    aput v4, v0, v3

    aput v4, v0, v2

    new-array v6, v11, [F

    invoke-static {v6, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    neg-float v2, v9

    div-float/2addr v2, v10

    neg-float v3, v8

    div-float/2addr v3, v10

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    neg-float v4, v4

    invoke-static {v6, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method private convertMatrix3x3To4x4([F[F)V
    .locals 11

    const/high16 v9, 0x3f00

    const/high16 v8, -0x4080

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TM4x4:[F

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->SM4x4:[F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->IM4x4:[F

    aget v3, p1, v1

    aput v3, v2, v1

    const/4 v3, 0x1

    const/4 v5, 0x3

    aget v5, p1, v5

    aput v5, v2, v3

    const/4 v3, 0x2

    aput v6, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x6

    aget v5, p1, v5

    aput v5, v2, v3

    const/4 v3, 0x4

    const/4 v5, 0x1

    aget v5, p1, v5

    aput v5, v2, v3

    const/4 v3, 0x5

    const/4 v5, 0x4

    aget v5, p1, v5

    aput v5, v2, v3

    const/4 v3, 0x6

    aput v6, v2, v3

    const/4 v3, 0x7

    const/4 v5, 0x7

    aget v5, p1, v5

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v6, v2, v3

    const/16 v3, 0x9

    aput v6, v2, v3

    const/16 v3, 0xa

    aput v7, v2, v3

    const/16 v3, 0xb

    aput v6, v2, v3

    const/16 v3, 0xc

    const/4 v5, 0x2

    aget v5, p1, v5

    aput v5, v2, v3

    const/16 v3, 0xd

    const/4 v5, 0x5

    aget v5, p1, v5

    aput v5, v2, v3

    const/16 v3, 0xe

    aput v6, v2, v3

    const/16 v3, 0xf

    const/16 v5, 0x8

    aget v5, p1, v5

    aput v5, v2, v3

    invoke-static {v4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    invoke-static {v4, v1, v3, v5, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-static {v4, v1, v7, v7, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-static {v4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v4, v1, v8, v8, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v3, 0x4000

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x4000

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v1, v3, v5, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    move-object v5, p2

    move v6, v1

    move-object v7, v4

    move v8, v1

    move-object v9, v0

    move v10, v1

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method private doDispatchDrawGL()V
    .locals 10

    const/high16 v5, 0x4000

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "Skipped drawing due to suspendDrawingUntilResume()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->isReady()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v5, "Skipped drawing because egl surface is not ready yet"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v5, "Surface is not valid, skip rendering, from 1st meet"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->requestRender()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    monitor-exit v4

    goto :goto_0

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->measure(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->layout(IIII)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    monitor-enter v4

    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->recycle()V

    :cond_4
    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v7

    invoke-direct {v3, v5, p0, v6, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;II)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->setProjectionMatrix([F)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {p0, v3, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    :cond_5
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    if-ne v3, v9, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->doPreload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    :cond_6
    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->hasNextPreloadable()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->postInvalidate()V

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->getSceneGraph()Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->setSceneGraph(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->getTransRefList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "Surface is not valid, skip rendering, from 2nd meet"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->setupEGL(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->onResume()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "Still not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_8
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "Now is valid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :try_start_4
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "timeout while waiting for GLThread to draw a frame"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_a
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->assertBalancedSaveRestore()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "InterruptedException caught while waiting for GLThread to draw a frame."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized doPreload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 3

    monitor-enter p0

    const/16 v0, 0x8

    :goto_0
    if-lez v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->hasNextPreloadable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getNextPreloadable()Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private drawWithoutViewRoot()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestLayout()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->doDispatchDrawGL()V

    goto :goto_0
.end method

.method public static drawableToRetainedSurface(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .locals 7

    if-nez p3, :cond_0

    move-object v3, p1

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Point;

    iget v4, p3, Landroid/graphics/Rect;->right:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-lez v4, :cond_1

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-lez v4, :cond_1

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-nez p1, :cond_2

    new-instance p1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    :cond_1
    :goto_1
    move-object v3, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public static findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized getNextPreloadable()Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized hasNextPreloadable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v0, v3, :cond_0

    move v1, v0

    :goto_0
    sub-int v5, v1, v2

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFixedHeight:I

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public static invalidateViewTree(Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private declared-synchronized refreshAllPreloaded()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static requestFrame(Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    :cond_0
    return-void
.end method


# virtual methods
.method applyAnimation(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;)Z
    .locals 9

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;->getAnimationGL()Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v8, Landroid/view/animation/Transformation;

    invoke-direct {v8}, Landroid/view/animation/Transformation;-><init>()V

    const/16 v2, 0x10

    new-array v0, v2, [F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3, v8}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v7

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->convertMatrix3x3To4x4([F[F)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->getProjectionMatrix()[F

    move-result-object v4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setProjectionMatrix([F)V

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    :goto_0
    return v7

    :cond_0
    move v7, v1

    goto :goto_0
.end method

.method public calculateCenterOffset(Landroid/view/View;[F)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f00

    if-eqz p2, :cond_0

    array-length v5, p2

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "offsets must be an array of two integers"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    add-float v1, v5, v6

    aput v8, p2, v9

    aput v8, p2, v10

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    instance-of v5, v2, Landroid/view/View;

    if-eqz v5, :cond_2

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    if-ne v4, p0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float v5, v0, v5

    aput v5, p2, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float v5, v1, v5

    aput v5, p2, v10

    const/4 v3, 0x1

    :cond_2
    return v3

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v1, v5

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0
.end method

.method public declared-synchronized cancelPreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public detectTransRefCollision(Landroid/graphics/Point;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->detectTransCollision(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TransRef;->mapXToOriginal(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TransRef;->mapYToOriginal(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTop()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v0

    int-to-float v3, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    invoke-virtual {p1, v6, v6, v6}, Landroid/graphics/Canvas;->drawRGB(III)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    goto :goto_0
.end method

.method drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v4, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->computeScroll()V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getLocationOnScreen([I)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    aget v5, v5, v7

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int v2, v5, v6

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    aget v6, v6, v8

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int v3, v5, v6

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v5, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    instance-of v5, v4, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    invoke-virtual {p0, p1, v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->applyAnimation(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;)Z

    move-result v5

    or-int/2addr v1, v5

    :cond_0
    check-cast v4, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    invoke-interface {v4, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_1

    :cond_3
    return v1
.end method

.method drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_4

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    instance-of v8, v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    add-int v8, p3, v6

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v9

    sub-int v3, v8, v9

    add-int v8, p4, v7

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v9

    sub-int v4, v8, v9

    int-to-float v8, v3

    int-to-float v9, v4

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    instance-of v8, v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    if-eqz v8, :cond_0

    move-object v8, v5

    check-cast v8, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    invoke-virtual {p0, p1, v8}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->applyAnimation(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;)Z

    move-result v8

    or-int/2addr v2, v8

    :cond_0
    move-object v8, v5

    check-cast v8, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    invoke-interface {v8, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v8

    or-int/2addr v2, v8

    if-eqz v0, :cond_1

    const/high16 v8, 0x3f80

    invoke-static {p1, v5, v8, v10, v10}, Lcom/sec/android/app/twlauncher/SamsungUtils;->drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    instance-of v8, v5, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    check-cast v5, Landroid/view/ViewGroup;

    add-int v8, p3, v6

    add-int v9, p4, v7

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v8

    or-int/2addr v2, v8

    goto :goto_1

    :cond_4
    return v2
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTransRefList()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isAbsRefEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->detectAbsCollision(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->setupEGL(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v7, 0x0

    sub-int v4, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    invoke-virtual {v0, v7, v7, v4, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-lez v4, :cond_2

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->calcProjectionMatrix()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x1020002

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-ge v7, v2, :cond_2

    const/4 v9, 0x1

    :goto_0
    sput-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ne v2, v9, :cond_4

    sget-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    if-eqz v9, :cond_3

    sget v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopPortrait:I

    :goto_1
    sub-int v3, v2, v9

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sget-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    if-eqz v9, :cond_0

    iget v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFixedHeight:I

    :cond_0
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_8

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    move v9, v10

    goto :goto_0

    :cond_3
    sget v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopLandscape:I

    goto :goto_1

    :cond_4
    sget-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    if-eqz v9, :cond_5

    sget v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopPortrait:I

    if-eqz v9, :cond_6

    :cond_5
    sget-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    if-nez v9, :cond_1

    sget v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopLandscape:I

    if-nez v9, :cond_1

    :cond_6
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    if-eqz v9, :cond_7

    sput v10, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopPortrait:I

    goto :goto_2

    :cond_7
    iget v9, v5, Landroid/graphics/Rect;->top:I

    sput v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopLandscape:I

    goto :goto_2

    :cond_8
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->suspendDrawingUntilResume()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->setSceneGraph(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    return-void
.end method

.method public processTransformRefEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->detectTransCollision(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->adjustEventToView(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestDraw()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$2;-><init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V
    .locals 5

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [F

    cmpg-float v2, p3, v3

    if-lez v2, :cond_0

    cmpl-float v2, p3, v4

    if-gtz v2, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->calculateCenterOffset(Landroid/view/View;[F)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p1, p4, p5, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    :goto_0
    return-void

    :cond_1
    sub-float v2, v4, p3

    div-float v1, v2, p3

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, p4

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, p5

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    neg-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method public setFrameDelay(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    return-void
.end method

.method public setupEGL(Z)V
    .locals 14

    const/4 v1, 0x5

    const/4 v13, 0x1

    const/4 v12, -0x1

    const/16 v6, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->onContextLost()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$1;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$1;-><init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    if-eqz p1, :cond_2

    sget-object v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v2, "setting 565 buffer for static wallpaper"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x6

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    :goto_0
    new-instance v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;-><init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0, v12, v12}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v4}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v13}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    return-void

    :cond_2
    sget-object v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v1, "setting 8888 buffer for live wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    move v7, v6

    move v8, v6

    move v9, v6

    move v10, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v13}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_1
.end method

.method public stopSuspendingDrawing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    return-void
.end method

.method public suspendDrawingUntilResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    return-void
.end method

.method public unblockDispatchDraw()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    :cond_0
    return-void
.end method

.method public declared-synchronized willBePreloaded(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
