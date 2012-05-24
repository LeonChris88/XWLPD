.class public Lcom/android/email/Email;
.super Landroid/app/Application;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/Email$Z7ConnectionListener;
    }
.end annotation


# static fields
.field public static ACCOUNT_SETUP_OPTION:I

.field public static DEBUG:Z

.field public static DEBUG_DEV:Z

.field public static DEBUG_EXCHANGE:Z

.field public static DEBUG_EXCHANGE_FILE:Z

.field public static DEBUG_EXCHANGE_VERBOSE:Z

.field public static DEBUG_PRINT_STACKTRACE:Z

.field public static DEBUG_SENSITIVE:Z

.field public static SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

.field public static SETUP_WIZARD_FLOW:Z

.field public static SETUP_WIZARD_FLOW_FROM_SERVICE:Z

.field public static SNC_DEBUG_DEV:Z

.field public static SNC_RESTORE_ACCOUNT_FLOW_UNDERPROCESS:Z

.field private static emailApp:Lcom/android/email/Email;

.field private static sAccountsChangedNotification:Z

.field public static sDebugInhibitGraphicsAcceleration:Z

.field private static sEmail:Lcom/android/email/Email;

.field private static sMailboxSyncTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sUiThread:Ljava/lang/Thread;


# instance fields
.field private volatile isWaitingForBind:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field mIMQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsEngineIntialized:Z

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mService:Lcom/seven/Z7/common/IZ7Service;

.field private mSettingsManager:Lcom/seven/Z7/common/settings/Z7SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    sput-boolean v1, Lcom/android/email/Email;->DEBUG_PRINT_STACKTRACE:Z

    sput-boolean v1, Lcom/android/email/Email;->DEBUG_DEV:Z

    sput-boolean v1, Lcom/android/email/Email;->SNC_DEBUG_DEV:Z

    const-string v0, "VZW_LTE"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    sput-boolean v1, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    sput-boolean v1, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    sput-boolean v1, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    sput-boolean v1, Lcom/android/email/Email;->DEBUG_EXCHANGE:Z

    sput-boolean v1, Lcom/android/email/Email;->DEBUG_EXCHANGE_VERBOSE:Z

    sput-boolean v1, Lcom/android/email/Email;->DEBUG_EXCHANGE_FILE:Z

    sput-boolean v1, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    sput-boolean v1, Lcom/android/email/Email;->sAccountsChangedNotification:Z

    sput-boolean v1, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    sput-boolean v1, Lcom/android/email/Email;->SNC_RESTORE_ACCOUNT_FLOW_UNDERPROCESS:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    iput-boolean v0, p0, Lcom/android/email/Email;->mIsEngineIntialized:Z

    iput-boolean v0, p0, Lcom/android/email/Email;->isWaitingForBind:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/Email;->mQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/Email;->mIMQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/email/Email$3;

    invoke-direct {v0, p0}, Lcom/android/email/Email$3;-><init>(Lcom/android/email/Email;)V

    iput-object v0, p0, Lcom/android/email/Email;->mConnection:Landroid/content/ServiceConnection;

    sput-object p0, Lcom/android/email/Email;->sEmail:Lcom/android/email/Email;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/Email;)Lcom/seven/Z7/common/IZ7Service;
    .locals 1

    iget-object v0, p0, Lcom/android/email/Email;->mService:Lcom/seven/Z7/common/IZ7Service;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/email/Email;Lcom/seven/Z7/common/IZ7Service;)Lcom/seven/Z7/common/IZ7Service;
    .locals 0

    iput-object p1, p0, Lcom/android/email/Email;->mService:Lcom/seven/Z7/common/IZ7Service;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/email/Email;Lcom/seven/Z7/common/settings/Z7SettingsManager;)Lcom/seven/Z7/common/settings/Z7SettingsManager;
    .locals 0

    iput-object p1, p0, Lcom/android/email/Email;->mSettingsManager:Lcom/seven/Z7/common/settings/Z7SettingsManager;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/email/Email;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/Email;->isWaitingForBind:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/email/Email;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/Email;->mIsEngineIntialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/Email;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/Email;->registerUIApp()V

    return-void
