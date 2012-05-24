.class Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateDBTask"
.end annotation


# instance fields
.field private volatile mChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTerminate:Z

.field private mUpdateThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MMUpdateDBTaskThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mUpdateThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public canContinue()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mChanges:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    const-string v4, "DebugDb"

    const-string v5, "UpdateDBTask thread started"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    if-nez v4, :cond_6

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mChanges:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mChanges:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mChanges:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :try_start_4
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1300(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1400(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "launcher.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "DebugDb"

    const-string v5, "UpdateDBTask Begin Saving to DB"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->canContinue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v4

    invoke-virtual {v4, v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->saveToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->canContinue()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v0, v2, p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppsToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;)V

    :cond_3
    const-string v4, "DebugDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateDBTask End Saving to DB "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->canContinue()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    if-eqz v0, :cond_0

    const-string v4, "DebugDb"

    const-string v5, "UpdateDBTask Close DB"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    const-string v4, "DebugDb"

    const-string v5, "UpdateDBTask Close DB"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    if-eqz v0, :cond_5

    const-string v5, "DebugDb"

    const-string v6, "UpdateDBTask Close DB"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v4

    :cond_6
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateDB()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1600(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1600(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1600(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mChanges:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    :cond_2
    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public waitForTermination()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->terminate()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mUpdateThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mUpdateThread:Ljava/lang/Thread;

    return-void
.end method
