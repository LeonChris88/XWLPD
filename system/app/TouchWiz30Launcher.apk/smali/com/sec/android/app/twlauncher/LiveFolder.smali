.class public Lcom/sec/android/app/twlauncher/LiveFolder;
.super Lcom/sec/android/app/twlauncher/Folder;
.source "LiveFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;
    }
.end annotation


# instance fields
.field private mLoadingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/sec/android/app/twlauncher/LiveFolderInfo;",
            "Ljava/lang/Void;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static fromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolder;
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LiveFolder;->isDisplayModeList(Lcom/sec/android/app/twlauncher/FolderInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f030010

    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/LiveFolder;

    return-object v1

    :cond_0
    const v0, 0x7f03000e

    goto :goto_0
.end method

.method private static isDisplayModeList(Lcom/sec/android/app/twlauncher/FolderInfo;)Z
    .locals 2

    check-cast p0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    iget v0, p0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;-><init>(Lcom/sec/android/app/twlauncher/LiveFolder;)V

    new-array v1, v2, [Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    const/4 v2, 0x0

    check-cast p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    return-void
.end method

.method close()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->cleanup()V

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;

    iget-boolean v4, v1, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->useBaseIntent:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v4, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    iget-object v0, v4, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "LiveFolder"

    const-string v5, "ERROR: Failed to get URI from intent"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    iget-wide v5, v1, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v4, 0x400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v5, v1, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method onOpen()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LiveFolder;->requestFocus()Z

    return-void
.end method
