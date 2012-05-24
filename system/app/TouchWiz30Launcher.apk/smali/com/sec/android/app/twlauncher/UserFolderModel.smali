.class public Lcom/sec/android/app/twlauncher/UserFolderModel;
.super Ljava/lang/Object;
.source "UserFolderModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;
    }
.end annotation


# instance fields
.field private mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPreviewIconSize:F

.field private mPreviewIconXGap:F

.field private mPreviewIconYGap:F

.field private mPreviewIconYOffset:F

.field private mPreviewOffsetX:F

.field private mPreviewOffsetY:F

.field private mRes:Landroid/content/res/Resources;

.field private mSpecialFolders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewOffsetX:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewOffsetY:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconSize:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconXGap:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconYGap:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconYOffset:F

    return-void
.end method

.method private getContainingFolderFromList(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ")",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->contains(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private lock(Ljava/util/concurrent/locks/Lock;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method private removeFolderFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v1, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "parent_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "page"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cell"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "menu_item"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parent_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateItemIds(J)Z

    const-string v1, "menu_item"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method private unLock(Ljava/util/concurrent/locks/Lock;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private updateFolderAppToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v5, -0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "parent_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "page"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cell"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "menu_item"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    iget-wide v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const-string v3, "parent_id"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "page"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cell"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "menu_item"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private updateFolderToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isClean()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "page"

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getPageNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cell"

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getCellNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "title"

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "parent_id"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v2, v6, v2

    if-nez v2, :cond_0

    const-string v2, "menu_item"

    const-string v3, ""

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted folder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v2, v6, v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated folder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "menu_item"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->updateFolderAppToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    move-result v0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->markAsClean()V

    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public assignEditToNormal()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->assignEditToNormal()V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public assignNormalToEdit()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->assignNormalToEdit()V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public assignTo(Ljava/util/ArrayList;ZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;ZZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->lock(Ljava/util/concurrent/locks/Lock;)V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assignTo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    throw v1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public commit()V
    .locals 5

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->commit()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public createUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 13

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setFiltered(Z)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setSystemApp(Z)V

    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f020011

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :goto_0
    const/4 v3, 0x0

    instance-of v1, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    move-object v11, v12

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    new-instance v0, Lcom/sec/android/app/twlauncher/FolderDrawable;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    iget v4, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewOffsetX:F

    iget v5, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewOffsetY:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconSize:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconXGap:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconYGap:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconYOffset:F

    const v10, 0x7f070014

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    iput-object v0, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080004

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOwner(I)V

    iput-wide p1, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setParentId(J)V

    const/4 v1, 0x2

    iput v1, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f020044

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_0

    :cond_1
    const-string v1, "DebugFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder image is not a BitmapDrawable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public deleteFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpSelf(Ljava/lang/String;)V
    .locals 5

    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Dumping Added"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Dumping Deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Dumping Current"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Dumping Special"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    return-void
.end method

.method public getAddedFolders()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getContainingFolderFromModel(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getContainingFolderFromList(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getContainingFolderFromList(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getSpecialFolders()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->createUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getUserFolders()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public numFolders()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public removeAllViews()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public removeMissingApps(Ljava/util/HashMap;)Z
    .locals 4
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

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_3

    :cond_3
    return v2
.end method

.method public revert()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->revert()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public saveToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;)Z
    .locals 6

    const-string v3, "DebugFolder"

    const-string v4, "Save Folder Data To DB"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->lock(Ljava/util/concurrent/locks/Lock;)V

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p2}, Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;->canContinue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->updateFolderToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeFolderFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "DebugFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMMFolderInfo() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    :goto_2
    const/4 v3, 0x1

    return v3

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    throw v3
.end method

.method public setFolderOpenFlag(Z)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->lock(Ljava/util/concurrent/locks/Lock;)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iput-boolean p1, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iput-boolean p1, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    throw v2

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iput-boolean p1, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iput-boolean p1, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    goto :goto_1
.end method

.method public syncWithApps(Landroid/widget/ArrayAdapter;)Z
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

    const-string v9, "DebugFolder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Syncing with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/UserFolderModel;->lock(Ljava/util/concurrent/locks/Lock;)V

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->toMap(Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v6

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v7

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_2

    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    instance-of v9, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v4

    const-wide/16 v9, -0x1

    cmp-long v9, v4, v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-virtual {p0, v4, v5, v9}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v9, "DebugFolder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Folder "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " swallows app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isDirty()Z

    move-result v8

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    if-nez v8, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->markAsClean()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    :goto_2
    return v6

    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    goto :goto_2

    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v10}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    throw v9
.end method
