.class public Landroid/app/enterprise/BluetoothPolicy;
.super Ljava/lang/Object;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/BluetoothPolicy$BluetoothProfile;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IBluetoothPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BluetoothPolicy"

    sput-object v0, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    return-void
.end method


# virtual methods
.method public allowBluetooth(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->allowBluetooth(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowOutgoingCalls(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->allowOutgoingCalls(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowBluetoothDataTransfer()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getAllowBluetoothDataTransfer()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 3

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IBluetoothPolicy;->isBluetoothEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public isDesktopConnectivityEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isDesktopConnectivityEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDiscoverableEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isDiscoverableEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLimitedDiscoverableEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isLimitedDiscoverableEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOutgoingCallsAllowed()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isOutgoingCallsAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPairingEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isPairingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isProfileEnabled(I)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRequiredPasswordForDiscovery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRequiredPasswordForEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAllowBluetoothDataTransfer(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setAllowBluetoothDataTransfer(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBluetoothState(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setBluetooth(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDesktopConnectivityState(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setDesktopConnectivityState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDiscoverableState(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setDiscoverableState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitedDiscoverableState(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setLimitedDiscoverableState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPairingState(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setPairingState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProfileState(ZI)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IBluetoothPolicy;->setProfileState(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequiredPasswordForDiscovery(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setRequiredPasswordForEnable(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
