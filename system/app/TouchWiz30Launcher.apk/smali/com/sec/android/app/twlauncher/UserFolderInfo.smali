.class Lcom/sec/android/app/twlauncher/UserFolderInfo;
.super Lcom/sec/android/app/twlauncher/FolderInfo;
.source "UserFolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;
    }
.end annotation


# instance fields
.field private mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

.field public mHighlightedIcon:Landroid/graphics/drawable/Drawable;

.field private mIsNewDropFolder:Z

.field private mIsNewDropPage:Z

.field private mShadowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingList:Ljava/util/ArrayList;
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
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderInfo;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mHighlightedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setCreateTime(J)V

    return-void
.end method

.method private syncBubbleItemView(Lcom/sec/android/app/twlauncher/BubbleTextView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidateIconSurface()V

    return-void
.end method

.method private syncItemView(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->forceReload()V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->invalidateSurface()V

    return-void
.end method

.method private syncLMFolderView(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private syncMenuItem(Landroid/view/MenuItem;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private syncSimpleTextIconItem(Lcom/sec/android/app/twlauncher/SimpleTextIconItem;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private syncUserFolder(Lcom/sec/android/app/twlauncher/UserFolder;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    move-result v0

    return v0
.end method

.method public add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFolderView(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    return-void
.end method

.method public commit()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->fixIndices()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    return v2
.end method

.method public contains(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copyFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->copyFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    :cond_1
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    return-void
.end method

.method public fixIndices()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    const-string v2, "DebugPlacement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fix indices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
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
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getBadgeCount()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isNewDropFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    return v0
.end method

.method public isNewDropPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    return v0
.end method

.method public markAsClean()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/FolderInfo;->markAsClean()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    const-string v0, "title"

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z
    .locals 2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    return v1
.end method

.method public removeAllViews()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeFolderView(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeMissingApps(Ljava/util/HashMap;)Z
    .locals 5
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

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    return v2
.end method

.method public renewFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->copyFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    return-void
.end method

.method public revert()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    const/4 v0, 0x1

    return v0
.end method

.method public setIsNewDropFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    return-void
.end method

.method public setIsNewDropPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    return-void
.end method

.method public setOnContentsChangedListener(Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    return-void
.end method

.method syncAllViews()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolder;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncUserFolder(Lcom/sec/android/app/twlauncher/UserFolder;)V

    :cond_0
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncLMFolderView(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    :cond_1
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncItemView(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    :cond_2
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncSimpleTextIconItem(Lcom/sec/android/app/twlauncher/SimpleTextIconItem;)V

    :cond_3
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/twlauncher/BubbleTextView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncBubbleItemView(Lcom/sec/android/app/twlauncher/BubbleTextView;)V

    :cond_4
    instance-of v2, v1, Landroid/view/MenuItem;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/view/MenuItem;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncMenuItem(Landroid/view/MenuItem;)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public updateBadgeCount()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->updateBadgeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public updateItemIds(J)Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method
