.class public Landroid/app/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;,
        Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_ENTERPRISE_MIGRATION:Ljava/lang/String; = "android.intent.action.sec.ENTERPRISE_MIGRATION"

.field public static final ACTION_NOTIFY_STORAGE_CARD:Ljava/lang/String; = "android.app.enterprise.action.NOTIFY_STORAGE_CARD"

.field public static final APN_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "apn_settings_policy"

.field public static final APPLICATION_POLICY_SERVICE:Ljava/lang/String; = "application_policy"

.field public static final BLUETOOTH_POLICY_SERVICE:Ljava/lang/String; = "bluetooth_policy"

.field public static final BROWSER_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "browser_policy"

.field public static final CALLING_POLICY_SERVICE:Ljava/lang/String; = "calling_policy"

.field public static final DATA_FADE_POLICY_SERVICE:Ljava/lang/String; = "data_fade_policy"

.field public static final DATE_TIME_POLICY_SERVICE:Ljava/lang/String; = "date_time_policy"

.field public static final DEVICE_INVENTORY_SERVICE:Ljava/lang/String; = "device_info"

.field public static final DO_KEYGUARD:Ljava/lang/String; = "android.app.enterprise.action.DO_KEYGUARD"

.field public static final EAS_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "eas_account_policy"

.field public static final EMAIL_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "email_account_policy"

.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final ENTERPRISE_VPN_POLICY_SERVICE:Ljava/lang/String; = "enterprise_vpn_policy"

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_CURRENT_VERSION:Ljava/lang/String; = "currentVersion"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final EXTRA_MIGRATION_RESULT:Ljava/lang/String; = "migrationResult"

.field public static final FIREWALL_POLICY_SERVICE:Ljava/lang/String; = "firewall_policy"

.field public static final LOCATION_POLICY_SERVICE:Ljava/lang/String; = "location_policy"

.field public static final MISC_POLICY_SERVICE:Ljava/lang/String; = "misc_policy"

.field public static final MTP_BLOCKED:Ljava/lang/String; = "android.app.enterprise.action.MTP_BLOCKED"

.field public static final PASSWORD_POLICY_SERVICE:Ljava/lang/String; = "password_policy"

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final PHONE_RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "phone_restriction_policy"

.field public static final REMOTE_INJECTION_SERVICE:Ljava/lang/String; = "remoteinjection"

.field public static final RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field public static final RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "restriction_policy"

.field public static final ROAMING_POLICY_SERVICE:Ljava/lang/String; = "roaming_policy"

.field public static final SECURITY_POLICY_SERVICE:Ljava/lang/String; = "security_policy"

.field private static TAG:Ljava/lang/String; = null

.field public static final VPN_POLICY_SERVICE:Ljava/lang/String; = "vpn_policy"

.field public static final WIFI_POLICY_SERVICE:Ljava/lang/String; = "wifi_policy"

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1


# instance fields
.field private mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

.field private mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

.field private mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

.field private mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

.field private mCallingPolicy:Landroid/app/enterprise/CallingPolicy;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDatafadePolicy:Landroid/app/enterprise/DatafadePolicy;

.field private mDateTimePolicy:Landroid/app/enterprise/DateTimePolicy;

.field private mDeviceInventory:Landroid/app/enterprise/DeviceInventory;

.field private mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

.field private mEmailAccountPolicy:Landroid/app/enterprise/EmailAccountPolicy;

.field private mEnterpriseVpnPolicy:Landroid/app/enterprise/EnterpriseVpnPolicy;

.field private mFirewallPolicy:Landroid/app/enterprise/FirewallPolicy;

.field private mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

.field private mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

.field private mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mPhonePolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

.field private mSecurityPolicy:Landroid/app/enterprise/SecurityPolicy;

.field private final mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private final mSync:Ljava/lang/Object;

.field private mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

