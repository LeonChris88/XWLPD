.class public Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
.super Lcom/sec/android/app/twlauncher/QuickView;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final ADD_BTN_TAG:Ljava/lang/Object;

.field private static final kRowByColumnLayout:[[I


# instance fields
.field private mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

.field private mDefaultHomePos:I

.field private mDefaultScreen:I

.field private mDragShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

.field private mDragState:I

.field private mHorizontalGap:I

.field private mIsDefaultScreen:Z

.field private mIsEditMode:Z

.field private mIsHomeIsLastScreen:Z

.field private mIsRemoved:Z

.field private mIsSwapped:Z

.field private mIsSwappedPosition:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOrientation:I

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

.field private mSetDefaultScreen:I

.field private mSurfaceAddBtn:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mTempDefaultScreen:I

.field private mTempNextDefaultScreen:I

.field private mTempRects:[Landroid/graphics/Rect;

.field private mTmpLocation:[I

.field private mTmpLocation2:[I

.field private mTouchSlop:I

.field private mUseFullScreenInLandScapeMode:Z

.field private mVerticalGap:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWorkspaceScreenCountOnOpen:I

.field private mWorkspaceScreenIndexOnOpen:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v2, [I

    aput v4, v1, v5

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/QuickView$Animate;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    new-instance v0, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultHomePos:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsRemoved:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwappedPosition:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwapped:Z

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempDefaultScreen:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->init()V

    return-void
.end method

.method private addScreen()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-lt v1, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    :goto_0
    return-void

    :cond_1
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ne v1, v4, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onAdd()V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_0
.end method

.method private applyDeleteZone()V
    .locals 3

    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    return-void
.end method

.method private drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z
    .locals 13

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const/high16 v0, 0x3f80

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v10, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v11, v1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    if-ne v1, p2, :cond_a

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    const-string v0, "additionalAlpha"

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    const/high16 v0, 0x3f80

    const v1, 0x3dcccccd

    const v2, 0x3dcccccd

    const v3, 0x3f19999a

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    :cond_0
    const v0, 0x3f933333

    move v8, v0

    :goto_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    :goto_1
    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v4, v0, v1, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-direct {v5, v0, v1, v7, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v1, :cond_9

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    cmpl-float v4, v2, v1

    if-lez v4, :cond_8

    :goto_3
    mul-float/2addr v1, v8

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v11

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-ne v0, v3, :cond_2

    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    if-ne v0, p2, :cond_4

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    const/high16 v0, 0x3f00

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    return v9

    :cond_5
    const/high16 v1, 0x3f80

    sub-float v0, v1, v0

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    move v9, v0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v5, v0, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v6, -0x4080

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int v7, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceAddBtn:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-direct {v4, v5, v12, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v0, v6

    add-int/2addr v1, v7

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v6, -0x4080

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceAddBtn:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    goto/16 :goto_4

    :cond_a
    move v8, v0

    goto/16 :goto_0
.end method

.method private drop(IIZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    if-ne v1, v3, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsRemoved:Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isIncludeItem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteWorkScreen()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    if-ne v1, v3, :cond_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_0
.end method

.method private enableWorkspaceScreensCache()V
    .locals 6

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private endDrag()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    return-void
.end method

.method private getTouchedIndex(II)I
    .locals 6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    add-int/2addr v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private getViewLayout(III)V
    .locals 23

    if-lez p1, :cond_6

    sget-object v19, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-eq v0, v1, :cond_6

    :cond_0
    move/from16 v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    sget-object v19, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    array-length v13, v0

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v13, :cond_2

    sget-object v19, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v6, v19, v7

    if-le v6, v8, :cond_1

    move v8, v6

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingLeft()I

    move-result v20

    sub-int v10, v19, v20

    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v18, v10, v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingBottom()I

    move-result v20

    sub-int v9, v19, v20

    add-int/lit8 v19, v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v17, v9, v19

    mul-int v15, p3, v13

    mul-int v16, p2, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v19, 0x3f80

    cmpl-float v19, v14, v19

    if-lez v19, :cond_3

    const/high16 v14, 0x3f80

    :cond_3
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p2, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v19, v0

    add-int v19, v19, p3

    mul-int v19, v19, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v20, v0

    sub-int v15, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingTop()I

    move-result v19

    sub-int v20, v9, v15

    div-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_6

    sget-object v19, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v5, v19, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v19, v0

    add-int v19, v19, p2

    mul-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingLeft()I

    move-result v19

    sub-int v20, v10, v16

    div-int/lit8 v20, v20, 0x2

    add-int v4, v19, v20

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/Rect;

    add-int v21, v4, p2

    add-int v22, v12, p3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v20, v19, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v19, v0

    add-int v19, v19, p2

    add-int v4, v4, v19

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    add-int v20, v4, p2

    add-int v21, v12, p3

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v19, v0

    add-int v19, v19, p3

    add-int v12, v12, v19

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private isAvailableRect(Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDeleteZone(II)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getDeleteAreaRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private isIncludeItem()Z
    .locals 12

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    iget-wide v8, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_1
    return v4

    :cond_1
    iget-wide v8, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private makeAddBtn()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private makeScreen(I)Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private onAdd()V
    .locals 8

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03001c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    return-void
.end method

.method private onRemove()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempNextDefaultScreen:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    move/from16 v18, v0

    sput v18, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_a

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v0, v15, Lcom/sec/android/app/twlauncher/Folder;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v11

    check-cast v6, Lcom/sec/android/app/twlauncher/ItemInfo;

    iget-wide v0, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_2

    :goto_2
    return-void

    :cond_2
    iget-wide v0, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x64

    cmp-long v18, v18, v20

    if-nez v18, :cond_7

    instance-of v0, v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v18, v6

    check-cast v18, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    :cond_3
    :goto_3
    instance-of v0, v6, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object v13, v6

    check-cast v13, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    invoke-virtual {v10, v13}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeUserFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_1

    :cond_5
    instance-of v0, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v18, v6

    check-cast v18, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v10, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_3

    :cond_7
    instance-of v0, v11, Lcom/sec/android/app/twlauncher/UserFolder;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object v12, v11

    check-cast v12, Lcom/sec/android/app/twlauncher/UserFolder;

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/UserFolder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v10, v13, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeUserFolderItem(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_3

    :cond_8
    instance-of v0, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object v7, v6

    check-cast v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v0, v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_4

    :cond_9
    instance-of v0, v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object v5, v6

    check-cast v5, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/sec/android/app/twlauncher/Workspace;->removeView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v18

    add-int/lit8 v19, v16, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    goto/16 :goto_2
.end method

.method private onSwap(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    return-void
.end method

.method private setCloseEndRect(I)V
    .locals 14

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v7, 0x1

    aget v0, v0, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eq v0, v1, :cond_1

    :cond_0
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    sub-int v8, v5, v8

    sub-int v10, v6, v10

    add-int/2addr v3, v5

    add-int/2addr v3, v9

    add-int/2addr v4, v6

    add-int/2addr v4, v11

    invoke-virtual {v0, v8, v10, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    const/4 v3, 0x0

    sub-int v2, v7, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p1, 0x1

    :goto_2
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private setDeleteZoneState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragEnterForced(Z)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    return-void
.end method

.method private setOpenStartRect(I)V
    .locals 14

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v7, 0x1

    aget v0, v0, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eq v0, v1, :cond_1

    :cond_0
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    sub-int v8, v5, v8

    sub-int v10, v6, v10

    add-int/2addr v3, v5

    add-int/2addr v3, v9

    add-int/2addr v4, v6

    add-int/2addr v4, v11

    invoke-virtual {v0, v8, v10, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    const/4 v3, 0x0

    sub-int v2, v7, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p1, 0x1

    :goto_2
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private swapScreen(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onSwap(I)V

    return-void
.end method

.method private updateAppInfoInDatabase()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v14

    const/4 v4, 0x0

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v16, "launcher.db"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v12, "update favorites set screen=? where _id=?"

    const-string v15, "update favorites set screen=? where _id=?"

    invoke-virtual {v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v14, :cond_2

    invoke-virtual {v13, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_1

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object v0, v11

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v7, v0

    iget v15, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-eq v15, v6, :cond_0

    iput v6, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    const/4 v15, 0x1

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x2

    iget-wide v0, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v5

    :try_start_1
    const-string v15, "QuickViewWorkspace"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateAppInfoInDatabase() "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception v15

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v15
.end method

.method private updateTag()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateWallpaperOffset(IIF)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v2, 0x3f00

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    if-le v4, v6, :cond_0

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v2, v4, v5

    :cond_0
    const/high16 v0, 0x3f00

    if-le p2, v6, :cond_1

    int-to-float v4, p1

    add-int/lit8 v5, p2, -0x1

    int-to-float v5, v5

    div-float v0, v4, v5

    :cond_1
    sub-float v4, v0, v2

    mul-float/2addr v4, p3

    add-float v3, v2, v4

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    :cond_2
    return-void
.end method


# virtual methods
.method cancelDeleteView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    goto :goto_0
.end method

.method cancelDrag()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    return-void
.end method

.method close()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    const/4 v3, 0x7

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDeleteView()V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setMode(Z)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->disableWorkspaceScreensCache()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    if-lt v3, v0, :cond_0

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    :goto_0
    return-void

    :cond_0
    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_NO:I

    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    goto :goto_0
.end method

.method disableWorkspaceScreensCache()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 13

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getHeight()I

    move-result v3

    const/4 v6, 0x0

    if-eqz v8, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v7, v6

    :goto_0
    return v7

    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    const/4 v9, 0x2

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setOpenStartRect(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    const/4 v9, 0x4

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setCloseEndRect(I)V

    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eq v0, v9, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    invoke-virtual {p1, p0, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClipToView(Landroid/view/View;Z)V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-direct {p0, p1, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    :cond_6
    :goto_4
    move v7, v6

    goto/16 :goto_0

    :cond_7
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_8

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_11

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    sub-long/2addr v9, v11

    long-to-int v2, v9

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    if-lt v2, v9, :cond_9

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    :cond_9
    int-to-float v9, v2

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v10, v10

    div-float v5, v9, v10

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_a

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v10

    if-eq v9, v10, :cond_a

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v10

    invoke-direct {p0, v9, v10, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateWallpaperOffset(IIF)V

    :cond_a
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    if-lt v2, v9, :cond_b

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    const/4 v9, 0x7

    :goto_5
    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    :cond_b
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    array-length v9, v9

    if-eq v9, v1, :cond_d

    :cond_c
    if-lez v1, :cond_d

    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    :cond_d
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    invoke-virtual {v9, v10, v11, v12, v5}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_10

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v4

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v9, v10, v11, v12}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClip(IIII)V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v4

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_f
    const/16 v9, 0x8

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    goto/16 :goto_4

    :cond_11
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v1, :cond_6

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_7
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    return v0
.end method

.method public getDeleteIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    return v0
.end method

.method protected init()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    new-instance v4, Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    invoke-direct {v4}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    const v4, 0x7f0b002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    const v4, 0x7f0b002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    const/4 v2, 0x0

    :goto_0
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    new-instance v5, Lcom/sec/android/app/twlauncher/QuickView$Animate;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/QuickView$Animate;-><init>(Lcom/sec/android/app/twlauncher/QuickView;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setClipChildren(Z)V

    return-void
.end method

.method initScreen(I)V
    .locals 8

    const v7, 0x7f020023

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeAllViews()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    const v5, 0x7f020022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    const v5, 0x7f020024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    const v5, 0x7f02001d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget v5, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge p1, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addScreen()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_1

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    sparse-switch v0, :sswitch_data_0

    :cond_2
    :goto_1
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_0

    move v9, v10

    goto :goto_0

    :sswitch_0
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    if-eqz v11, :cond_2

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float v11, v7, v11

    float-to-int v3, v11

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float v11, v5, v11

    float-to-int v2, v11

    mul-int v11, v3, v3

    mul-int v12, v2, v2

    add-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    sub-int v4, v11, v12

    const/16 v11, 0x2710

    if-le v4, v11, :cond_2

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_2

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    goto :goto_0

    :sswitch_1
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    goto :goto_1

    :sswitch_2
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_3

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    goto :goto_1

    :cond_3
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto :goto_1

    :sswitch_3
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_2

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-nez v11, :cond_2

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v11, v11

    int-to-float v8, v11

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v11, v11

    int-to-float v6, v11

    float-to-int v11, v5

    float-to-int v12, v7

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v11

    float-to-int v12, v6

    float-to-int v13, v8

    invoke-direct {p0, v12, v13}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v12

    if-ne v11, v12, :cond_2

    sub-float v11, v7, v8

    float-to-int v3, v11

    sub-float v11, v5, v6

    float-to-int v2, v11

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    mul-int v11, v3, v3

    mul-int v12, v2, v2

    add-int/2addr v11, v12

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    float-to-int v11, v5

    float-to-int v12, v7

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v11

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v3

    const/4 v6, 0x1

    if-ge v3, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v6, v6

    if-eq v6, v3, :cond_3

    :cond_2
    if-lez v3, :cond_3

    new-array v6, v3, [Landroid/graphics/Rect;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v3, v2, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getViewLayout(III)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v4

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/twlauncher/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->startDrag(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    const/4 v11, 0x1

    goto :goto_0

    :pswitch_1
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    sub-float/2addr v11, v8

    float-to-int v2, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    sub-float/2addr v11, v9

    float-to-int v3, v11

    iget v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v6, :cond_5

    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_2

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_2

    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    :cond_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v11, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    :cond_3
    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    const/4 v11, -0x1

    if-eq v4, v11, :cond_4

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    if-eq v4, v11, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_4

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    :cond_4
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->applyDeleteZone()V

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    :cond_7
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    const/4 v11, -0x1

    if-eq v4, v11, :cond_1

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    if-eq v4, v11, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    goto/16 :goto_1

    :pswitch_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    float-to-int v11, v8

    float-to-int v12, v9

    iget-boolean v13, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    invoke-direct {p0, v11, v12, v13}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drop(IIZ)V

    :cond_8
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    if-eqz v11, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method open()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->resetMode()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->enableWorkspaceScreensCache()V

    return-void
.end method

.method public removeScreen()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onRemove()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_0
.end method

.method public setDeleteIndex(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    goto :goto_0
.end method

.method public setMode(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsEditMode:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    goto :goto_0
.end method
