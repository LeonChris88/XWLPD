.class public Lcom/android/emailcommon/service/AccountServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IAccountService;


# instance fields
.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IAccountService;


# direct methods
.method static synthetic access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public accountDeleted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$6;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy$6;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;)V

    const-string v1, "accountDeleted"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountColor(J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$8;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "getAccountColor"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const v0, -0xffff01

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$9;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/AccountServiceProxy$9;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/String;)V

    const-string v1, "getConfigurationData"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$10;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy$10;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;)V

    const-string v1, "getDeviceId"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceIdForWifi(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$11;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/AccountServiceProxy$11;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/String;)V

    const-string v1, "getDeviceIdForWifi"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyLoginFailed(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$1;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "notifyLoginFailed"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public notifyLoginSucceeded(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$2;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "notifyLoginSucceeded"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public notifyNewMessages(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$3;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "notifyNewMessages"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public notifySendFailedOutOfMemoryError(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/service/AccountServiceProxy$5;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;JJ)V

    const-string v1, "notifySendFailed_OutOfMemoryError"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p1}, Lcom/android/emailcommon/service/IAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    return-void
.end method

.method public resetNewMessageCount(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$4;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "resetNewMessageCount"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public restoreAccountsIfNeeded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$7;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy$7;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;)V

    const-string v1, "restoreAccountsIfNeeded"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    return-void
.end method
