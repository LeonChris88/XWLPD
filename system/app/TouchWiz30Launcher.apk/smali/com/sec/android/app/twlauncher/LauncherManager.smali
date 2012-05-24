.class public Lcom/sec/android/app/twlauncher/LauncherManager;
.super Landroid/widget/LinearLayout;
.source "LauncherManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
.implements Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;


# static fields
.field private static mNewMode:I


# instance fields
.field private isDpadCenterLongPress:Z

.field private mAddFolderOffsetX:F

.field private mAddPageOffsetX:F

.field private mEmptyFolderMenu:Landroid/view/MenuItem;

.field private mEmptyPageMenu:Landroid/view/MenuItem;

.field private mFolderOffsetY:F

.field private mItemCountColor:I

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field private mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

.field private mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

.field private mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

.field private mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPreviewIconSize:F

.field private mPreviewIconXGap:F

.field private mPreviewIconYGap:F

.field private mPreviewIconYOffset:F

.field private mRes:Landroid/content/res/Resources;

.field private mShowHelp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mShowHelp:Z

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mShowHelp:Z

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->init()V

    return-void
.end method

.method private addMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private closeAllOpenFolderViews()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->invalidate()V

    return-void
.end method

.method private ensureAllIsSaved()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getChildViewLocationF(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 5

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method private getDesiredY()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddFolderOffsetX:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddPageOffsetX:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mFolderOffsetY:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconSize:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconXGap:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYGap:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYOffset:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mItemCountColor:I

    return-void
.end method

.method private openFolderView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->closeAllOpenFolderViews()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->requestLayout()V

    goto :goto_0
.end method

.method private removeMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeFolderView(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    instance-of v8, v6, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v8, :cond_1

    move-object v5, v6

    check-cast v5, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->getChildViewLocationF(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v8

    if-ge v4, v8, :cond_1

    invoke-virtual {v5, v4}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/MenuItemView;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8, v7, v3, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v7, v3, v10}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unPhanToASZWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public close(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->ensureAllIsSaved()Z

    move-result v0

    if-nez v0, :cond_0

    sput p1, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dialogRes(IZZ)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->save()Z

    :cond_0
    :goto_1
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/LauncherManager;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    sget v3, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    if-eq v5, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    sget v4, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->enterNewMode(I)Z

    sput v5, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {v1, v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    invoke-virtual {v1, v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->menuedit_save()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 11

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getHeight()I

    move-result v6

    neg-int v0, v6

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getFastScrollFactor()F

    move-result v10

    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f00

    mul-float/2addr v1, v10

    sub-float/2addr v0, v1

    mul-float/2addr v0, v7

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->getHeight()I

    move-result v0

    sub-int v0, v6, v0

    int-to-float v3, v0

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v0

    int-to-float v4, v0

    int-to-float v5, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    invoke-virtual {v8, p1, p0, v9, v9}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v9

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto :goto_0
.end method

.method public emptyNewFolder(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakeFolderInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    return-void
.end method

.method public emptyNewFolder(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakeFolderInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    return-void
.end method

.method public emptyPageFolder(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakePageInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    return-void
.end method

.method public emptyPageFolder(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakePageInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    return-void
.end method

.method public forceClear(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    return-void
.end method

.method public getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 2
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
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getMakeFolderInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    goto :goto_0
.end method

.method public getMakePageInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    goto :goto_0
.end method

.method public handleBackKey()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDropTarget(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public help1DlgRes(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dontshowhelp1"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public invalidate()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    return-void
.end method

.method public isMakeFolderOrPageOpened()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openCloseFolderPage(Landroid/view/View;)V

    return-void
.end method

.method public onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->closeAllOpenFolderViews()V

    return-void
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
    .locals 15

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/MenuManager;->disableRollNavigation()V

    const/4 v1, 0x0

    move-object/from16 v0, p7

    instance-of v13, v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-eqz v13, :cond_0

    check-cast p7, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual/range {p7 .. p7}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v3

    instance-of v13, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v13, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    :cond_0
    if-nez v1, :cond_3

    :cond_1
    :goto_0
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setChildState(I)V

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setChildState(I)V

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setDragDropEnabled(Z)V

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setDragDropEnabled(Z)V

    if-nez p6, :cond_2

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragEnd()V

    :cond_2
    return-void

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getViewForAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getViewForAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v11

    :cond_4
    if-eqz v11, :cond_1

    instance-of v13, v11, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v13, :cond_1

    move-object v7, v11

    check-cast v7, Lcom/sec/android/app/twlauncher/MenuItemView;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/LauncherManager;->getDropHitRect(Landroid/graphics/Rect;)V

    move/from16 v0, p2

    float-to-int v13, v0

    move/from16 v0, p3

    float-to-int v14, v0

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v8, Landroid/graphics/PointF;

    sub-float v13, p2, p4

    sub-float v14, p3, p5

    invoke-direct {v8, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v7, v8, v14}, Lcom/sec/android/app/twlauncher/MenuManager;->unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    move-result v13

    if-eqz v13, :cond_5

    :goto_1
    if-eqz v12, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    instance-of v13, v10, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v13, :cond_1

    move-object v5, v10

    check-cast v5, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    const/4 v13, 0x0

    invoke-virtual {v5, v1, v13}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    goto :goto_0

    :cond_5
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v12, 0x0

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    invoke-virtual {v2, v7, v8, v13}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unPhanToASZWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    move-result v12

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setActionListener(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;)V

    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setActionListener(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;)V

    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setDrawBadgeCountOn(Z)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setHighlightBitmap(I)V

    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setDrawBadgeCountOn(Z)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setHighlightBitmap(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setFoldersAllowed(Z)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ",
            "Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ",
            "Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    instance-of v1, v11, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v13, p2

    check-cast v13, Lcom/sec/android/app/twlauncher/MenuItemView;

    move/from16 v0, p3

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v10

    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setDragDropEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setDragDropEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v9

    iget v1, v9, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v8, v1, v2

    iget v1, v9, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v12, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v4, v7}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/PointF;

    int-to-float v2, v8

    int-to-float v3, v12

    invoke-direct {v6, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v2, p2

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/DragLayer;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/MenuManager;->enableRollNavigation()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v4, 0x17

    if-ne p2, v4, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    instance-of v3, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->onAddDefaultFolder(Landroid/view/View;)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    if-nez v3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openCloseFolderPage(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-virtual {v1, p1, p0, v2, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->enableRollNavigation()V

    return v3
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public openCloseFolderPage(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openFolderView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public removeMissingApps(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v2

    or-int/2addr v1, v2

    return v1
.end method

.method public restoreSelf()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openFolderView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openFolderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getDesiredY()I

    move-result v1

    sub-int v0, p4, p2

    add-int v2, v1, v0

    invoke-super {p0, p1, v1, p3, v2}, Landroid/widget/LinearLayout;->setFrame(IIII)Z

    move-result v2

    return v2
.end method

.method public setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v1, "launchermanager"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020004

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    return-void
.end method

.method public setMakeFolderInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 13

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setIsNewDropFolder(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v3, 0x0

    instance-of v1, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v11, v12

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    new-instance v0, Lcom/sec/android/app/twlauncher/FolderDrawable;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    iget v4, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddFolderOffsetX:F

    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mFolderOffsetY:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconSize:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconXGap:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYGap:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYOffset:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mItemCountColor:I

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    iput-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOwner(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->clearRejectDragDropList()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->addToRejectDragDropList(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    return-void

    :cond_0
    const-string v1, "LauncherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder image is not a BitmapDrawable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMakePageInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 13

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setIsNewDropPage(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v3, 0x0

    instance-of v1, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v11, v12

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    new-instance v0, Lcom/sec/android/app/twlauncher/FolderDrawable;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    iget v4, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddPageOffsetX:F

    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mFolderOffsetY:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconSize:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconXGap:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYGap:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYOffset:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mItemCountColor:I

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    iput-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOwner(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v1, "LauncherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder image is not a BitmapDrawable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMenuItem(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->removeMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->removeMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->addMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->addMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    return-void
.end method

.method public setShowHelp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mShowHelp:Z

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setVisibility(I)V

    return-void
.end method
