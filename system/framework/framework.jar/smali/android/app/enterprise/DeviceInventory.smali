.class public Landroid/app/enterprise/DeviceInventory;
.super Ljava/lang/Object;
.source "DeviceInventory.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DeviceInventory"

    sput-object v0, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "device_info"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    return-void
.end method


# virtual methods
.method public clearCallingLog()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->clearCallingLog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearSMSLog()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->clearSMSLog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dataUsageTimerActivation()V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->dataUsageTimerActivation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableCallingCapture(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->enableCallingCapture(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSMSCapture(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->enableSMSCapture(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvailableCapacityExternal()J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityExternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAvailableCapacityInternal()J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityInternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAvailableRamMemory()J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableRamMemory()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesReceivedNetwork()J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesReceivedNetwork()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesReceivedWiFi()J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesReceivedWiFi()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesSentNetwork()J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesSentNetwork()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesSentWiFi()J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesSentWiFi()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataCallLoggingEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallLoggingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataCallStatisticsEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallStatisticsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getDataCallStatisticsEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataUsageTimer()I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataUsageTimer()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceMaker()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOS()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOSVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDevicePlatform()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceProcessorSpeed()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceProcessorSpeed()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceProcessorType()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceProcessorType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDroppedCallsCount()I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDroppedCallsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getInboundSMSCaptured()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getInboundSMSCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncomingCallingCaptured()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getIncomingCallingCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMissedCallsCount()I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getMissedCallsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModemFirmware()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModemFirmware()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutboundSMSCaptured()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getOutboundSMSCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutgoingCallingCaptured()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getOutgoingCallingCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlatformSDK()I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformSDK()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlatformVersionName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformVersionName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSuccessCallsCount()I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getSuccessCallsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTotalCapacityExternal()J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityExternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getTotalCapacityInternal()J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityInternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getTotalRamMemory()J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalRamMemory()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getWifiStatisticEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getWifiStatisticEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCallingCaptureEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isCallingCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceCompromised()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceCompromised()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceSecure()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSMSCaptureEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isSMSCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetCallsCount()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->resetCallsCount()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetDataCallLogging(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->resetDataCallLogging(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to resetDataCallLogging (String time)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetDataUsage()V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->resetDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataCallLoggingEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataCallLoggingEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataCallStatisticsEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataCallStatisticsEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setDataCallLoggingStatisticsEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataUsageTimer(I)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataUsageTimer(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiStatisticEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setWifiStatisticEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    iget-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IDeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v6

    sget-object v0, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device inventory policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IDeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateDataUsageState()V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->updateDataUsageState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
