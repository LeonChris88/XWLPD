.class public Lcom/sec/android/app/twlauncher/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/android/app/twlauncher/DragSource;


# instance fields
.field protected mCloseButton:Landroid/widget/Button;

.field protected mContent:Landroid/widget/AbsListView;

.field protected mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

.field protected mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field protected mFolderText:Landroid/widget/TextView;

.field protected mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method close()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method getContentAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    return-object v0
.end method

.method getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    return-void
.end method

.method public onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setId(I)V

    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f06004c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v3, v0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-interface {v2, p2, p0, v3, v1}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showRenameFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    const/4 v0, 0x1

    return v0
.end method

.method onOpen()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-void
.end method