.field private mWifiPolicy:Landroid/app/enterprise/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnterpriseDeviceManager"

    sput-object v0, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    iput-object p1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0, p0, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object v1, v0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enforceActiveAdminPermission(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getActiveAdmins()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdminRemovable()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getAdminRemovable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getApnSettingsPolicy()Landroid/app/enterprise/ApnSettingsPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/ApnSettingsPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/ApnSettingsPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/ApplicationPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/ApplicationPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/BluetoothPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/BluetoothPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/BrowserPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/BrowserPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCallingPolicy()Landroid/app/enterprise/CallingPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicy:Landroid/app/enterprise/CallingPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/CallingPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/CallingPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicy:Landroid/app/enterprise/CallingPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicy:Landroid/app/enterprise/CallingPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentFailedPasswordAttempts()I
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    return v0
.end method

.method public getDatafadePolicy()Landroid/app/enterprise/DatafadePolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDatafadePolicy:Landroid/app/enterprise/DatafadePolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/DatafadePolicy;

    invoke-direct {v0}, Landroid/app/enterprise/DatafadePolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDatafadePolicy:Landroid/app/enterprise/DatafadePolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDatafadePolicy:Landroid/app/enterprise/DatafadePolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/app/enterprise/DateTimePolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/DateTimePolicy;

    invoke-direct {v0}, Landroid/app/enterprise/DateTimePolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/app/enterprise/DateTimePolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/app/enterprise/DateTimePolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDeviceInventory()Landroid/app/enterprise/DeviceInventory;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/app/enterprise/DeviceInventory;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/DeviceInventory;

    invoke-direct {v0}, Landroid/app/enterprise/DeviceInventory;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/app/enterprise/DeviceInventory;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/app/enterprise/DeviceInventory;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getEmailAccountPolicy()Landroid/app/enterprise/EmailAccountPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicy:Landroid/app/enterprise/EmailAccountPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/EmailAccountPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/EmailAccountPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicy:Landroid/app/enterprise/EmailAccountPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicy:Landroid/app/enterprise/EmailAccountPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getEnterpriseKeyVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .locals 1

    sget-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;->ENTERPRISE_KEY_VERSION_1:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

    return-object v0
.end method

.method public getEnterpriseSdkVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;
    .locals 1

    sget-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2_1:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v0
.end method

.method public getEnterpriseVpnPolicy()Landroid/app/enterprise/EnterpriseVpnPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicy:Landroid/app/enterprise/EnterpriseVpnPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/EnterpriseVpnPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseVpnPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicy:Landroid/app/enterprise/EnterpriseVpnPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicy:Landroid/app/enterprise/EnterpriseVpnPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getExchangeAccountPolicy()Landroid/app/enterprise/ExchangeAccountPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/ExchangeAccountPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/ExchangeAccountPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFirewallPolicy()Landroid/app/enterprise/FirewallPolicy;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/app/enterprise/FirewallPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/FirewallPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/FirewallPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/app/enterprise/FirewallPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/app/enterprise/FirewallPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLocationPolicy()Landroid/app/enterprise/LocationPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/LocationPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/LocationPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMaximumFailedPasswordsForWipe()I
    .locals 2

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMaximumTimeToLock()J
    .locals 2

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMiscPolicy()Landroid/app/enterprise/MiscPolicy;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/MiscPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/MiscPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordMaximumLength(I)I
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLength()I
    .locals 2

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/PasswordPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/PasswordPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPasswordQuality()I
    .locals 2

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/PhoneRestrictionPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/RestrictionPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/RoamingPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/RoamingPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicy:Landroid/app/enterprise/SecurityPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/SecurityPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/SecurityPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicy:Landroid/app/enterprise/SecurityPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicy:Landroid/app/enterprise/SecurityPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getVpnPolicy()Landroid/app/enterprise/VpnPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/VpnPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/VpnPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWifiPolicy()Landroid/app/enterprise/WifiPolicy;
    .locals 2

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/WifiPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/WifiPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasAnyActiveAdmin()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v2, :cond_0

    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "No EnterpriseDeviceManager service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->hasAnyActiveAdmin()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get hasAnyActiveAdmin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActivePasswordSufficient()Z
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v0

    return v0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->isAdminRemovable(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public lockNow()V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->packageHasActiveAdmins(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public sendAdminCommandLocked(Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->sendAdminCommandLocked(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAdminRemovable(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->setAdminRemovable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForWipe(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setMaximumTimeToLock(J)V
    .locals 2

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    return-void
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setPasswordMinimumLength(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setPasswordQuality(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public submitEnterprisePayload([B)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->submitEnterprisePayload([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wipeData(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    return-void
.end method
