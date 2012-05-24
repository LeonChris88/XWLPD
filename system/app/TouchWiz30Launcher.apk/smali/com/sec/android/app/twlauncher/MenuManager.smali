.class public Lcom/sec/android/app/twlauncher/MenuManager;
.super Lcom/sec/android/app/twlauncher/Scene;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/sec/android/app/twlauncher/DragController$DragListener;
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/MenuManager$9;,
        Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;,
        Lcom/sec/android/app/twlauncher/MenuManager$makeVisibleLstnr;,
        Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;,
        Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;,
        Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;,
        Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;,
        Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;,
        Lcom/sec/android/app/twlauncher/MenuManager$animInfo;,
        Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;,
        Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;,
        Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;,
        Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;,
        Lcom/sec/android/app/twlauncher/MenuManager$PitchState;
    }
.end annotation


# static fields
.field private static mPageFolderRotation:F

.field static mUninstallLockPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field private mAniFadeIn:Landroid/view/animation/Animation;

.field private mAniFadeOut:Landroid/view/animation/Animation;

.field private mAniRotateFadeIn:Landroid/view/animation/Animation;

.field private mAniRotateFadeOut:Landroid/view/animation/Animation;

.field private mAniTransition:Landroid/view/animation/Animation;

.field private mBackupMode:I

.field private mBackupSortMethod:I

