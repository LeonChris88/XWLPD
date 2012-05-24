.class public Landroid/app/enterprise/MiscPolicy;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# static fields
.field public static final ACTION_SIM_CARD_CHANGED:Ljava/lang/String; = "android.intent.action.sec.SIM_CARD_CHANGED"

.field public static final EXTRA_SIM_CHANGE_INFO:Ljava/lang/String; = "simChangeInfo"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mService:Landroid/app/enterprise/IMiscPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MiscPolicy"

    sput-object v0, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed addWebBookmarkBitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed addWebBookmarkByteBuffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeLockScreenString(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->changeLockScreenString(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed changeLockScreenString"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed deleteWebBookmark"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentLockScreenString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getCurrentLockScreenString!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getSystemActiveFont()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getSystemActiveFont!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getSystemFonts()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getSystemFonts!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/SecurityPolicy;->installCertificateWithType(Ljava/lang/String;[B)V

    return-void
.end method

.method public isBluetoothEnabled(Z)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public isCameraEnabled(Z)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isExternalStorageEncrypted()Z
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/SecurityPolicy;->isExternalStorageEncrypted()Z

    move-result v0

    return v0
.end method

.method public isInternalStorageEncrypted()Z
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/SecurityPolicy;->isInternalStorageEncrypted()Z

    move-result v0

    return v0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isWiFiEnabled(Z)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public setBluetoothState(Z)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->setBluetoothState(Z)Z

    move-result v0

    return v0
.end method

.method public setCameraState(Z)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->setCameraState(Z)Z

    move-result v0

    return v0
.end method

.method public setDefaultBackgroundBytes([B)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setDefaultBackgroundBytes([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/SecurityPolicy;->setExternalStorageEncryption(Z)V

    return-void
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/SecurityPolicy;->setInternalStorageEncryption(Z)V

    return-void
.end method

.method public setMicrophoneState(Z)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->setMicrophoneState(Z)Z

    move-result v0

    return v0
.end method

.method public setRingerBytes([BLjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->setRingerBytes([BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingerFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->setRingerFilePath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setSystemFont!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWiFiState(Z)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifi(Z)Z

    move-result v0

    return v0
.end method
