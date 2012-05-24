.class public Lcom/android/emailcommon/service/PolicyServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# instance fields
.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IPolicyService;


# direct methods
.method static synthetic access$002(Lcom/android/emailcommon/service/PolicyServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$1;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/PolicySet;)V

    const-string v1, "clearUnsupportedPolicies"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    goto :goto_0
.end method

.method public getAccountPolicy(J)Lcom/android/emailcommon/service/PolicySet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy$3;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;J)V

    const-string v1, "getAccountPolicy"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    goto :goto_0
.end method

.method public getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy$2;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;)V

    const-string v1, "getAggregatePolicy"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    goto :goto_0
.end method

.method public isActive(Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$4;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/PolicySet;)V

    const-string v1, "isActive"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isActiveAdmin()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$5;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy$5;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;)V

    const-string v1, "isActiveAdmin"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isSupported(Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$6;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$6;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/PolicySet;)V

    const-string v1, "isSupported"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    return-void
.end method

.method public policiesRequired(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy$7;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;J)V

    const-string v1, "policiesRequired"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public reducePolicies()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$10;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy$10;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;)V

    const-string v1, "reducePolicies"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public remoteWipe()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$8;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy$8;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;)V

    const-string v1, "remoteWipe"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public setAccountHoldFlag(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/PolicyServiceProxy$11;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;JZ)V

    const-string v1, "setAccountHoldFlag"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public setRecoverPasswordState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$9;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$9;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Z)V

    const-string v1, "setRecoverPasswordState"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public updatePolicies(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy$12;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;J)V

    const-string v1, "updatePolicies"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method
