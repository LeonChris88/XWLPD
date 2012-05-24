.class public Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;
.super Lcom/sec/android/app/twlauncher/UserFolderItemView;
.source "LauncherManagerFolderItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected applyScale(Lcom/sec/android/app/twlauncher/GLCanvas;F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, p2, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 3

    const v2, 0x3e99999a

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getFastScrollFactor()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    const/4 v1, 0x0

    return v1
.end method

.method public onContentsChanged()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->onContentsChanged()V

    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    const/4 v2, 0x1

    goto :goto_0
.end method
