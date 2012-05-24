.class Lcom/sec/android/app/twlauncher/AddWidgetDialog;
.super Landroid/widget/LinearLayout;
.source "AddWidgetDialog.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;,
        Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;
    }
.end annotation


# static fields
.field static final mReflectionShader:Lcom/sec/android/app/twlauncher/ReflectionShader;

.field private static mWeights:[F


# instance fields
.field protected SNAP_VELOCITY:I

.field private mActive:Z

.field private mArrowTopOffset:I

.field private mBackgroundHeight:F

.field private mBmArrowLeft:Landroid/graphics/Bitmap;

.field private mBmArrowRight:Landroid/graphics/Bitmap;

.field private mClientPaddingLeft:I

.field private mClientWidth:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mDownX:F

.field protected mDownY:F

.field protected mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mFrameSurfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

.field private mItemPadding:I

.field private mItemWidth:I

.field private mItemsPerPage:I

.field private mLastScroller:F

.field protected mLastTouchX:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field protected mMaximumVelocity:I

.field private mMyOnClickListener:Landroid/view/View$OnClickListener;

.field private mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPageScrollWidth:I

.field private mRecoveryPosition:[[I

.field private mScrollHistory:[F

.field private mScrollHistoryIndex:I

.field private mScrollableWidth:I

.field protected mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mSuspended:Z

.field protected mTargetScroll:I

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewRecovery:Z

.field protected mViscousFluid:Landroid/view/animation/Interpolator;

.field private mWidgetFrameDrawable:Landroid/graphics/drawable/Drawable;

.field private mWidgetsOpened:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v10, Lcom/sec/android/app/twlauncher/ReflectionShader;

    invoke-direct {v10}, Lcom/sec/android/app/twlauncher/ReflectionShader;-><init>()V

    sput-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mReflectionShader:Lcom/sec/android/app/twlauncher/ReflectionShader;

    const/16 v10, 0xf

    new-array v10, v10, [F

    sput-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    sget-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    array-length v1, v10

    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, -0x1

    int-to-float v9, v10

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    int-to-float v10, v4

    div-float v2, v10, v9

    const/high16 v10, 0x3f80

    const/high16 v11, 0x4080

    mul-float/2addr v11, v2

    float-to-double v11, v11

    const-wide/high16 v13, 0x4000

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    double-to-float v11, v11

    div-float v3, v10, v11

    sget-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    aput v3, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    sget-object v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget v8, v0, v5

    add-float/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_2

    sget-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    aget v11, v10, v4

    div-float/2addr v11, v7

    aput v11, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x12c

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFrameSurfaceList:Ljava/util/ArrayList;

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBmArrowLeft:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBmArrowRight:Landroid/graphics/Bitmap;

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mArrowTopOffset:I

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViewRecovery:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastScroller:F

    const/16 v2, 0xf

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    new-instance v2, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;-><init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;-><init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    const/16 v2, 0xc8

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->SNAP_VELOCITY:I

    new-instance v2, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViscousFluid:Landroid/view/animation/Interpolator;

    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViscousFluid:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v2, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMaximumVelocity:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetFrameDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/sec/android/app/twlauncher/R$styleable;->AddWidgetDialog:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBackgroundHeight:F

    const/4 v2, 0x4

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$108(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    return v0
.end method

.method private loadAllWidgets()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v15}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v11

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int v15, v15, v16

    new-array v1, v15, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v15, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;-><init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V

    invoke-static {v1, v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move-object v2, v1

    array-length v9, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_3

    aget-object v14, v2, v4

    const/high16 v15, 0x7f03

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    instance-of v15, v14, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    if-eqz v15, :cond_2

    move-object v8, v14

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-object v15, v13

    check-cast v15, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    invoke-virtual {v15, v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->setSamsungAppWidgetInfo(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->addView(Landroid/view/View;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v13, v15}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move-object v8, v14

    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->addView(Landroid/view/View;)V

    iget v15, v8, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v15

    iput v15, v8, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v15, v8, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v15

    iput v15, v8, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move-object v15, v13

    check-cast v15, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    invoke-virtual {v15, v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->setInfo(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private snapToNearestItem(I)V
    .locals 3

    iget v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int v0, v1, v2

    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToPixel(I)V

    return-void
.end method

.method private snapToPixel(I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, p1

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    iput p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    return-void
.end method

.method private translateForChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FF)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    iget v4, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    int-to-float v4, v4

    add-float v3, v4, v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    sub-float v0, v4, v3

    mul-float/2addr v0, p4

    add-float v4, v3, v0

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotateY(F)V

    neg-float v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public activate()V
    .locals 4

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    const/high16 v1, 0x4282

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalBottomOffset(F)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalZoomFactor(F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->removeAllViews()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->loadAllWidgets()V

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    goto :goto_0
.end method

.method protected awakenScrollBars()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->postInvalidate()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public deactivate()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalBottomOffset(F)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalZoomFactor(F)V

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    iput v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v6

    const/16 v17, 0x0

    const/16 v27, 0x0

    cmpl-float v27, v13, v27

    if-lez v27, :cond_c

    if-lez v6, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const/high16 v27, 0x3f80

    sub-float v27, v27, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    add-int v27, v27, v14

    rem-int v27, v27, v14

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastScroller:F

    move/from16 v29, v0

    sub-float v29, v23, v29

    aput v29, v27, v28

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastScroller:F

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    move/from16 v28, v0

    add-int v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    rem-int v28, v28, v29

    aget v27, v27, v28

    sget-object v28, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    aget v28, v28, v15

    mul-float v27, v27, v28

    add-float v11, v11, v27

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    const/16 v27, 0x0

    cmpl-float v27, v11, v27

    if-eqz v27, :cond_2

    const/16 v27, 0x1

    :goto_1
    or-int v17, v17, v27

    const-wide/high16 v27, -0x4010

    const-wide/high16 v29, 0x3ff0

    float-to-double v0, v11

    move-wide/from16 v31, v0

    const-wide v33, 0x4051800000000000L

    div-double v31, v31, v33

    invoke-static/range {v29 .. v32}, Ljava/lang/Math;->min(DD)D

    move-result-wide v29

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->max(DD)D

    move-result-wide v27

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x4270

    mul-float v21, v27, v28

    const/high16 v27, 0x3f80

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v28

    const/high16 v29, 0x4348

    div-float v28, v28, v29

    sub-float v9, v27, v28

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move/from16 v0, v27

    float-to-int v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const v27, 0x3ecccccd

    const v28, 0x3ecccccd

    const v29, 0x3ecccccd

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    sget-object v27, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mReflectionShader:Lcom/sec/android/app/twlauncher/ReflectionShader;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    const v27, 0x7f06000b

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getHeight()I

    move-result v19

    const-string v27, "reflectY"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getHeight()I

    move-result v29

    sub-int v28, v28, v29

    add-int v28, v28, v19

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    const-string v27, "fadeOutDistance"

    const/high16 v28, 0x42c8

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    const/4 v15, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v15, v0, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v27

    add-int v27, v27, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v27

    sub-int v27, v27, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v4, v2, v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->translateForChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FF)V

    check-cast v4, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;->drawReflection(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    const/16 v27, 0x0

    goto/16 :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    move/from16 v28, v0

    add-int v16, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getPaddingTop()I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    if-ltz v27, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViewRecovery:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v24

    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v24

    if-ge v15, v0, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mRecoveryPosition:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mRecoveryPosition:[[I

    move-object/from16 v28, v0

    aget-object v28, v28, v15

    const/16 v29, 0x1

    aget v28, v28, v29

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    add-int v29, v29, v7

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v4, v0, v7, v1, v2}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViewRecovery:Z

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    if-gez v27, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    move/from16 v28, v0

    add-int v27, v27, v28

    sub-int v12, v27, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    div-int v27, v27, v16

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v22, v0

    const/16 v25, 0x0

    rem-int v20, v22, v6

    div-int v18, v22, v6

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v15, v0, :cond_6

    add-int/lit8 v27, v6, -0x1

    sub-int v27, v27, v20

    add-int v26, v27, v15

    div-int v8, v26, v6

    mul-int v27, v6, v8

    sub-int v27, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    mul-int v27, v16, v20

    sub-int v27, v12, v27

    mul-int v28, v16, v6

    mul-int v28, v28, v18

    sub-int v27, v27, v28

    mul-int v28, v16, v15

    add-int v25, v27, v28

    add-int v27, v25, v16

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v7

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v5, v0, v7, v1, v2}, Landroid/view/View;->layout(IIII)V

    const-string v27, "dispatchDrawGL"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "i : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    mul-int v29, v6, v8

    sub-int v29, v26, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " quotient _ view_Left : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_6
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViewRecovery:Z

    :cond_7
    :goto_5
    const/4 v15, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v15, v0, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v27

    add-int v27, v27, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v27

    sub-int v27, v27, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v4, v2, v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->translateForChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FF)V

    check-cast v4, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v27

    or-int v17, v17, v27

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    move/from16 v28, v0

    add-int v27, v27, v28

    div-int v27, v27, v16

    sub-int v22, v27, v6

    const/16 v25, 0x0

    rem-int v20, v22, v6

    div-int v18, v22, v6

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v15, v0, :cond_a

    add-int v27, v6, v20

    sub-int v26, v27, v15

    div-int v8, v26, v6

    mul-int v27, v6, v8

    sub-int v27, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    mul-int v27, v16, v20

    add-int v27, v27, v12

    mul-int v28, v16, v6

    mul-int v28, v28, v18

    add-int v27, v27, v28

    mul-int v28, v16, v15

    sub-int v25, v27, v28

    add-int v27, v25, v16

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v7

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v5, v0, v7, v1, v2}, Landroid/view/View;->layout(IIII)V

    const-string v27, "dispatchDrawGL"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "i : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    mul-int v29, v6, v8

    sub-int v29, v26, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " quotient _ view_Left : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_a
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViewRecovery:Z

    goto/16 :goto_5

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v27

    if-nez v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v27

    if-eqz v27, :cond_e

    :cond_d
    const/16 v17, 0x1

    :cond_e
    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v27

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_f

    const/16 v27, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->removeAllViews()V

    :cond_f
    return v17
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getBackgroundHeight()F
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBackgroundHeight:F

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getOpenedWidgetsCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    return v0
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->clearPhantom()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    if-ne v5, v6, :cond_4

    :goto_1
    return v6

    :pswitch_0
    iput v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastTouchX:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownX:F

    iput v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownY:F

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_2
    iput v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_2

    :pswitch_1
    iput v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :pswitch_2
    iget v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v2, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    if-gt v2, v5, :cond_3

    iget v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    if-le v4, v5, :cond_1

    :cond_3
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int v1, v7, v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getPaddingTop()I

    move-result v2

    move v5, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v3

    const/4 v7, 0x2

    filled-new-array {v3, v7}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mRecoveryPosition:[[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;

    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    invoke-interface {v7, v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;->getLayoutWidth(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    add-int/2addr v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/view/View;->layout(IIII)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mRecoveryPosition:[[I

    aget-object v7, v7, v4

    const/4 v8, 0x0

    aput v1, v7, v8

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mRecoveryPosition:[[I

    aget-object v7, v7, v4

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    add-int/2addr v9, v1

    aput v9, v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int v5, v7, v8

    :cond_0
    int-to-float v7, v1

    add-float/2addr v7, v6

    float-to-int v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-nez v5, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "AddWidgetDialog widthMeasureSpec must be specified."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getPaddingLeft()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getPaddingRight()I

    move-result v7

    sub-int v1, v6, v7

    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    sub-int v6, v1, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    div-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    if-gez v6, :cond_1

    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    :cond_1
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    mul-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    sub-int v0, v1, v6

    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v3

    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v12, 0x1

    return v12

    :pswitch_0
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    iput v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastTouchX:F

    iput v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownX:F

    iput v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownY:F

    goto :goto_0

    :pswitch_1
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    iget v13, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v12

    float-to-int v7, v12

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViscousFluid:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->SNAP_VELOCITY:I

    if-le v7, v12, :cond_3

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v12

    if-nez v12, :cond_3

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    iget v13, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToPixel(I)V

    :goto_1
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    :cond_2
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto :goto_0

    :cond_3
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->SNAP_VELOCITY:I

    neg-int v12, v12

    if-ge v7, v12, :cond_4

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v12

    if-nez v12, :cond_4

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    iget v13, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    add-int/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToPixel(I)V

    goto :goto_1

    :cond_4
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    invoke-direct {p0, v12}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToNearestItem(I)V

    goto :goto_1

    :pswitch_2
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    if-nez v12, :cond_7

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownX:F

    sub-float v12, v8, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v9, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownY:F

    sub-float v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v11, v12

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v4

    :goto_2
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    if-gt v9, v12, :cond_5

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    if-le v11, v12, :cond_1

    :cond_5
    const/4 v12, 0x1

    iput v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v12

    div-int/lit8 v4, v12, 0x4

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v1

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastTouchX:F

    sub-float/2addr v12, v8

    float-to-int v2, v12

    iput v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastTouchX:F

    const/4 v12, 0x2

    if-lt v1, v12, :cond_8

    const/4 v12, 0x0

    invoke-virtual {p0, v2, v12}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->scrollBy(II)V

    goto/16 :goto_0

    :cond_8
    if-gez v2, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    neg-int v5, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    if-le v12, v5, :cond_1

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    if-lez v12, :cond_9

    const/4 v12, 0x0

    invoke-virtual {p0, v2, v12}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->scrollBy(II)V

    goto/16 :goto_0

    :cond_9
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    sub-int v12, v5, v12

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->scrollBy(II)V

    goto/16 :goto_0

    :cond_a
    if-lez v2, :cond_1

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int v3, v12, v13

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    if-ge v12, v3, :cond_1

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    sub-int v12, v3, v12

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->scrollBy(II)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-void
.end method

.method public setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->addHeightProvider(Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;)V

    return-void
.end method

.method public suspend()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->deactivate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    return-void
.end method