.end method

.method public static enableStrictMode(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->enableStrictMode(Z)V

    return-void
.end method

.method public static getApplication()Lcom/android/email/Email;
    .locals 2

    sget-object v0, Lcom/android/email/Email;->emailApp:Lcom/android/email/Email;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Application not initialized - should not be called from static context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/email/Email;->emailApp:Lcom/android/email/Email;

    return-object v0
.end method

.method public static getApplication(Landroid/content/Context;)Lcom/android/email/Email;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/android/email/Email;->emailApp:Lcom/android/email/Email;

    if-nez v0, :cond_0

    const-string v0, "Z7App"

    const-string v1, "Application manual initialize called."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/email/Email;->emailApp:Lcom/android/email/Email;

    return-object v0
.end method

.method public static getEmailContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/email/Email;->sEmail:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getMailboxRefreshTime(J)J
    .locals 3

    sget-object v2, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getNotifyUiAccountsChanged()Z
    .locals 2

    const-class v0, Lcom/android/email/Email;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/email/Email;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initClientSettings()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "checkbox_save_attachments_without_file_browser"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/email/activity/ActivityResourceInterface;->getString_prefs_email_default_path_value(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "Z7App"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting default attachment folder to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "edittext_default_path_to_save_attachments"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/Email;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$MSNAuthenticatorService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$ContactsSyncAdapterServiceMSN;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/seven/Z7/authenticator/Z7AccountAuthenticatorService$YahooAuthenticatorService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$CalendarSyncAdapterServiceYahoo;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$ContactsSyncAdapterServiceYahoo;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "Z7App"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create default attachment folder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Email"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static printStackTrace()V
    .locals 2

    sget-boolean v1, Lcom/android/email/Email;->DEBUG_PRINT_STACKTRACE:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerUIApp()V
    .locals 4

    const-string v1, "Z7App"

    const-string v2, "register UI app to engine."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Email;->mService:Lcom/seven/Z7/common/IZ7Service;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/Email;->mService:Lcom/seven/Z7/common/IZ7Service;

    const-string v2, "com.seven.Z7.app"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/seven/Z7/common/IZ7Service;->registerThirdPartApp(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/email/Email;->mService:Lcom/seven/Z7/common/IZ7Service;

    const-string v2, "com.seven.Z7.app"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/seven/Z7/common/IZ7Service;->registerThirdPartApp(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Z7App"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized setNotifyUiAccountsChanged(Z)V
    .locals 2

    const-class v0, Lcom/android/email/Email;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/email/Email;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setServicesEnabled(Landroid/content/Context;Z)V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez p1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/android/email/service/MailService;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/email/activity/AccountShortcutPicker;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/email/service/MailService;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v3, v0, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    if-eqz p1, :cond_2

    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/service/MailService;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_2
.end method

.method public static setServicesEnabled(Landroid/content/Context;)Z
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v8, 0x1

    :goto_0
    const-string v0, "Email >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setServicesEnables || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, p0

    new-instance v0, Lcom/android/email/Email$2;

    invoke-direct {v0, v7, v8}, Lcom/android/email/Email$2;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/android/email/Email$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static setServicesEnabledAsync(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/email/Email$1;

    invoke-direct {v0, p0}, Lcom/android/email/Email$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static setServicesEnabledSync(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-static {p0, v8}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v8

    :cond_1
    move v8, v9

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v8, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static updateLoggingFlags(Landroid/content/Context;)V
    .locals 8

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeLogging()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x2

    :goto_1
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeFileLogging()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v2, 0x8

    :goto_3
    or-int v6, v1, v5

    or-int/2addr v6, v3

    or-int v0, v6, v2

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/email/Controller;->serviceLogging(I)V

    return-void

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_2

    :cond_3
    move v2, v6

    goto :goto_3
.end method

.method public static updateMailboxRefreshTime(J)V
    .locals 5

    sget-object v1, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public callWhenServiceConnected(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/Email;->mQueue:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Email;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/email/Email;->startServiceIfNeed()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getIService()Lcom/seven/Z7/common/IZ7Service;
    .locals 1

    iget-object v0, p0, Lcom/android/email/Email;->mService:Lcom/seven/Z7/common/IZ7Service;

    return-object v0
.end method

.method public getSettingsManager()Lcom/seven/Z7/common/settings/Z7SettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/email/Email;->mSettingsManager:Lcom/seven/Z7/common/settings/Z7SettingsManager;

    return-object v0
.end method

.method public isEngineInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/Email;->mIsEngineIntialized:Z

    return v0
.end method

.method public isServiceConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/Email;->mService:Lcom/seven/Z7/common/IZ7Service;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/email/Email;->isWaitingForBind:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/Email;->startServiceIfNeed()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->initInstance()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    sput-object v6, Lcom/android/email/Email;->sUiThread:Ljava/lang/Thread;

    sput-object p0, Lcom/android/email/Email;->emailApp:Lcom/android/email/Email;

    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v6

    sput-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getInhibitGraphicsAcceleration()Z

    move-result v6

    sput-boolean v6, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v6

    invoke-static {v6}, Lcom/android/email/Email;->enableStrictMode(Z)V

    invoke-static {p0}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    invoke-static {p0}, Lcom/android/email/Email;->updateLoggingFlags(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/email/activity/ActivityResourceInterface;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledAsync(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeLogging()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x2

    :goto_1
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeFileLogging()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x4

    :goto_2
    add-int v5, v1, v2

    add-int v0, v5, v3

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/email/Controller;->serviceLogging(I)V

    const/4 v5, 0x6

    invoke-static {v5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/email/Email;->initClientSettings()V

    invoke-static {}, Lcom/digc/seven/CSAccountSyncManager;->getInstance()Lcom/digc/seven/CSAccountSyncManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/digc/seven/CSAccountSyncManager;->sync(Landroid/content/Context;)V

    :cond_0
    return-void

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2
.end method

.method public onTerminate()V
    .locals 2

    const-string v0, "Z7App"

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Controller;->OnCleanup()V

    return-void
.end method

.method public registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V
    .locals 1

    iget-object v0, p1, Lcom/android/email/Email$Z7ConnectionListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Lcom/android/email/Email;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;Landroid/os/Handler;)V

    return-void
.end method

.method public registerListener(Lcom/android/email/Email$Z7ConnectionListener;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/email/Email$4;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Email$4;-><init>(Lcom/android/email/Email;Lcom/android/email/Email$Z7ConnectionListener;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/email/Email;->callWhenServiceConnected(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEngineInitialized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/Email;->mIsEngineIntialized:Z

    return-void
.end method

.method public startServiceIfNeed()V
    .locals 4

    iget-object v1, p0, Lcom/android/email/Email;->mQueue:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/Email;->mService:Lcom/seven/Z7/common/IZ7Service;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/Email;->isWaitingForBind:Z

    if-nez v0, :cond_0

    const-string v0, "Z7App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start Z7Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/seven/Z7/common/IZ7Service;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/Email;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.seven.Z7"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.seven.Z7.service.IZ7Service"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/email/Email;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/email/Email;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/email/Email;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/Email;->isWaitingForBind:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Z7App"

    const-string v2, "startServiceIfNeed() Seven package is not installed."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public unregisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/email/Email$Z7ConnectionListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Lcom/android/email/Email;->unregisterListener(Lcom/android/email/Email$Z7ConnectionListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/android/email/Email$Z7ConnectionListener;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/email/Email$5;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Email$5;-><init>(Lcom/android/email/Email;Lcom/android/email/Email$Z7ConnectionListener;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/email/Email;->callWhenServiceConnected(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
