.class public Lcom/sec/android/app/twlauncher/DeleteZone;
.super Landroid/widget/LinearLayout;
.source "DeleteZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragController$DragListener;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

.field private final mApplyIconHoverColorFilter:Z

.field private mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mDelColor:I

.field private mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mDragEnter:Z

.field private mDragEnterForced:Z

.field private mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

.field private final mDrawDeleteZoneBg:Z

.field private mIconHoverColorFilter:Landroid/graphics/ColorFilter;

.field private mIsUninstall:Z

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private final mLocation:[I

.field private mMode:I

.field private mPendingUninstallPackageName:Ljava/lang/String;

.field private mRemoveBg:Landroid/graphics/drawable/Drawable;

.field private mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

.field private mRemoveIcon:Landroid/widget/TextView;

.field private mRemoveSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mRemoveUninstallBg:Landroid/graphics/drawable/Drawable;

.field private mRemoveUninstallBgDragR:Landroid/graphics/drawable/Drawable;

.field private mRemoveUninstallBgDragU:Landroid/graphics/drawable/Drawable;

.field private mRemoveView:Landroid/widget/FrameLayout;

.field private final mSupportAppUninstall:Z

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTrashMode:Z

.field private mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

.field private mUninstColor:I

.field private mUninstallIcon:Landroid/widget/TextView;

.field private mUninstallSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mUninstallView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v1, v5, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLocation:[I

    iput v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x6001

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->DeleteZone:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mSupportAppUninstall:Z

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDrawDeleteZoneBg:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDelColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstColor:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDelColor:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setTrashPaint(I)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBg:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBgDragR:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBgDragU:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JF)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    return-void
.end method

.method private processItemDrop(Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/ItemInfo;Z)V
    .locals 11

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v4

    iget-wide v7, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v9, -0x64

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    instance-of v7, p2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v7, :cond_3

    move-object v7, p2

    check-cast v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    :cond_0
    :goto_0
    instance-of v7, p2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v7, :cond_6

    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeUserFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    if-eqz p3, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/Launcher;->uninstallPackage(Ljava/lang/String;)Z

    :cond_2
    return-void

    :cond_3
    instance-of v7, p2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v7, :cond_4

    move-object v7, p2

    check-cast v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_0

    :cond_5
    instance-of v7, p1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v7, :cond_0

    move-object v5, p1

    check-cast v5, Lcom/sec/android/app/twlauncher/UserFolder;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/UserFolder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v4, v6, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeUserFolderItem(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_0

    :cond_6
    instance-of v7, p2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v7, :cond_7

    move-object v2, p2

    check-cast v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v7, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_1

    :cond_7
    instance-of v7, p2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v7, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, v7, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto :goto_1
.end method

.method private setBgSurface()V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mSupportAppUninstall:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    if-eqz v5, :cond_3

    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIsUninstall:Z

    if-eqz v5, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBgDragU:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v3

    if-lez v4, :cond_1

    if-lez v3, :cond_1

    invoke-virtual {v1, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBgDragR:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    if-eqz v5, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 16

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mSupportAppUninstall:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v12, :cond_2

    move-object/from16 v3, p1

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isSystemApp()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    const-string v12, "android.intent.action.MAIN"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "android.intent.category.LAUNCHER"

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v12, :cond_4

    move-object/from16 v11, p1

    check-cast v11, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    const/4 v2, 0x0

    iget v12, v11, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v12}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v8, 0x1

    if-nez v12, :cond_0

    and-int/lit16 v12, v8, 0x80

    if-nez v12, :cond_0

    iget-object v12, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v12, "DeleteZone"

    const-string v13, "Failed to get application info"

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v12, :cond_0

    move-object/from16 v10, p1

    check-cast v10, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget-object v12, v10, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, v10, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v8, 0x1

    if-nez v12, :cond_0

    and-int/lit16 v12, v8, 0x80

    if-nez v12, :cond_0

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setTrashPaint(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    sget-object v1, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRASH:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mPaintRegion:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method protected drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDrawDeleteZoneBg:Z

    if-eqz v4, :cond_2

    const/high16 v0, 0x3f80

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    const/4 v3, 0x1

    cmpl-float v4, v0, v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    float-to-int v2, v4

    int-to-float v4, v2

    invoke-virtual {p1, v4, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v4, v6, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    float-to-int v2, v4

    int-to-float v4, v2

    invoke-virtual {p1, v6, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    goto :goto_1
.end method

.method public getDeleteAreaRect(Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getDeleteZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    return-object v0
.end method

.method public getDragAnimationXOffset(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public invalidate()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 9

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    if-eqz v6, :cond_2

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/DragLayer;->removeDragRegion(Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;)Z

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isSuspended()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->activate()V

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    if-nez v3, :cond_1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    goto :goto_0
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelPendingScroll()Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIsUninstall:Z

    iget v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstColor:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setTrashPaint(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallIcon:Landroid/widget/TextView;

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIsUninstall:Z

    iget v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDelColor:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setTrashPaint(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIsUninstall:Z

    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstColor:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setTrashPaint(I)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIsUninstall:Z

    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDelColor:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setTrashPaint(I)V

    goto :goto_0
.end method

.method public onDragStart(Landroid/view/View;FFLcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 10

    check-cast p5, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p5}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eq v1, p4, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLocation:[I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mRegion:Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget v5, v3, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    aget v7, v3, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTop:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/DragLayer;->addDragRegion(Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;)Z

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->suspend()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/DeleteZone;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    instance-of v2, p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "DragController.startDrag()\'s dragInfo argument should have been LauncherDragInfo instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, p6

    check-cast v1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    iget-wide v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :goto_0
    return v6

    :cond_1
    iget v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->setDelayRemovingFromSourceWhenDrop(Z)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->processItemDrop(Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/ItemInfo;Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallIcon:Landroid/widget/TextView;

    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->buildDrawingCache()V

    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->buildDrawingCache()V

    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    :cond_1
    return-void
.end method

.method resetMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    return-void
.end method

.method setDragController(Lcom/sec/android/app/twlauncher/DragLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-void
.end method

.method setDragEnterForced(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setHandle(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-void
.end method
