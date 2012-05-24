.class public Lcom/android/email/syncnconnect/service/CallbackController;
.super Ljava/lang/Object;
.source "CallbackController.java"


# static fields
.field private static cbqueue:Lcom/android/email/syncnconnect/service/CallbackController;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/syncnconnect/service/CallbackController;->cbqueue:Lcom/android/email/syncnconnect/service/CallbackController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/email/syncnconnect/service/CallbackController;
    .locals 1

    sget-object v0, Lcom/android/email/syncnconnect/service/CallbackController;->cbqueue:Lcom/android/email/syncnconnect/service/CallbackController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/CallbackController;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/CallbackController;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/service/CallbackController;->cbqueue:Lcom/android/email/syncnconnect/service/CallbackController;

    :cond_0
    sget-object v0, Lcom/android/email/syncnconnect/service/CallbackController;->cbqueue:Lcom/android/email/syncnconnect/service/CallbackController;

    return-object v0
.end method

.method private getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const-string v1, "CallbackController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Into getResponseBundle with statusCode :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and statusString :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p1, -0x1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "status_text"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final sendAddAccountCallback(ILjava/lang/String;J)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v2, v0, p3, p4}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onAddAccountFinished(Landroid/os/Bundle;J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public sendDeactivateSncCallback()V
    .locals 4

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onDeactivateSnc()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final sendDeleteAccountCallback(ILjava/lang/String;J)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v2, v0, p3, p4}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onDeleteAccountFinished(Landroid/os/Bundle;J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public sendDeleteAccountFromPortalCallback(JLjava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onDeleteAccountFromWebPortal(JLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v2, v0, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onAvailableAccountsReceived(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v2, v0, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onConfiguredAccountsReceived(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v2, v0, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onGetProfileFinished(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final sendGetTagsCallback(ILjava/lang/String;JLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncTag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v2, v0, p3, p4, p5}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onTagsReceived(Landroid/os/Bundle;JLjava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final sendModifyAccountCallback(ILjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v2, v0}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onModifyAccountFinished(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public sendNewMailNotificationReceived(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v1, p1}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onNewMailNotificationReceived(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v2, v0, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onSyncAccountFinished(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncServiceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v2, v0, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onSyncAllReceived(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public sendUpdateProfileCallback(ILjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v2, v0}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onUpdateProfileFinished(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public sendValidateTokenCallback(ILjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    invoke-virtual {v2, v0}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onValidateTokenComplete(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