.field private mCloseAnimations:[Landroid/view/animation/Animation;

.field private final mColumnNum:I

.field private mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

.field private mDragCellIndexOrig:I

.field private mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

.field private mDragScreen:I

.field private mDragView:Landroid/view/View;

.field private mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mExecDragOverDelayed:Z

.field private mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

.field private mFolderPreviewOffsetX:F

.field private mFolderPreviewOffsetY:F

.field private mHasOpenListViewFolder:Z

.field private mIndicatorTransYLM:I

.field private mIsClosing:Z

.field private mIsClosingGL:Z

.field private mIsOpeningGL:Z

.field private mItemsOnPage:I

.field private mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

.field mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field private mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

.field mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field mMode:I

.field mMyOnClickListener:Landroid/view/View$OnClickListener;

.field private mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mOpenAnimations:[Landroid/view/animation/Animation;

.field private mOrientation:I

.field private mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

.field private mPitchThreshold:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrevMode:I

.field private mPreviewIconSize:F

.field private mPreviewIconXGap:F

.field private mPreviewIconYGap:F

.field private mPreviewIconYOffset:F

.field private mRaisedIconStartTime:J

.field private final mRaisedIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mResolveInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorsRegistered:Z

.field private mSortMethod:I

.field private mTestCount:I

.field private mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mZoomScaleLM:F

.field private mZoomTransYLM:I

.field private maxCellNum:I

.field private maxPageNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuManager;->mUninstallLockPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v5}, Lcom/sec/android/app/twlauncher/Scene;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrevMode:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupMode:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupSortMethod:I

    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x1f4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mActivityMgr:Landroid/app/ActivityManager;

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kSetThreshold:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIconStartTime:J

    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    invoke-direct {v2, p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$4;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$5;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$6;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$7;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$8;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    new-array v2, v2, [Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    new-array v2, v2, [Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    sget-object v2, Lcom/sec/android/app/twlauncher/R$styleable;->MenuManager:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomTransYLM:I

    const/high16 v2, 0x3f40

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomScaleLM:F

    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIndicatorTransYLM:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->init(Landroid/content/res/Resources;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->initPageIndicator(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/MenuManager;->initiateDragOnView(Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;)Landroid/graphics/PointF;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->centerViewToLastOrigTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/UserFolderModel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mExecDragOverDelayed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mExecDragOverDelayed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/MenuManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->dragFromListView(Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolder(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    return-void
.end method

.method private addBlankPage()V
    .locals 5

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    goto :goto_0
.end method

.method private assignEditToNormal()Z
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignEditToNormal()V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->assignEditToNormal()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method private assignNormalToEdit()Z
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->assignNormalToEdit()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method private cancelRunningTransitionAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    :cond_0
    return-void
.end method

.method private centerViewToLastOrigTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v3, v1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    iget v3, v1, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    new-instance v3, Landroid/graphics/PointF;

    int-to-float v4, v0

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method

.method private closeAllOpenFolders()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/sec/android/app/twlauncher/UserFolder;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_2
    if-ltz v2, :cond_2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v5, :cond_4

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private closeDragGap()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->ensureDraggedView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v0, v1, Lcom/sec/android/app/twlauncher/AppMenu;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v2, "closeDragGap"

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, p2, v5, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;ZZ)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private disablePitchDetection()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    const-string v0, "Launcher.MenuManager"

    const-string v1, "Pitch detection disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private dragFromListView(Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->centerViewToLastOrigTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v3, p2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v1, p2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v2, 0x2

    invoke-interface {v0, p1, p0, v1, v2}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

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
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    goto :goto_0
.end method

.method private dumpAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "DebugDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adater pointer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    const-string v1, "DebugDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump Adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const-string v0, "DebugDb"

    const-string v1, "Adater pointer is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private enablePitchDetection()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const-string v0, "Launcher.MenuManager"

    const-string v1, "Pitch detection enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kSetThreshold:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    :cond_0
    return-void
.end method

.method private getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private getEmptyAppMenu(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-lt v3, v4, :cond_1

    :cond_0
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCellNum(I)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    return-object v2
.end method

.method private getEmptyPageView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    const/4 v2, 0x0

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v8, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v2

    :cond_0
    :goto_0
    if-ne v2, v7, :cond_1

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v8, :cond_7

    add-int/lit8 v2, v0, -0x1

    :cond_1
    :goto_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-gt v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v5, v6, :cond_8

    move-object v3, v4

    :cond_3
    if-nez v3, :cond_4

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v1

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v8, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v5

    if-ne v5, v7, :cond_5

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditPageNum(I)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditCellNum(I)V

    :cond_5
    :goto_3
    return-object v3

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v2

    goto :goto_0

    :cond_7
    move v2, v0

    goto :goto_1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v5

    if-ne v5, v7, :cond_a

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCellNum(I)V

    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    goto :goto_3
.end method

.method private getListView()Lcom/sec/android/app/twlauncher/GLFastScrollListView;
    .locals 5

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method private getPackageList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configFilename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_3
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_5
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private getPointInScaledDimension(II)Landroid/graphics/PointF;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getScaleRatio()Landroid/graphics/PointF;

    move-result-object v3

    int-to-float v4, p1

    iget v5, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    add-int v1, v4, v5

    int-to-float v4, p2

    iget v5, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    add-int v2, v4, v5

    const/16 v0, -0xa

    new-instance v4, Landroid/graphics/PointF;

    add-int v5, v1, v0

    int-to-float v5, v5

    add-int v6, v2, v0

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v4
.end method

.method private getSortedAdapter(Landroid/widget/ArrayAdapter;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v3, v2, :cond_2

    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;-><init>()V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->copyFromAppInfoAdapter(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)Z

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getUserFolders()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->copyFromFolderInfoList(Landroid/widget/ArrayAdapter;Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getAddedFolders()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->copyFromFolderInfoList(Landroid/widget/ArrayAdapter;Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v3, v2, :cond_5

    :goto_1
    return v1

    :cond_2
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-ne v3, v2, :cond_3

    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;-><init>()V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-nez v3, :cond_4

    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-direct {v0, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;-><init>(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    move v1, v2

    goto :goto_1
.end method

.method private getSortedAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolderAndASZApps(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z

    move-result v0

    goto :goto_0
.end method

.method private getXDeltaValue(I)F
    .locals 8

    const/high16 v4, 0x42c8

    const/high16 v3, 0x4248

    const/4 v0, 0x0

    const/high16 v1, -0x3d38

    const/high16 v2, -0x3db8

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    rem-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/high16 v0, -0x3d10

    goto :goto_0

    :pswitch_2
    const/high16 v0, -0x3d90

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x4270

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x42f0

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    const/16 v7, 0x14

    if-ne v6, v7, :cond_1

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v2

    goto :goto_0

    :pswitch_7
    move v0, v3

    goto :goto_0

    :pswitch_8
    move v0, v4

    goto :goto_0

    :cond_1
    packed-switch v5, :pswitch_data_2

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v2

    goto :goto_0

    :pswitch_b
    move v0, v3

    goto :goto_0

    :pswitch_c
    move v0, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getYDeltaValue(I)F
    .locals 8

    const/high16 v4, 0x430c

    const/high16 v3, 0x428c

    const/4 v2, 0x0

    const/high16 v0, -0x3cf4

    const/high16 v1, -0x3d74

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    div-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    const/16 v7, 0x14

    if-ne v6, v7, :cond_0

    packed-switch v5, :pswitch_data_0

    :goto_0
    move v0, v2

    :goto_1
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    move v0, v2

    goto :goto_1

    :pswitch_3
    move v0, v3

    goto :goto_1

    :pswitch_4
    move v0, v4

    goto :goto_1

    :cond_0
    packed-switch v5, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_1

    :pswitch_6
    move v0, v3

    goto :goto_1

    :pswitch_7
    move v0, v4

    goto :goto_1

    :cond_1
    packed-switch v5, :pswitch_data_2

    goto :goto_0

    :pswitch_8
    const/high16 v0, -0x3d60

    goto :goto_1

    :pswitch_9
    const/high16 v0, -0x3de0

    goto :goto_1

    :pswitch_a
    const/high16 v0, 0x4220

    goto :goto_1

    :pswitch_b
    const/high16 v0, 0x42a0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    const/16 v1, 0x320

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->initAnimation()V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setAnimationCacheEnabled(Z)V

    const v1, 0x7f0b006d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetX:F

    const v1, 0x7f0b006e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetY:F

    const v1, 0x7f0b006f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconSize:F

    const v1, 0x7f0b0070

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconXGap:F

    const v1, 0x7f0b0071

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYGap:F

    const v1, 0x7f0b0072

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYOffset:F

    return-void

    :cond_0
    const/16 v1, 0x258

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    const/16 v1, 0x4b0

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 11

    const-wide/16 v9, 0x1f4

    const/high16 v8, 0x3f80

    const/4 v1, 0x0

    const/4 v7, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v0, v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getXDeltaValue(I)F

    move-result v2

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getYDeltaValue(I)F

    move-result v3

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v2, v7, v3, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aput-object v6, v4, v0

    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v7, v2, v7, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aput-object v4, v2, v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v2, v2, v0

    new-instance v3, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v3, v8}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aget-object v2, v2, v0

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v2, v2, v0

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->setDelay(F)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;->setDelay(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f040004

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f040005

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private initPageIndicator(Landroid/content/res/Resources;)V
    .locals 9

    new-instance v0, Lcom/sec/android/app/twlauncher/PageIndicator;

    const v1, 0x7f0b0042

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/16 v3, 0x9

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

.method private initiateDragOnView(Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 11

    const/4 v10, 0x1

    move-object v1, p3

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    instance-of v0, v9, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_1

    move-object v6, v9

    check-cast v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v3, v6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-virtual {v3, p2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->setDragSource(Lcom/sec/android/app/twlauncher/DragSource;)V

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/AppMenu;

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    invoke-virtual {v8, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, v1, :cond_2

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    iput v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->enableRollNavigation()V

    :cond_1
    :goto_1
    return v10

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    invoke-interface {v0, v1, p1, v3, v10}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    goto :goto_1
.end method

.method private isListChild()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isListView(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    return v0
.end method

.method private isSceneTransitioning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;I)V

    if-ne p1, v3, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeSureAdjacentPagesArePreloaded()V

    return-object v0

    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    goto :goto_1
.end method

.method private makeSureAdjacentPagesArePreloaded()V
    .locals 6

    const/4 v4, 0x6

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v1

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v2, v5, -0x6

    :goto_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v5, v5, 0x6

    if-gt v2, v5, :cond_2

    if-gez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    if-eqz v5, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->willBePreloaded(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private openAppMenuFolders(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    instance-of v6, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v6, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v6, :cond_0

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v6, v4, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v6, :cond_0

    move-object v1, v4

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolder;

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_0

    :goto_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->getFolderUi(Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "Launcher.MenuManager"

    const-string v2, "Failed to get the folder UI form the Launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private phantomizeIfNeeded(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    goto :goto_0
.end method

.method private reOrgAppMenu(Lcom/sec/android/app/twlauncher/AppMenu;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeAllEmptyPages()I
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private removeDragView(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->unShiftItems(Ljava/lang/String;)V

    return-void
.end method

.method private removeFolder(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->showMMRemoveFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    return-void
.end method

.method private removeFolderAndASZApps(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;",
            ")Z"
        }
    .end annotation

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge v0, v5, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v4, v3

    :goto_1
    if-ltz v7, :cond_a

    invoke-virtual {p1, v7}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    or-int/2addr v0, v4

    :goto_2
    add-int/lit8 v1, v7, -0x1

    move v7, v1

    move v4, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getContainingFolderFromModel(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "DebugPlacement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping folder item "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    or-int/2addr v0, v4

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getDefaultSort()I

    move-result v1

    if-gez v1, :cond_b

    invoke-virtual {p2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    move v0, v4

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v1, v9, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v1

    :goto_3
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v2, v9, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v2

    move v6, v2

    :goto_4
    if-ne v1, v10, :cond_b

    if-eq v6, v10, :cond_b

    move v2, v3

    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v8, v9, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v1

    :goto_6
    if-ne v1, v6, :cond_8

    const-string v1, "MenuManager"

    const-string v8, "Cell nums are same. Please check DB !!"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v2

    move v6, v2

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v1

    goto :goto_6

    :cond_8
    if-lt v1, v6, :cond_4

    :cond_9
    invoke-virtual {p2, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    move v0, v4

    goto/16 :goto_2

    :cond_a
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->updateAsz(Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v0, v4

    invoke-virtual {p3, v0}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->set(Z)V

    invoke-virtual {p1, v5}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    move v3, v5

    goto/16 :goto_0

    :cond_b
    move v0, v4

    goto/16 :goto_2
.end method

.method private removeMissingApps(Landroid/widget/ArrayAdapter;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->toMap(Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllEmptyPages()I

    return v3
.end method

.method private resetRaisedIcons()V
    .locals 3

    const-string v0, "Launcher.MenuManager"

    const-string v1, "resetRaisedIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setShowAppIsRunning(Z)V

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private setRaisedIcons()V
    .locals 11

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v0, "Launcher.MenuManager"

    const-string v1, "setRaisedIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mActivityMgr:Landroid/app/ActivityManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mActivityMgr:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v8, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v9

    move v7, v5

    move v4, v5

    :goto_1
    if-ge v7, v9, :cond_2

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v10

    move v6, v5

    :goto_2
    if-ge v6, v10, :cond_1

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->setShowAppIsRunning(Z)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v7

    move v4, v5

    move v2, v5

    :goto_4
    if-ge v4, v7, :cond_4

    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_6

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->setShowAppIsRunning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v1, v4

    goto :goto_3
.end method

.method private shiftItem(Lcom/sec/android/app/twlauncher/AppMenu;Landroid/view/View;I)V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->setWasShifted(Z)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    const/4 v5, 0x0

    if-gt v6, p3, :cond_2

    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v5

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->updateAppInfoIfNeeded(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v8, 0x0

    invoke-virtual {v5, p2, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-le v2, v8, :cond_0

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int/lit8 v8, p3, 0x1

    invoke-direct {p0, v5, v7, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Lcom/sec/android/app/twlauncher/AppMenu;Landroid/view/View;I)V

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v3, v8, :cond_3

    invoke-virtual {v5, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    instance-of v8, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v8, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/AppMenu;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private snapToDestination()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    return-void
.end method

.method private switchToEditMode()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView()Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v7, v11}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_1
    if-ltz v5, :cond_1

    invoke-virtual {v7, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    instance-of v9, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v9, :cond_0

    if-eqz v3, :cond_0

    move-object v9, v0

    check-cast v9, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/MenuItemView;->setDrawBadgeCountOn(Z)V

    invoke-virtual {v3, v2, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->emptyLauncherManagerList()V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/LauncherManager;->show()V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v9, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v9, p0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    return-void
.end method

.method private switchToListMode()V
    .locals 13

    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    invoke-direct {p0, v6, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    new-instance v7, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030005

    invoke-direct {v7, v1, v2}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v8

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v4, v3

    move v3, v1

    :goto_2
    if-ge v3, v8, :cond_3

    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    new-instance v9, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v9, v4, v10, v11, v12}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    instance-of v4, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v4, :cond_5

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1, v9}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v5

    move-object v2, v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->setFolderOpenFlag(Z)V

    invoke-direct {p0, p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    :cond_4
    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->setVerticalFadingEdgeEnabled(Z)V

    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$2;

    invoke-direct {v0, p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager$2;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/TextIconAdapter;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$3;

    invoke-direct {v0, p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager$3;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/TextIconAdapter;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto/16 :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_3
.end method

.method private switchToNormalMode()V
    .locals 8

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllEmptyPages()I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->emptyLauncherManagerList()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v6, :cond_1

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setDrawBadgeCountOn(Z)V

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->enablePitchDetection()V

    return-void
.end method

.method private syncGridView()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView(Landroid/widget/ArrayAdapter;)Z

    move-result v0

    return v0
.end method

.method private syncGridView(Landroid/widget/ArrayAdapter;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const-string v2, "syncGridView"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->dumpSelf(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lt v1, v11, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v1, :cond_4

    :cond_2
    :goto_0
    return v0

    :cond_3
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;

    invoke-direct {v4, p0, v10}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeMissingApps(Landroid/widget/ArrayAdapter;)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->or(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v1, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolderAndASZApps(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    invoke-direct {p0, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/sec/android/app/twlauncher/LauncherManager;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v7

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_a

    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v2, " New"

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    const/4 v8, 0x2

    if-eq v1, v8, :cond_6

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-ne v1, v11, :cond_5

    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyAppMenu(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->reOrgAppMenu(Lcom/sec/android/app/twlauncher/AppMenu;)V

    invoke-virtual {v4, v11}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->set(Z)V

    move-object v1, v2

    :goto_3
    const-string v2, "DebugPlacement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncGrid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, v6, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->phantomizeIfNeeded(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_6
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v1

    goto :goto_2

    :cond_7
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    const-string v1, " Exists"

    goto :goto_3

    :cond_9
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v2, :cond_8

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->updateVisualsIfRequired()V

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    invoke-direct {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->openAppMenuFolders(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->fixPageAndCellNum()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->or(Z)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {p0, v7, v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->phantomizeIfNeeded(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    goto :goto_5

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateCurrScreen()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->get()Z

    move-result v0

    goto/16 :goto_0
.end method

.method private termUpdateDB()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->waitForTermination()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;I)V
    .locals 13

    const/high16 v12, 0x3f80

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCylinderAnimationFactor()F

    move-result v6

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAtLooped(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    if-gez p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    mul-int/2addr v1, v4

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int v8, v1, v0

    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_2

    int-to-float v0, v1

    int-to-float v1, v8

    int-to-float v3, v4

    div-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageGap:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    sget v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotateY(F)V

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float/2addr v0, v6

    sub-float v0, v12, v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    if-lt p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v5

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleMain:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomScaleLM:F

    invoke-static {v3, v9, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    iget v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleSide:F

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v4

    div-float/2addr v10, v11

    invoke-static {v3, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    invoke-static {v12, v3, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    iget v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomPageGap:I

    mul-int/2addr v9, v8

    div-int v4, v9, v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    int-to-float v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomTransYLM:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float v5, v1, v2

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    goto/16 :goto_1

    :cond_3
    move v1, v0

    goto/16 :goto_0
.end method

.method private updateAppInfoIfNeeded(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 3

    move-object v1, p1

    instance-of v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private updateAsz(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const-string v5, "DebugPlacement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ASZ order "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    invoke-virtual {v3, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->appendApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    move-result v0

    or-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    return v2
.end method

.method private updateCurrScreen()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v1, v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    return-void

    :cond_1
    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_0
.end method

.method private updateMenu()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->dumpAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->syncWithApps(Landroid/widget/ArrayAdapter;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v2, :pswitch_data_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView(Landroid/widget/ArrayAdapter;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    or-int/2addr v0, v2

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    move v4, v3

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToListMode()V

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v3

    if-ne p1, v3, :cond_0

    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    instance-of v3, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropFolder()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    const/16 v9, 0x11

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-lt v0, v8, :cond_0

    invoke-direct {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, p1, p2, p3}, Lcom/sec/android/app/twlauncher/UserFolder;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4
    :goto_2
    if-le v0, v8, :cond_1

    if-eq p2, v9, :cond_5

    const/16 v6, 0x42

    if-ne p2, v6, :cond_1

    :cond_5
    if-ne p2, v9, :cond_8

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_6

    add-int/lit8 v1, v0, -0x1

    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3, p1, p2, p3}, Lcom/sec/android/app/twlauncher/UserFolder;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1

    :cond_7
    invoke-virtual {v4, p1, p2, p3}, Lcom/sec/android/app/twlauncher/AppMenu;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    invoke-virtual {v4, p1, p2, p3}, Lcom/sec/android/app/twlauncher/AppMenu;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1
.end method

.method addItem(Landroid/view/View;I)Landroid/view/View;
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-ge v3, p2, :cond_3

    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-le v3, v9, :cond_1

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v6, v9}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-direct {p0, v6, v8, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Lcom/sec/android/app/twlauncher/AppMenu;Landroid/view/View;I)V

    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIsDragging(Z)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v4, v9, :cond_4

    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    instance-of v9, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v9, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v0, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x2

    invoke-virtual {p0, p3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    if-ge v3, p2, :cond_3

    invoke-virtual {p1, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v7, v8, :cond_4

    invoke-virtual {p3, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditPageNum(I)V

    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-le v3, v7, :cond_1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Lcom/sec/android/app/twlauncher/AppMenu;Landroid/view/View;I)V

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v4, v7, :cond_6

    invoke-virtual {p1, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    instance-of v7, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v7, v8, :cond_5

    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v7

    invoke-virtual {v0, v7, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v5, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p3, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v7

    invoke-virtual {v0, v7, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    goto :goto_3

    :cond_6
    return-object v5
.end method

.method addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p0, p1, p3, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method addItemAtEndOfPage(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    add-int/lit8 v0, v1, -0x1

    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public animateClose()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelRunningTransitionAnimation()V

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disablePitchDetection()V

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    check-cast v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->start()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    return-void
.end method

.method public animateOpen()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelRunningTransitionAnimation()V

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    check-cast v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->start()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->enablePitchDetection()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    return-void
.end method

.method public animateToMM(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)Z
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    instance-of v1, p1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getLocAndAnimDur(Landroid/view/View;)Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;

    move-result-object v8

    new-instance v5, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v9}, Lcom/sec/android/app/twlauncher/DragLayer;->getGenericViewAnims(IZ)Lcom/sec/android/app/twlauncher/GenericViewAnim;

    move-result-object v0

    iget-object v6, v8, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mRelPt:Landroid/graphics/PointF;

    iget v7, v8, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    move-object v1, p1

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->addAnim(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    return v9

    :cond_0
    invoke-interface {p3, v3}, Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V

    goto :goto_0
.end method

.method public aszShiftOut(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "aszShiftOut"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->unShiftItems(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    instance-of v1, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$makeVisibleLstnr;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$makeVisibleLstnr;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    invoke-virtual {v1, v0, p2, v2}, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->add(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->post(Landroid/view/View;)V

    goto :goto_0
.end method

.method public cancelDragOverDelayed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mExecDragOverDelayed:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelRunningTransitionAnimation()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    return-void
.end method

.method public closeFolderOnCurrentPage()Z
    .locals 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v7, :cond_0

    check-cast v6, Lcom/sec/android/app/twlauncher/UserFolder;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v3, v0

    if-nez v3, :cond_2

    move v5, v4

    :goto_1
    return v5

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v1

    if-nez v1, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    move v5, v4

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v7, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    :cond_1
    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    if-lt v0, v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    :cond_4
    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFrame()V

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-eq v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v0, v4, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-gez v2, :cond_b

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    :cond_7
    :goto_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-ltz v2, :cond_8

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_9

    :cond_8
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    rem-int/2addr v2, v3

    if-nez v2, :cond_9

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFrame()V

    :cond_9
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-eq v2, v7, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    :cond_a
    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v2, v0, :cond_7

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_2
.end method

.method public createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2, v11}, Lcom/sec/android/app/twlauncher/UserFolderModel;->createUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v2

    invoke-virtual {v2, p2, v11}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->copyFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V

    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    new-instance v0, Lcom/sec/android/app/twlauncher/FolderDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetX:F

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetY:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconSize:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconXGap:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYGap:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYOffset:F

    const v10, 0x7f070014

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    iput-object v0, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getBadgeCount()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setBadgeCount(I)V

    invoke-virtual {v2, v11}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setIsNewDropFolder(Z)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getNewFolderName(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    move v0, v11

    :goto_2
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "MenuManager"

    const-string v3, "One of the items in the new folder could not be found in app shortcut or main menu"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "Launcher.MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder image is not a BitmapDrawable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItemAtEndOfPage(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object p1

    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    return-object p1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItemAtEndOfPage(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    goto :goto_1

    :cond_1
    const-string v3, "MenuManager"

    const-string v4, "didnt find one of the icons moving inside the folder in the shortcut zone or the main menu"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getScreenCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    const-string v0, "GT-I9100"

    const-string v2, "SGH-T989"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080061

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method

.method discard()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->revert()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->forceClear(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->assignNormalToEdit()Z

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->numFolders()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isSceneTransitioning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 12

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isShown()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "IconDebug"

    const-string v8, "MenuManager dispatchDrawGL !isShown() return false"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_1

    const-string v7, "IconDebug"

    const-string v8, "MenuManager dispatchDrawGL childCount return false"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v7

    if-ltz v7, :cond_3

    :cond_2
    const-string v7, "IconDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MenuManager dispatchDrawGL mLauncher.getQuickViewMainMenu().isOpened()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "IconDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MenuManager dispatchDrawGL mLauncher.getStateQuickNavigation()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    const/4 v7, 0x1

    if-le v1, v7, :cond_4

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-gez v7, :cond_10

    add-int/lit8 v7, v1, -0x1

    iput v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    :cond_4
    :goto_1
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v7, :cond_6

    new-instance v7, Lcom/sec/android/app/twlauncher/MenuManager$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/twlauncher/MenuManager$1;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    :cond_6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    add-int/2addr v7, v8

    int-to-float v8, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getTop()I

    move-result v7

    int-to-float v9, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v10

    iget v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    add-int/2addr v7, v10

    int-to-float v10, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getTop()I

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v11

    int-to-float v7, v7

    invoke-virtual {p1, v8, v9, v10, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    const/4 v7, 0x0

    invoke-virtual {p1, p0, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClipToView(Landroid/view/View;Z)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->setTouchTrackingEnabled(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCylinderAnimationFactor()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v7

    if-eqz v7, :cond_9

    const v7, 0x3ecccccd

    mul-float/2addr v7, v2

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v7, v7

    int-to-float v8, v6

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v7, 0x1

    if-le v1, v7, :cond_b

    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-gtz v7, :cond_a

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    rem-int/2addr v7, v6

    if-eqz v7, :cond_b

    :cond_a
    add-int/lit8 v7, v5, -0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v2, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v7

    or-int/2addr v4, v7

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v2, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v7

    or-int/2addr v4, v7

    :cond_b
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v5, v2, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v7

    or-int/2addr v4, v7

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-boolean v7, v7, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    if-eqz v7, :cond_c

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->fadeEdges(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    :cond_c
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->setTouchTrackingEnabled(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_e

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v3

    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_d

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIndicatorTransYLM:I

    if-eqz v7, :cond_d

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIndicatorTransYLM:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageIndicator(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v7

    or-int/2addr v4, v7

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isCylinderAnimating()Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_f
    const/4 v7, 0x1

    :goto_2
    or-int/2addr v4, v7

    move v7, v4

    goto/16 :goto_0

    :cond_10
    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v7, v1, :cond_4

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto/16 :goto_1

    :cond_11
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_1

    const/16 v2, 0x11

    if-ne p2, v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :goto_0
    return v1

    :cond_0
    const/16 v2, 0x42

    if-ne p2, v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0
.end method

.method public dragFromFolder(Lcom/sec/android/app/twlauncher/UserFolder;Landroid/graphics/Point;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupMode:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupSortMethod:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v6, v5, :cond_0

    invoke-direct {p0, p4, p3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->dragFromListView(Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastMotion()Landroid/graphics/PointF;

    move-result-object v3

    iget v6, v3, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v2

    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, v2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/LauncherManager;->setShowHelp(Z)V

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/LauncherManager;->setShowHelp(Z)V

    new-instance v4, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/UserFolder;Landroid/view/View;Landroid/graphics/Point;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->post(Ljava/lang/Runnable;)Z

    move v4, v5

    goto :goto_0
.end method

.method protected drawAppMenuAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z
    .locals 11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_6

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAtLooped(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;I)V

    const v6, 0x3a83126f

    cmpl-float v6, p3, v6

    if-lez v6, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageBackground(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    :cond_1
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ne p2, v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-static {p1, v6, v7}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Lcom/sec/android/app/twlauncher/DragLayer;->drawGenericViewAnims(ILcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v6

    or-int/2addr v5, v6

    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCylinderAnimationFactor()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->setScreenClipExtendedEdge(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_4

    if-ltz p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    if-lt p2, v6, :cond_4

    :cond_3
    const v6, 0x186a0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->setScreenClipExtendedEdge(I)V

    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6, p4}, Lcom/sec/android/app/twlauncher/AppMenu;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    rem-int v6, p2, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollPage:I

    if-ne v6, v7, :cond_5

    const/high16 v6, 0x3f80

    invoke-virtual {p1, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :goto_1
    return v5

    :cond_6
    if-ltz p2, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    if-lt p2, v6, :cond_0

    :cond_7
    const-string v6, "IconDebug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drawAppMenuAt drawAppMenuAt childIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_9

    div-int/lit8 v3, v2, 0x4

    :goto_2
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->setScreenClipExtendedEdge(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x4

    goto :goto_2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    instance-of v1, p2, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Scene;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawListView(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawAppMenuAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawListView(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolder;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/UserFolder;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public emptyLauncherManagerList()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->emptyLauncherManagerList(F)V

    return-void
.end method

.method public emptyLauncherManagerList(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    return-void
.end method

.method public ensureDraggedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method public enterNewMode(I)Z
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    const/4 v1, 0x1

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToEditMode()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalMode()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToListMode()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalMode()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fixPageAndCellNum()Z
    .locals 9

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_0
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    instance-of v7, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v7, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    :goto_3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty()Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method public getAnimateStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public getAnimationGL()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected getChildAtLooped(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    add-int v1, v0, p1

    rem-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected getCylinderAnimationFactor()F
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->getCylinderAnimationFactor()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    return v1
.end method

.method public getDragAnimationXOffset(Landroid/view/View;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    goto :goto_0
.end method

.method public getDropScreen()I
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    :goto_2
    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_2
.end method

.method public getFolderMeasuredHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorTop:I

    :cond_0
    return v0
.end method

.method getIndexOfCell(II)I
    .locals 11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getLRPadding()I

    move-result v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getHitRect(Landroid/graphics/Rect;)V

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_5

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    add-int/lit8 v8, v9, 0x1

    :goto_0
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int v9, p1, v9

    sub-int p1, v9, v6

    iget v9, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v4, :cond_0

    if-gez p1, :cond_6

    const/4 p1, 0x0

    move v1, p1

    :cond_0
    :goto_1
    if-lez v3, :cond_1

    div-int v2, p2, v3

    :cond_1
    add-int/lit8 v9, v5, -0x1

    if-le v1, v9, :cond_2

    add-int/lit8 v1, v5, -0x1

    :cond_2
    add-int/lit8 v9, v8, -0x1

    if-le v2, v9, :cond_3

    add-int/lit8 v2, v8, -0x1

    :cond_3
    mul-int v9, v2, v5

    add-int/2addr v9, v1

    :goto_2
    return v9

    :cond_4
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    add-int/lit8 v8, v9, -0x1

    goto :goto_0

    :cond_5
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    goto :goto_0

    :cond_6
    div-int v1, p1, v4

    goto :goto_1

    :cond_7
    const/4 v9, -0x1

    goto :goto_2
.end method

.method public getLocAndAnimDur(Landroid/view/View;)Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;
    .locals 9

    new-instance v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    iget-object v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mRelPt:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    const/16 v6, 0x12c

    iput v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v6

    sub-int v7, v0, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int v3, v6, v7

    if-ge v0, v2, :cond_1

    iget-object v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mRelPt:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    int-to-float v8, v3

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    :goto_0
    iget v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    iget v7, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    iget v8, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    :cond_0
    return-object v4

    :cond_1
    iget-object v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mRelPt:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    return v0
.end method

.method public getModeCylinderFactor()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method public getPhantomItemViews()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v8, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v8, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v2

    check-cast v6, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v7
.end method

.method public getScaleRatio()Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->getScaleRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getScaledRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getUninstallLockPackageList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "/system/etc/uninstall_lock_packages.txt"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/system/etc/uninstall_lock_packages.txt"

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getPackageList(Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    :goto_2
    return-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getWhichScreen()I
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-lez v2, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    move v5, v4

    :goto_0
    return v5

    :cond_1
    const/4 v6, 0x2

    if-lt v1, v6, :cond_3

    if-gez v3, :cond_2

    div-int/lit8 v6, v2, 0x2

    sub-int v6, v3, v6

    div-int v4, v6, v2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    div-int v4, v6, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    sub-int v0, v6, v7

    if-gez v3, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    if-gtz v0, :cond_5

    add-int/lit8 v4, v1, -0x1

    goto :goto_1

    :cond_5
    if-lez v2, :cond_6

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    div-int v4, v6, v2

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public invalidate()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    return-void
.end method

.method public isOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveCurrentMode(I)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrevMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disablePitchDetection()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeAllViews()V

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrevMode:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->close(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    return-void
.end method

.method public makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v6, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    if-eq v0, v1, :cond_3

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    iput v1, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    move v2, v0

    :goto_0
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const v1, 0x7f030009

    invoke-virtual {v0, p1, v6, p2, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setDrawBadgeCountOn(Z)V

    :cond_0
    if-eq v2, v3, :cond_1

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput v2, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const v1, 0x7f030002

    invoke-virtual {v0, p1, v6, p2, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public menuedit_save()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllEmptyPages()I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->assignEditToNormal()Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    return-void
.end method

.method public onAddDefaultFolder(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    instance-of v4, v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v4, v5, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->termUpdateDB()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "makeFolderInfo"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "makePageInfo"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->getMakePageInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving makePageInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "makePageInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->getMakeFolderInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving makeFolderInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "makeFolderInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    return-void
.end method

.method public onDragEnd()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disableRollNavigation()V

    const-string v0, "onDragEndMM"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    const-string v0, "onDragEndMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    sput v2, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnterMM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->ensureDraggedView()Landroid/view/View;

    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    iput p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 3

    const/4 v2, -0x1

    const-string v0, "onDragExitMM"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeDragGap()Z

    if-eq p1, p0, :cond_1

    const-string v0, "onDragExitMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7

    const/4 v2, -0x1

    const-string v0, "onDragOverMM"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->ensureDraggedView()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    sub-int v1, p2, p4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x4282

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    if-le p2, v0, :cond_2

    :cond_1
    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    const-string v0, "onDragOverMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->setInfo(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragOverDelayed(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onDragOverDelayed(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
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
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->detectTransRefCollision(Landroid/graphics/Point;)Z

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorTop:I

    if-lt v3, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeDragGap()Z

    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v7

    const/4 v0, -0x1

    if-eq v6, v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    if-ne v6, v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    if-eq v7, v0, :cond_3

    :cond_2
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    move-object v1, p0

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragSource(Lcom/sec/android/app/twlauncher/DragSource;IIII)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    :cond_3
    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    invoke-super {p0, v2, v3}, Lcom/sec/android/app/twlauncher/Scene;->setPageOnDragOver(II)V

    return-void

    :cond_4
    const-string v0, "onDragOverDelayedMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const-string v0, "onDragSourceChangedMM"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    if-eq p2, p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disableRollNavigation()V

    const-string v0, "onDragSourceChanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    sput v2, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    :cond_0
    return-void
.end method

.method public onDragStart(Landroid/view/View;FFLcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    instance-of v2, p4, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v2, :cond_0

    move-object v1, p4

    check-cast v1, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    :goto_0
    return-void

    :cond_0
    instance-of v2, p4, Lcom/sec/android/app/twlauncher/LauncherManager;

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 15

    const-string v2, "onDropMM"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :cond_0
    const/4 v2, 0x0

    sput v2, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    const/4 v3, 0x2

    new-array v6, v3, [I

    new-instance v4, Landroid/graphics/Point;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->detectTransRefCollision(Landroid/graphics/Point;)Z

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v3, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v13

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v3, v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_3

    move-object v3, v4

    check-cast v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v5, v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    if-ne v12, v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    const/4 v3, 0x0

    instance-of v8, v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v8, :cond_8

    check-cast v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropFolder()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    const/4 v4, 0x1

    :goto_2
    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    instance-of v3, v3, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v3, :cond_5

    const-string v3, "onDropMM"

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v3, v12}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    :cond_6
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(Landroid/view/View;[I)V

    const/4 v3, 0x0

    aget v3, v6, v3

    const/4 v4, 0x1

    aget v4, v6, v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getPointInScaledDimension(II)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v3

    iget v4, v3, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v6, v3, v2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    int-to-float v4, v4

    iget v5, v7, Landroid/graphics/PointF;->x:F

    int-to-float v6, v6

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    int-to-float v9, v9

    const/16 v10, 0x12c

    new-instance v11, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;

    iget-object v14, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-direct {v11, p0, v14, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;)V

    invoke-interface/range {v2 .. v11}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFILcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V

    iput v12, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    iput v13, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto/16 :goto_2
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDropCompletedMM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->ensureDraggedView()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p6, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    if-ne p1, v0, :cond_2

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disableRollNavigation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    sput v3, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    return-void

    :cond_1
    const-string v0, "No parent"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->hasDropTarget(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->phantomizeDragView(Lcom/sec/android/app/twlauncher/AppMenu;)Z

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v0, :cond_4

    const-string v0, "onDropCompletedMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_0

    const-string v0, "onDropCompletedMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->hasDropTarget(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_1

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v5, v0, :cond_2

    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v9

    iget v3, v9, Landroid/graphics/PointF;->x:F

    iget v4, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_5
    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_0

    :cond_6
    :goto_1
    :pswitch_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/4 v8, 0x0

    goto :goto_0

    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v17

    if-gez v17, :cond_6

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    sub-float v17, v4, v17

    move/from16 v0, v17

    float-to-int v7, v0

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    sub-float v17, v3, v17

    move/from16 v0, v17

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    move/from16 v17, v0

    mul-int v18, v7, v7

    mul-int v19, v6, v6

    add-int v18, v18, v19

    sub-int v10, v17, v18

    const/16 v17, 0x2710

    move/from16 v0, v17

    if-le v10, v0, :cond_6

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    move/from16 v17, v0

    sub-float v17, v3, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    move/from16 v17, v0

    sub-float v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v13, v0, :cond_a

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v15, v0, :cond_b

    const/16 v16, 0x1

    :goto_3
    if-nez v14, :cond_9

    if-eqz v16, :cond_6

    :cond_9
    if-eqz v14, :cond_c

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v14, 0x0

    goto :goto_2

    :cond_b
    const/16 v16, 0x0

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v17

    if-nez v17, :cond_6

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    const/4 v8, 0x1

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v17

    if-eqz v17, :cond_e

    const/4 v8, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v17

    if-nez v17, :cond_f

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    :cond_f
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    const/4 v8, 0x1

    goto :goto_4

    :pswitch_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :pswitch_4
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    sub-float v17, v4, v17

    move/from16 v0, v17

    float-to-int v7, v0

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    sub-float v17, v3, v17

    move/from16 v0, v17

    float-to-int v6, v0

    mul-int v17, v7, v7

    mul-int v18, v6, v6

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    goto/16 :goto_1

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
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v8, :cond_2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_0
    instance-of v5, v0, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v5, :cond_1

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v1, v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    sub-int v6, p4, p2

    invoke-virtual {v5, v3, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setLayout(II)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v5, 0x4000

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v5, :cond_1

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    :cond_3
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/twlauncher/UserFolder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->requestFocus(ILandroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const/16 v8, 0x14

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    const-string v0, "Launcher.MenuManager"

    const-string v1, "Unable to compute pitch/roll; near free fall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f80

    div-float v0, v1, v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    mul-float/2addr v1, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    mul-float/2addr v0, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x42652ee1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$9;->$SwitchMap$com$sec$android$app$twlauncher$MenuManager$PitchState:[I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_0

    if-lt v1, v8, :cond_0

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitLowBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    const-string v2, "Launcher.MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAIT_LOW_BOUND. pitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Az: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    sub-int/2addr v2, v1

    if-lt v2, v8, :cond_0

    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kIconsRaised:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setRaisedIcons()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIconStartTime:J

    const-string v2, "Launcher.MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ICONS_RAISED. pitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Az: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    cmpg-float v2, v0, v5

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    if-ge v1, v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIconStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->resetRaisedIcons()V

    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitHighBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    const-string v2, "Launcher.MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAIT_HIGH_BOUND. pitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Az: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    if-lt v1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitLowBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    const-string v2, "Launcher.MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAIT_LOW_BOUND. pitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Az: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    if-eqz v3, :cond_3

    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v5

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v6, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_5
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    :cond_6
    float-to-int v0, v3

    float-to-int v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    if-eq v0, v9, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    float-to-int v2, v3

    float-to-int v3, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    sub-float/2addr v0, v6

    float-to-int v7, v0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    if-eqz v5, :cond_7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-gt v5, v8, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-le v0, v5, :cond_2

    :cond_7
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    float-to-int v3, v6

    invoke-virtual {v0, v3, v2, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->getTouchScrollOffset(IIZ)I

    move-result v0

    if-eq v0, v9, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setFastScrollFactor()V

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    if-gez v7, :cond_c

    neg-int v0, v0

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-le v3, v0, :cond_2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-lez v3, :cond_b

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_b
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    if-eq v3, v1, :cond_2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int/2addr v0, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_0

    :cond_c
    if-lez v7, :cond_2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-ge v3, v0, :cond_2

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    if-eq v3, v1, :cond_2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int/2addr v0, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-le v0, v6, :cond_11

    move v0, v1

    :goto_2
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-le v5, v6, :cond_e

    move v2, v1

    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_10

    if-nez v0, :cond_f

    if-eqz v2, :cond_10

    :cond_f
    if-eqz v0, :cond_10

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v0, v1, :cond_10

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    float-to-int v2, v3

    float-to-int v5, v4

    invoke-virtual {v0, v2, v5, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    float-to-int v2, v3

    float-to-int v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto :goto_2

    :pswitch_2
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-ne v0, v1, :cond_13

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    if-eq v0, v9, :cond_12

    float-to-int v0, v3

    float-to-int v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v0

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :cond_12
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    :cond_13
    :goto_3
    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->exitSeekBarMode()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearFastScrollFactor()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.intent.action.DVFS_LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    if-le v0, v5, :cond_16

    if-ltz v4, :cond_16

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    add-int/lit8 v3, v4, -0x1

    invoke-virtual {p0, v0, v3, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    goto :goto_3

    :cond_16
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    neg-int v5, v5

    if-ge v0, v5, :cond_17

    add-int/lit8 v0, v3, -0x1

    if-gt v4, v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v0, v3, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    goto/16 :goto_3

    :cond_17
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToDestination()V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public open()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    return-void
.end method

.method public phantomizeDragView(Lcom/sec/android/app/twlauncher/AppMenu;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_1

    const-string v0, "phantomizeDragView"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFolderCB(ZLcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 10

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_0
    if-ltz v4, :cond_3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v9, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v9, :cond_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    instance-of v9, v8, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v9, :cond_0

    move-object v5, v8

    check-cast v5, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-ne v5, p2, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v9, v5}, Lcom/sec/android/app/twlauncher/UserFolderModel;->deleteFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    :goto_1
    if-ltz v6, :cond_2

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v9

    invoke-virtual {p0, v3, v9, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    :cond_3
    return-void
.end method

.method removeItem(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/app/twlauncher/AppMenu;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, v3, :cond_2

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public renameFolder(Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/String;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    const/4 v2, 0x1

    return v2

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getListView()Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->notifyDataChanged()V

    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public restoreEditModeFactor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    return-void
.end method

.method public restoreLM()V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v2

    const/4 v0, 0x0

    const-string v3, "makePageInfo"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    const-string v3, "DebugFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got makePageInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakePageInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    :cond_0
    const-string v3, "makeFolderInfo"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    const-string v3, "DebugFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got makeFolderInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakeFolderInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->restoreSelf()V

    const-string v3, "makePageInfo"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "makeFolderInfo"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method resume()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-le v0, v4, :cond_0

    if-gez v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    :cond_0
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    :cond_2
    if-eqz v2, :cond_3

    mul-int v3, v1, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    :cond_3
    return-void

    :cond_4
    if-lt v1, v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_0
.end method

.method public save()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->saveToDB()Z

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->commit()V

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->leaveCurrentMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllEmptyPages()I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->fixPageAndCellNum()Z

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->assignEditToNormal()Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->enterNewMode(I)Z

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    if-nez v4, :cond_1

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->scrollTo(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->scrollTo(II)V

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    const/16 v5, 0x8

    if-eq v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    add-int/lit8 v6, v2, -0x8

    if-lt v1, v6, :cond_2

    add-int/lit8 v6, v2, 0x8

    if-le v1, v6, :cond_3

    :cond_2
    add-int/lit8 v6, v2, -0x8

    add-int/2addr v6, v0

    if-ge v1, v6, :cond_3

    add-int/lit8 v6, v2, 0x8

    sub-int/2addr v6, v0

    if-gt v1, v6, :cond_5

    :cond_3
    add-int/lit8 v6, v3, -0x8

    if-lt v1, v6, :cond_4

    add-int/lit8 v6, v3, 0x8

    if-le v1, v6, :cond_5

    :cond_4
    add-int/lit8 v6, v3, -0x8

    add-int/2addr v6, v0

    if-ge v1, v6, :cond_5

    add-int/lit8 v6, v3, 0x8

    sub-int/2addr v6, v0

    if-le v1, v6, :cond_5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->freeResources()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeSureAdjacentPagesArePreloaded()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()Z

    :cond_1
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput p1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v2, "launcher"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v2, "menumanager"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "sortmethod"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    :cond_0
    return-void
.end method

.method public setMode(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->leaveCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->enterNewMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setSortMethod(I)V
    .locals 2

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :cond_2
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sortmethod"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView()Z

    goto :goto_0
.end method

.method public setUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const-string v0, "DebugFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting folder model to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const-string v1, "Set Folder Model"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->dumpSelf(Ljava/lang/String;)V

    return-void
.end method

.method protected snapToScreen(Landroid/view/animation/Interpolator;II)V
    .locals 11

    const/4 v7, 0x2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    if-lt v1, v7, :cond_7

    const/4 v6, -0x1

    if-ge p2, v6, :cond_6

    const/4 p2, -0x1

    :cond_2
    :goto_1
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-eq p2, v6, :cond_9

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v3, v6, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v5

    mul-int v4, p2, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v7, :cond_4

    if-gez p2, :cond_a

    add-int/lit8 p2, v1, -0x1

    :cond_4
    :goto_3
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-gez p3, :cond_5

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    mul-int/2addr v6, v2

    div-int p3, v6, v5

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v7, v7

    int-to-float v8, v4

    int-to-long v9, p3

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_0

    :cond_6
    if-le p2, v1, :cond_2

    move p2, v1

    goto :goto_1

    :cond_7
    if-gez p2, :cond_8

    const/4 p2, 0x0

    goto :goto_1

    :cond_8
    if-lt p2, v1, :cond_2

    add-int/lit8 p2, v1, -0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    if-lt p2, v1, :cond_4

    const/4 p2, 0x0

    goto :goto_3
.end method

.method public startUpdateDB()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->updateDB()V

    return-void
.end method

.method public switchToNormalModeDelayedIfNeeded(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDragSource()Lcom/sec/android/app/twlauncher/DragSource;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v1, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public switchToOnDropBackupModeIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupSortMethod:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    return-void
.end method

.method public unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            "Landroid/graphics/PointF;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getPhantomItemViews()Ljava/util/ArrayList;

    move-result-object p3

    :cond_0
    move v3, v1

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_1

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "Add2DropScr"

    const-string v2, "Failed to find matching item !!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->animateToMM(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)Z

    move-result v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method unShiftItems(Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v4

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_2

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getWasShifted()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v9

    :goto_1
    iget v11, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v9, v11, :cond_0

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/twlauncher/AppMenu;

    if-nez v10, :cond_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v10, v12}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v11, v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v11, :cond_0

    invoke-virtual {v10, v12}, Lcom/sec/android/app/twlauncher/AppMenu;->removeViewAt(I)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v12, v12, v12, v12}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x1

    invoke-virtual {v1, v12}, Lcom/sec/android/app/twlauncher/AppMenu;->setWasShifted(Z)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v9

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_5

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v9

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_4

    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    instance-of v11, v3, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v11, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    return-void
.end method

.method public updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v6

    if-ge v6, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v6

    if-ge v6, v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method
