.class public Lcom/android/email/service/EmailBroadcastProcessorService;
.super Landroid/app/IntentService;
.source "EmailBroadcastProcessorService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/android/email/service/EmailBroadcastProcessorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/service/EmailBroadcastProcessorService;->setIntentRedelivery(Z)V

    return-void
.end method

.method private enableComponentsIfNecessary()V
    .locals 1

    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private onBootCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->performOneTimeInitialization()V

    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->enableComponentsIfNecessary()V

    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    return-void
.end method

.method private onSystemAccountChanged()V
    .locals 2

    const-string v0, "Email"

    const-string v1, "System accouns updated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->updateAllWidgets()V

    return-void
.end method

.method private performOneTimeInitialization()V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Preferences;->getOneTimeInitializationProgress()I

    move-result v2

    if-ge v2, v1, :cond_3

    const-string v4, "Email"

    const-string v5, "Onetime initialization: 1"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v4

    if-eqz v4, :cond_0

    const-class v4, Lcom/android/email/service/EasAuthenticatorServiceAlternate;

    invoke-direct {p0, v4, v1}, Lcom/android/email/service/EmailBroadcastProcessorService;->setComponentEnabled(Ljava/lang/Class;Z)V

    const-class v4, Lcom/android/email/service/EasAuthenticatorService;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/email/service/EmailBroadcastProcessorService;->setComponentEnabled(Ljava/lang/Class;Z)V

    :cond_0
    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->enableEasCalendarSync(Landroid/content/Context;)V

    :goto_0
    if-ge v1, v0, :cond_2

    const-string v1, "Email"

    const-string v4, "Onetime initialization: 2"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->setImapDeletePolicy(Landroid/content/Context;)V

    :goto_1
    if-eq v0, v2, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/email/Preferences;->setOneTimeInitializationProgress(I)V

    const-string v0, "Email"

    const-string v1, "Onetime initialization: completed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static processBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/EmailBroadcastProcessorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "broadcast_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static processDevicePolicyMessage(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/EmailBroadcastProcessorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.email.devicepolicy"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private setComponentEnabled(Ljava/lang/Class;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method static setImapDeletePolicy(Landroid/content/Context;)V
    .locals 15

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {p0, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v11

    const-string v1, "imap"

    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    and-int/lit8 v10, v10, -0xd

    or-int/lit8 v10, v10, 0x8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v14, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "broadcast_receiver"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->onBootCompleted()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/android/email/service/MailService;->actionCancel(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->enableComponentsIfNecessary()V

    goto :goto_0

    :cond_3
    const-string v4, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "36245"

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/android/email/activity/ActivityResourceInterface;->openDebugSettingScreen(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v4, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->onSystemAccountChanged()V

    goto :goto_0

    :cond_5
    const-string v4, "com.android.email.devicepolicy"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "message_code"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/email/SecurityPolicy;->onDeviceAdminReceiverMessage(Landroid/content/Context;I)V

    goto :goto_0
.end method
