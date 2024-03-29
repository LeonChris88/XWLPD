.class Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;
.super Lcom/seven/Z7/common/IZ7ServiceCallback$Stub;
.source "Z7SyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/authenticator/Z7SyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncCallbackListener"
.end annotation


# instance fields
.field private final account:I

.field private final contentId:I

.field private final lock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/seven/Z7/common/IZ7ServiceCallback$Stub;-><init>()V

    iput p1, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;->account:I

    iput p2, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;->contentId:I

    iput-object p3, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;->lock:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private notify(Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;I)V
    .locals 4

    sget-object v1, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_SYNC_ADAPTER_SYNC_DONE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;->account:I

    if-eq p2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SyncAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;->contentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") done for account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;->lock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public callback(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "event-id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;->notify(Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;I)V

    goto :goto_0
.end method

.method public callback2(Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getSystemCallbackType()Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getAccountId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;->notify(Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;I)V

    return-void
.end method
