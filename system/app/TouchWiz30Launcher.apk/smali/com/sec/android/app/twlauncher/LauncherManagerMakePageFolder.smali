.class public Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;
.super Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;
.source "LauncherManagerMakePageFolder.java"


# instance fields
.field private mPageFolderFull:Landroid/widget/Toast;

.field private mRejectDragDrop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080076

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "16"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mPageFolderFull:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    instance-of v3, p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    move-object v3, p6

    check-cast v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_3

    move-object v1, v2

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-super/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public addToRejectDragDropList(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearRejectDragDropList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onContentsChanged()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->onContentsChanged()V

    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 13

    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    move-object/from16 v0, p6

    instance-of v11, v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    move-object/from16 v11, p6

    check-cast v11, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    instance-of v11, v10, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v11, :cond_5

    move-object v7, v10

    check-cast v7, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v11

    const/16 v12, 0x10

    if-lt v11, v12, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mPageFolderFull:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v2

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v9

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/MenuManager;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v11, v3, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v11, :cond_3

    move-object v5, v3

    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v5, v9, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v11, v3, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v11, :cond_4

    move-object v5, v3

    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5, v9, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unPhanToASZWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-super/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v11

    goto/16 :goto_0
.end method
