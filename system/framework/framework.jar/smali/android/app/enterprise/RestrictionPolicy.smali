.class public Landroid/app/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# static fields
.field public static final ALLOW_SETTINGS_CHANGES:Ljava/lang/String; = "edm.intent.action.allow.settings"

.field public static final EXTERNAL_STORAGE_PATH_SD:Ljava/lang/String; = "/mnt/sdcard/external_sd"

.field public static final MTP_DISABLED:Ljava/lang/String; = "edm.intent.action.disable.mtp"

.field private static TAG:Ljava/lang/String;

.field public static final settingsExceptions:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mService:Landroid/app/enterprise/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "RestrictionPolicy"

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.ActivityPicker"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.AppWidgetPickActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.settings.ChooseLockPassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.settings.DeviceAdminAdd"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    return-void
.end method


# virtual methods
.method public allowBluetooth(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->allowBluetooth(Z)Z

    move-result v0

    return v0
.end method

.method public allowFactoryReset(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowFactoryReset(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowSettingsChanges(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowSettingsChanges(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowWiFi(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isBackgroundDataEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isBackgroundDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBackupAllowed(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isBackupAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBluetoothEnabled(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public isBluetoothTetheringEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isBluetoothTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCameraEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isCameraEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCellularDataAllowed()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isCellularDataAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isClipboardAllowed(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isClipboardAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isFactoryResetAllowed()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isFactoryResetAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isHomeKeyEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isHomeKeyEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMockLocationEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isMockLocationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNFCEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isNFCEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNonMarketAppAllowed()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isNonMarketAppAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isScreenCaptureEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSdCardEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isSdCardEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTetheringEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbDebuggingEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbDebuggingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbKiesAvailable(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbKiesAvailable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbMassStorageEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbMassStorageEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbMediaPlayerAvailable(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbTetheringEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWiFiEnabled(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isWifiTetheringEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isWifiTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowNonMarketApps(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setAllowNonMarketApps(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackgroundData(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBackgroundData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackup(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBackup(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBluetoothState(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->setBluetoothState(Z)Z

    move-result v0

    return v0
.end method

.method public setBluetoothTethering(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBluetoothTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCameraState(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setCamera(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCellularData(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setCellularData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setClipboardEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setClipboardEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnableNFC(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setEnableNFC(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeKeyState(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setHomeKeyState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMicrophoneState(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setMicrophoneState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMockLocation(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setMockLocation(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScreenCapture(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setScreenCapture(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSdCardState(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setSdCardState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTethering(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbDebuggingEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbDebuggingEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbKiesAvailability(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbKiesAvailability(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbMassStorage(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbMassStorage(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbMediaPlayerAvailability(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbMediaPlayerAvailability(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbTethering(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWiFiState(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifi(Z)Z

    move-result v0

    return v0
.end method

.method public setWifiTethering(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setWifiTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
