.class public Lcom/sec/android/app/twlauncher/AppShortcutZone;
.super Landroid/widget/LinearLayout;
.source "AppShortcutZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AppShortcutZone$makeVisibleLstnr;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;
    }
.end annotation


# instance fields
.field private mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

.field private mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

.field private mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mApplicationsView:Landroid/view/View;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

.field private final mColumnCount:I

.field private mDoNotAnimateView:Landroid/view/View;

.field private mDragCell:I

.field private mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

.field private mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field private mEnabledChildAnimation:Z

.field private mExecDragOverDelayed:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastShiftedOut:Landroid/view/View;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLauncherManagerScale:F

.field private mLauncherManagerTransX:I

.field private mLauncherManagerTransY:I

.field private mMyContext:Landroid/content/Context;

.field private mMyOnClickListener:Landroid/view/View$OnClickListener;

.field private mMyOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOldOrientation:I

.field private mOrientation:I

.field private mScaledRect:Landroid/graphics/RectF;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;Lcom/sec/android/app/twlauncher/AppShortcutZone$1;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnKeyListener:Landroid/view/View$OnKeyListener;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->AppShortcutZone:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v1, v4, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AppShortcutZone_iconColumnCount should be at least 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/AppShortcutZone;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/AppShortcutZone;Landroid/view/View;IIIILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->layoutChild(Landroid/view/View;IIIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mExecDragOverDelayed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/twlauncher/AppShortcutZone;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mExecDragOverDelayed:Z

    return p1
.end method

.method private addItem(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    :cond_0
    return-void
.end method

.method private arrangeItem(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v5, -0x1

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method private fixItemIndexes()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v5, -0x1

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getGap(III)I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int v4, p2, p1

    sub-int v2, v3, v4

    :goto_0
    if-lez v2, :cond_0

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ne p1, v3, :cond_2

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    add-int/lit8 v3, v3, -0x1

    div-int v0, v2, v3

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int v4, p3, p1

    sub-int v2, v3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v3, p1, 0x1

    div-int v0, v2, v3

    goto :goto_1
.end method

.method private getIndexOfCell(II)I
    .locals 12

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v3

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v3, v2, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getGap(III)I

    move-result v4

    if-gez v3, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v6

    const/4 v0, -0x1

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingLeft()I

    move-result v7

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v10, v3, -0x1

    if-ge v5, v10, :cond_2

    add-int/lit8 v10, v5, 0x1

    add-int v11, v4, v2

    mul-int/2addr v10, v11

    add-int v8, v7, v10

    if-ge p1, v8, :cond_3

    move v0, v5

    :cond_2
    :goto_2
    if-gez v0, :cond_0

    add-int/lit8 v0, v3, -0x2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingTop()I

    move-result v7

    add-int/lit8 v5, v3, -0x1

    :goto_3
    if-lez v5, :cond_2

    add-int/lit8 v10, v5, 0x1

    mul-int/2addr v10, v4

    add-int/2addr v10, v7

    mul-int v11, v5, v1

    add-int v9, v10, v11

    if-le p2, v9, :cond_5

    add-int/lit8 v10, v3, -0x1

    sub-int v0, v10, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_3
.end method

.method private getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.twlauncher.application"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.twlauncher.home"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransX:I

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransY:I

    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerScale:F

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->initApplicationsView()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-nez v2, :cond_2

    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0xc8

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    new-instance v3, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initApplicationsView()V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.twlauncher.application"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    const v6, 0x7f02001a

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundResource(I)V

    invoke-virtual {v5, v2, v4, v3, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPadding(IIII)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    new-instance v6, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    return-void
.end method

.method private layoutChild(Landroid/view/View;IIIILjava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 8

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    if-eq v4, v5, :cond_0

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    iput v4, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    if-eq v4, v7, :cond_1

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    iput v4, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iput v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    :cond_1
    return-object v1
.end method

.method private slideASZItems(IIIIZ)Landroid/view/View;
    .locals 22

    new-instance v3, Landroid/graphics/PointF;

    move/from16 v0, p1

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v5, v6, v7, v8, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapPtToRectGlobal(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v3

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v3

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getColumnCount()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v14

    if-nez v15, :cond_2

    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v18, v0

    const/16 v16, 0x0

    if-ne v10, v9, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getIndexOfCell(II)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    const/16 v16, 0x1

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->createView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p5, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragSource(Lcom/sec/android/app/twlauncher/DragSource;IIII)V

    :cond_1
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    new-instance v4, Landroid/graphics/PointF;

    const/4 v5, 0x0

    aget v5, v18, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v14, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->aszShiftOut(Landroid/view/View;Landroid/graphics/PointF;)V

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getIndexOfCell(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-eq v13, v3, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->fixItemIndexes()V

    return-object v15
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addViewAtEnd(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->createView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public animateToASZ(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)Z
    .locals 10

    const/4 v9, 0x1

    instance-of v1, p1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v1, :cond_1

    const/16 v7, 0x12c

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getBottom()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v1, v2, v3, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    invoke-static {v5, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapPtToRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v5

    :cond_0
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v9, v9}, Lcom/sec/android/app/twlauncher/DragLayer;->getGenericViewAnims(IZ)Lcom/sec/android/app/twlauncher/GenericViewAnim;

    move-result-object v0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->addAnim(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    return v9

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V

    goto :goto_0
.end method

.method public appendApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public aszShiftIn(Landroid/view/View;)Z
    .locals 8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getLocAndAnimDur(Landroid/view/View;)Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    const-string v4, "aszShiftIn"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->unShiftItems(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addViewAtEnd(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v1, :cond_5

    check-cast p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    :cond_5
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setVisibility(I)V

    iget-object v1, v3, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mRelPt:Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getBottom()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getScaledRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapPtToRectGlobal(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;

    new-instance v3, Lcom/sec/android/app/twlauncher/AppShortcutZone$makeVisibleLstnr;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$makeVisibleLstnr;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancelDragOverDelayed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mExecDragOverDelayed:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public changeApplicationsIcon()V
    .locals 5

    const v4, 0x7f08004f

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.twlauncher.application"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.twlauncher.home"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.twlauncher.home"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public clearApplications()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    return-void
.end method

.method public createView(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->arrangeItem(I)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    const/16 v17, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v13

    float-to-double v3, v13

    const-wide/16 v6, 0x0

    cmpl-double v3, v3, v6

    if-lez v3, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setSubdivide(Z)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const/high16 v8, 0x3f80

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v8

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    cmpl-float v3, v8, v3

    if-nez v3, :cond_2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v11

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/DeleteZone;->getDeleteZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    float-to-int v12, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_5

    float-to-double v3, v13

    const-wide/high16 v6, 0x3ff0

    cmpg-double v3, v3, v6

    if-gez v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    or-int v17, v17, v3

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v2

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerScale:F

    invoke-static {v3, v4, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransX:I

    int-to-float v3, v3

    mul-float v6, v3, v13

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransY:I

    int-to-float v4, v4

    mul-float/2addr v4, v13

    add-float v7, v3, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->drawGenericViewAnims(ILcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v3

    or-int v17, v17, v3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x3ecccccd

    mul-float/2addr v3, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    :cond_3
    const/4 v14, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/MenuManager;->getFastScrollFactor()F

    move-result v14

    :goto_2
    const/4 v3, 0x0

    cmpl-float v3, v14, v3

    if-eqz v3, :cond_4

    const v3, 0x3e99999a

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v14

    const v6, 0x3e99999a

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v10, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    check-cast v18, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v3

    or-int v17, v17, v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getFastScrollFactor()F

    move-result v14

    goto :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 7

    const/16 v6, 0x42

    const/16 v5, 0x11

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_3

    if-ne p2, v5, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-ne p2, v6, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    if-ne p2, v5, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_0

    :cond_5
    if-ne p2, v6, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
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
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v3, :cond_1

    const-string v3, "DebugPlacement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Owner = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getPhantomItemViews()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v5, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public invalidate()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidateViewTree(Landroid/view/View;)V

    return-void
.end method

.method public loadApplications()V
    .locals 9

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadTopAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropTopApplicationCache()V

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_2

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->initTopApp(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    invoke-virtual {v2, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditPageNum(I)V

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCellNum(I)V

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditCellNum(I)V

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setDefaultSort(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 1

    const-string v0, "onDragEnterASZ"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 1

    const-string v0, "onDragExitASZ"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7

    const-string v0, "onDragOverASZ"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    move-object v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->setInfo(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onDragOverDelayed(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->slideASZItems(IIIIZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

    return-void
.end method

.method public onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 1

    const-string v0, "onDragSourceChangedASZ"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    if-eq p2, p0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unShiftItems()V

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v0, "onDropASZ"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-eq v0, v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08006f

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->slideASZItems(IIIIZ)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unShiftItems()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalModeDelayedIfNeeded(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    const-string v5, "onDropCompleted ASZ"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    const/4 v2, -0x1

    if-eqz p6, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->hasDropTarget(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_0

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    if-gez v5, :cond_4

    move v2, v6

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    :cond_1
    instance-of v5, p1, Lcom/sec/android/app/twlauncher/MenuDrawer;

    if-nez v5, :cond_2

    instance-of v5, p1, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unShiftItems()V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    const/4 v5, -0x1

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    return-void

    :cond_4
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    goto :goto_0

    :cond_5
    if-nez v4, :cond_7

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    if-gez v5, :cond_6

    move v2, v6

    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->createView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    goto :goto_2

    :cond_7
    move-object v5, v4

    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v0, :cond_0

    const/4 v11, 0x0

    :goto_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v11, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->stop()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    if-lez v9, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v12

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingTop()I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-nez v12, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    mul-int v4, v8, v9

    sub-int v14, v0, v4

    if-lez v14, :cond_1

    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ne v9, v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    add-int/lit8 v0, v0, -0x1

    div-int v10, v14, v0

    :cond_1
    :goto_1
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_8

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

    if-eq v1, v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    add-int v0, v2, v8

    add-int v4, v3, v7

    invoke-virtual {v13, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v0, v0, v11

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_3
    add-int v0, v8, v10

    add-int/2addr v2, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v9, 0x1

    div-int v10, v14, v0

    add-int/2addr v2, v10

    goto :goto_1

    :cond_3
    add-int v4, v2, v8

    add-int v5, v3, v7

    const-string v6, "onLayoutHorz"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->layoutChild(Landroid/view/View;IIIILjava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    mul-int v4, v7, v9

    sub-int v14, v0, v4

    if-lez v14, :cond_5

    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ne v9, v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    add-int/lit8 v0, v0, -0x1

    div-int v10, v14, v0

    :cond_5
    :goto_4
    add-int/lit8 v11, v9, -0x1

    :goto_5
    if-ltz v11, :cond_8

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

    if-eq v1, v0, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    add-int v0, v2, v8

    add-int v4, v3, v7

    invoke-virtual {v13, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v0, v0, v11

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_6
    add-int v0, v7, v10

    add-int/2addr v3, v0

    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v9, 0x1

    div-int v10, v14, v0

    add-int/2addr v3, v10

    goto :goto_4

    :cond_7
    add-int v4, v2, v8

    add-int v5, v3, v7

    const-string v6, "onLayoutVert"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->layoutChild(Landroid/view/View;IIIILjava/lang/String;)V

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

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

.method removeItem(Landroid/view/View;)I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_2

    move v3, v2

    :cond_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public saveToDB()Z
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v5, -0x1

    invoke-virtual {v0, v5, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    return v5
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-void
.end method

.method public setEnabledChildAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-void
.end method

.method public unPhanToASZWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z
    .locals 5
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

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPhantomItemViews()Ljava/util/ArrayList;

    move-result-object p3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    move-object v1, v2

    :cond_1
    if-nez v1, :cond_3

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    invoke-virtual {p0, v1, p2, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->animateToASZ(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)Z

    move-result v3

    goto :goto_1
.end method

.method public unShiftItems()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getColumnCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    if-eqz v2, :cond_0

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->aszShiftIn(Landroid/view/View;)Z

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    return-void
.end method
