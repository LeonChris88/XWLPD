.class public Lcom/sec/android/app/twlauncher/UserFolder;
.super Lcom/sec/android/app/twlauncher/Folder;
.source "UserFolder.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mHostScreen:I

.field private mRequiresPreload:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mRequiresPreload:Z

    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/sec/android/app/twlauncher/UserFolder;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    return-object v0
.end method

.method private setRequiresPreload()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mRequiresPreload:Z

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x1

    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    iget v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    iget-wide v3, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/UserFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method close()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeFolderView(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->updateHostScreen()V

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {v0, p1, p0, v4, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_0
    return v1
.end method

.method public getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getContentAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/UserFolder;->getHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->invalidate()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->setRequiresPreload()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Folder;->invalidate(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->setRequiresPreload()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Folder;->invalidate(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->setRequiresPreload()V

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

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    instance-of v0, p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-eqz v0, :cond_0

    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v7, v1

    :goto_0
    if-nez v7, :cond_1

    move-object v1, v7

    :goto_1
    return v4

    :cond_0
    instance-of v0, p6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_6

    move-object v1, p6

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v7, v1

    goto :goto_0

    :cond_1
    iget-wide v2, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_5

    new-instance v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v1, v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolder;->addAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v0

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v2, 0x7f080081

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_4
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    :cond_3
    move v4, v8

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v2, 0x7f080082

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_4

    :cond_5
    move-object v1, v7

    goto :goto_2

    :cond_6
    move-object v7, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v3, v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v3, :cond_1

    :goto_0
    invoke-super/range {p0 .. p7}, Lcom/sec/android/app/twlauncher/Folder;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    if-eqz p6, :cond_0

    move-object v2, p7

    check-cast v2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->shouldDelayRemovingFromSourceWhenDrop()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/UserFolder;->removeAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->updateHostScreen()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v6, v6, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v6, :cond_3

    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/Folder;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mHostScreen:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v6

    if-ne v6, v7, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropFolder()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v1, v5

    :goto_1
    if-nez v1, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V

    new-array v3, v7, [I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    aget v8, v3, v4

    aget v5, v3, v5

    invoke-direct {v7, v8, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6, p0, v7, v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->dragFromFolder(Lcom/sec/android/app/twlauncher/UserFolder;Landroid/graphics/Point;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/UserFolder;->removeAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_1
.end method

.method onOpen()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mHostScreen:I

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->requestFocus()Z

    return-void
.end method

.method public removeAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected updateHostScreen()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mHostScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->updateBadgeCounts()V

    :cond_0
    return-void
.end method
