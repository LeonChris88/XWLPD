.class Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "Z7SyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/authenticator/Z7SyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/authenticator/Z7SyncAdapterService;


# direct methods
.method public constructor <init>(Lcom/seven/Z7/authenticator/Z7SyncAdapterService;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;->this$0:Lcom/seven/Z7/authenticator/Z7SyncAdapterService;

    invoke-direct {p0, p2, p3}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 11

    const-string v7, "SyncThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync requested for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "force"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "force"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v7, "account_internal_id"

    invoke-virtual {v1, p1, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v7, "SyncThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "account id not found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lez v0, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.seven.Z7.service.IZ7Service"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;

    iget-object v7, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;->this$0:Lcom/seven/Z7/authenticator/Z7SyncAdapterService;

    iget v7, v7, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->contentId:I

    iget-object v8, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;->this$0:Lcom/seven/Z7/authenticator/Z7SyncAdapterService;

    invoke-static {v8}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->access$000(Lcom/seven/Z7/authenticator/Z7SyncAdapterService;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v3, v0, v7, v8, v5}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;-><init>(IILjava/lang/Object;Z)V

    iget-object v7, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;->this$0:Lcom/seven/Z7/authenticator/Z7SyncAdapterService;

    invoke-virtual {v7}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v3, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v7, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;->this$0:Lcom/seven/Z7/authenticator/Z7SyncAdapterService;

    invoke-static {v7}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->access$000(Lcom/seven/Z7/authenticator/Z7SyncAdapterService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_1
    iget-object v7, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;->this$0:Lcom/seven/Z7/authenticator/Z7SyncAdapterService;

    invoke-static {v7}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->access$000(Lcom/seven/Z7/authenticator/Z7SyncAdapterService;)Ljava/lang/Object;

    move-result-object v7

    const-wide/32 v9, 0x1d4c0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    invoke-virtual {v3}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->release()V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v7, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;->this$0:Lcom/seven/Z7/authenticator/Z7SyncAdapterService;

    invoke-virtual {v7}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v7, "SyncThread"

    const-string v8, "Unbinding failed."

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v7, "SyncThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t convert accountTag["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] to int"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    :catch_2
    move-exception v7

    goto :goto_2
.end method
