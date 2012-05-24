.class public Lcom/android/email/service/MailService;
.super Landroid/app/Service;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/MailService$EmailSyncStatusObserver;,
        Lcom/android/email/service/MailService$ControllerResults;,
        Lcom/android/email/service/MailService$AccountSyncReport;
    }
.end annotation


# static fields
.field private static final NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

.field public static NOTIFICATION_ID_EXCHANGE_CALENDAR_ADDED:I

.field public static NOTIFICATION_ID_NEW_MESSAGES:I

.field public static NOTIFICATION_ID_SECURITY_NEEDED:I

.field static mClearNewMessages:Landroid/content/ContentValues;

.field static mSyncReports:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/service/MailService$AccountSyncReport;",
            ">;"
        }
    .end annotation
.end field

.field private static sMailService:Lcom/android/email/service/MailService;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mController:Lcom/android/email/Controller;

.field private final mControllerCallback:Lcom/android/email/Controller$Result;

.field private mHandler:Landroid/os/Handler;

.field public mIsSocialHubOnTop:Z

.field private mStartId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput v1, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    const/4 v0, 0x2

    sput v0, Lcom/android/email/service/MailService;->NOTIFICATION_ID_SECURITY_NEEDED:I

    const/4 v0, 0x3

    sput v0, Lcom/android/email/service/MailService;->NOTIFICATION_ID_EXCHANGE_CALENDAR_ADDED:I

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "newMessageCount"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/service/MailService;->NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->mClearNewMessages:Landroid/content/ContentValues;

    sget-object v0, Lcom/android/email/service/MailService;->mClearNewMessages:Landroid/content/ContentValues;

    const-string v1, "newMessageCount"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/email/service/MailService$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$ControllerResults;-><init>(Lcom/android/email/service/MailService;)V

    iput-object v0, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/MailService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/service/MailService;->mIsSocialHubOnTop:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/MailService;JLandroid/app/AlarmManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/service/MailService;->setWatchdog(JLandroid/app/AlarmManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/service/MailService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/service/MailService;->isBackgroundDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/service/MailService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/service/MailService;Lcom/android/email/Controller;JI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/service/MailService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/service/MailService;->NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/service/MailService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/service/MailService;->notifyNewMessages(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/service/MailService;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/service/MailService;->notifySendFailed_OutOfMemoryError(JJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/service/MailService;)I
    .locals 1

    iget v0, p0, Lcom/android/email/service/MailService;->mStartId:I

    return v0
.end method

.method public static accountDeleted(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    return-void
.end method

.method public static actionCancel(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static actionNotifyNewMessages(Landroid/content/Context;J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static actionNotifySendFailedOutOfMemoryError(Landroid/content/Context;JJ)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SENDFAIL_OUTOFMEMORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.extra.MESSAGE"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static actionReschedule(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static actionSendPendingMail(Landroid/content/Context;J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static actionSyncOneAccount(Landroid/content/Context;J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SYNC_ONE_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private cancel()V
    .locals 6

    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static getCountofAccounts(Landroid/content/Context;)I
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "SUM(unreadCount)"

    aput-object v1, v2, v0

    const-string v3, "type=0"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    const-string v1, "Email-MailService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In getCountofAccounts, total email count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method static getMailServiceForTest()Lcom/android/email/service/MailService;
    .locals 1

    sget-object v0, Lcom/android/email/service/MailService;->sMailService:Lcom/android/email/service/MailService;

    return-object v0
.end method

.method private isBackgroundDataEnabled()Z
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private notifyNewMessages(J)V
    .locals 5

    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/MailService$AccountSyncReport;

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->notify:Z

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    invoke-virtual {v0}, Lcom/android/email/service/MailService$AccountSyncReport;->getJustFetchedMessageCount()I

    move-result v3

    iget v4, v0, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    iput v4, v0, Lcom/android/email/service/MailService$AccountSyncReport;->lastUnseenMessageCount:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/android/email/NotificationController;->showNewMessageNotification(JII)V

    const-string v0, "Email-MailService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyNewMessages accountId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " unseenMessageCount ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " justFetchedCount="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/service/TextToSpeechService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "TTS_TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/email/service/MailService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifySendFailed_OutOfMemoryError(JJ)V
    .locals 6

    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    const/4 v5, 0x0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/NotificationController;->showSendFailedNotification(JJI)V

    return-void
.end method

.method public static resetNewMessageCount(Landroid/content/Context;J)V
    .locals 6

    sget-object v3, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    const-wide/16 v4, -0x1

    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    iget-wide v4, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    cmp-long v2, p1, v4

    if-nez v2, :cond_0

    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/email/service/MailService$AccountSyncReport;->lastUnseenMessageCount:I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    new-instance v2, Lcom/android/email/service/MailService$1;

    invoke-direct {v2, p1, p2, p0}, Lcom/android/email/service/MailService$1;-><init>(JLandroid/content/Context;)V

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setWatchdog(JLandroid/app/AlarmManager;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x927c0

    add-long v0, v3, v5

    const/4 v5, 0x2

    invoke-virtual {p3, v5, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZLandroid/accounts/AccountManagerCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "ZZZZ",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    :try_start_0
    const-string v1, "username"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contacts"

    invoke-virtual {v4, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "calendar"

    invoke-virtual {v4, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "email"

    invoke-virtual {v4, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "tasks"

    invoke-virtual {v4, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "account_id"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "com.android.exchange"

    :goto_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :goto_1
    return-void

    :cond_0
    const-string v1, "com.android.email"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private syncOneAccount(Lcom/android/email/Controller;JI)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {p0, p2, p3, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    int-to-long v5, p4

    move-object v0, p1

    move-wide v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller;->serviceCheckMail(JJJ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateBadgeProvider(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/email/service/MailService$8;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$8;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/email/service/MailService$8;->start()V

    return-void
.end method


# virtual methods
.method createAlarmIntent(J[JZ)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const-string v1, "com.android.email.intent.extra.WATCHDOG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 37

    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    sput-object p0, Lcom/android/email/service/MailService;->sMailService:Lcom/android/email/service/MailService;

    invoke-static/range {p0 .. p0}, Lcom/android/email/AccountBackupRestore;->restoreAccountsIfNeeded(Landroid/content/Context;)V

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/service/MailService;->mStartId:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v4, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static/range {p0 .. p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v4, v5}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/android/email/service/MailService$2;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/email/service/MailService$2;-><init>(Lcom/android/email/service/MailService;Landroid/content/Intent;JLandroid/app/AlarmManager;I)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    const/4 v4, 0x2

    return v4

    :cond_1
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "Email-MailService"

    const-string v5, "action: cancel"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/email/service/MailService;->cancel()V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_0

    :cond_3
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_DELETE_EXCHANGE_ACCOUNTS"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "Email-MailService"

    const-string v5, "action: delete exchange accounts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v4, Lcom/android/email/service/MailService$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/email/service/MailService$3;-><init>(Lcom/android/email/service/MailService;)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_0

    :cond_5
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "Email-MailService"

    const-string v5, "action: send pending mail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v4, Lcom/android/email/service/MailService$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7, v8}, Lcom/android/email/service/MailService$4;-><init>(Lcom/android/email/service/MailService;J)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_0

    :cond_7
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "Email-MailService"

    const-string v5, "action: reschedule"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v32

    new-instance v4, Lcom/android/email/service/MailService$5;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v4, v0, v9, v1}, Lcom/android/email/service/MailService$5;-><init>(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;I)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_9
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Lcom/android/email/service/MailService$6;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v4, v0, v7, v8, v1}, Lcom/android/email/service/MailService$6;-><init>(Lcom/android/email/service/MailService;JI)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_a
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_SENDFAIL_OUTOFMEMORY"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "com.android.email.intent.extra.MESSAGE"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify accountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "notify messageId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/email/service/MailService$7;

    move-object/from16 v11, p0

    move-wide v12, v7

    move/from16 v16, p3

    invoke-direct/range {v10 .. v16}, Lcom/android/email/service/MailService$7;-><init>(Lcom/android/email/service/MailService;JJI)V

    invoke-static {v10}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_b
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_SYNC_ONE_ACCOUNT"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_REFRESH_ONE_ACCOUNT"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_c
    :try_start_0
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_SYNC_ONE_ACCOUNT"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "Email-MailService"

    const-string v5, "onStartCommand: sleep 1000"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/service/MailService;->restoreSyncReports(Landroid/content/Intent;)V

    const-string v4, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action: sync one account for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, -0x1

    cmp-long v4, v24, v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_e
    const-wide/16 v4, -0x1

    cmp-long v4, v24, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v27

    const-string v4, "Email-MailService"

    const-string v5, "onStartCommand: InterruptedException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_10
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_REFRESH_MULTI_ACCOUNT"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v18, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    :cond_11
    :goto_2
    :try_start_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action: sync multi accounts for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, -0x1

    cmp-long v4, v24, v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_12
    const-wide/16 v4, -0x1

    cmp-long v4, v24, v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_14
    const-string v4, "com.android.email.intent.action.ACTION_SOCIALHUB_ON_TOP"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "com.android.email.intent.extra.SOCIALHUB_ON_TOP"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/email/service/MailService;->mIsSocialHubOnTop:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/email/service/MailService;->mIsSocialHubOnTop:Z

    if-eqz v4, :cond_0

    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/NotificationManager;

    sget v4, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v4, 0x5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :cond_15
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_EMAIL_DELETE"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand() action=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v31, :cond_16

    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v36

    :goto_3
    new-instance v26, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/email/service/DoExternalRequest;->onMultiDeleteRequest([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    goto :goto_3

    :cond_17
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_ACCOUNT_DELETE"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_18

    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v35

    :goto_4
    if-eqz v35, :cond_0

    move-object/from16 v0, v35

    array-length v4, v0

    if-lez v4, :cond_0

    const/16 v28, 0x0

    const/16 v28, 0x0

    :goto_5
    move-object/from16 v0, v35

    array-length v4, v0

    move/from16 v0, v28

    if-ge v0, v4, :cond_0

    aget-object v4, v35, v28

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand() action=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] - account_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v35, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/email/service/DoExternalRequest;->removeAccounts(Landroid/content/Context;J)Z

    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    :cond_18
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    goto :goto_4

    :cond_19
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_MARK_AS_READ"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "is_read"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand() action=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v31, :cond_1a

    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v36

    :goto_6
    new-instance v26, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/DoExternalRequest;->onMarkAsReadRequest([Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1a
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    goto :goto_6

    :cond_1b
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_DB_SET_FAVORITE"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "is_favorite"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand() action=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v31, :cond_1c

    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v36

    :goto_7
    new-instance v26, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/DoExternalRequest;->onSetFavoriteRequest([Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1c
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    goto :goto_7

    :cond_1d
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_REQUESTS_DATA"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand() action=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v31, :cond_1e

    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v36

    :goto_8
    new-instance v26, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/email/service/DoExternalRequest;->onRequest([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    goto :goto_8

    :cond_1f
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_DB_SET_FOLLOWUPFLAG"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "status_followupflag"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand() action=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v31, :cond_20

    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v36

    :goto_9
    new-instance v26, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/DoExternalRequest;->onSetFollowUpFlagRequest([Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_20
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    goto :goto_9

    :cond_21
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method refreshSyncReports()V
    .locals 10

    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    const-wide/16 v6, -0x2

    invoke-virtual {p0, v6, v7, p0}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(JLandroid/content/Context;)V

    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    iget-wide v6, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/service/MailService$AccountSyncReport;

    if-eqz v2, :cond_0

    iget-wide v6, v2, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iput-wide v6, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v4, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v4, :cond_0

    iget-wide v6, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    iget-wide v6, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v4, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method reschedule(Landroid/app/AlarmManager;)V
    .locals 26

    const-wide/16 v21, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    sget-object v22, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v22

    :try_start_0
    sget-object v21, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v14

    mul-int/lit8 v21, v14, 0x2

    move/from16 v0, v21

    new-array v3, v0, [J

    const/4 v4, 0x0

    const-wide v10, 0x7fffffffffffffffL

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sget-object v21, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/email/service/MailService$AccountSyncReport;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    move/from16 v21, v0

    if-lez v21, :cond_0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    const-wide/16 v23, 0x0

    cmp-long v21, v16, v23

    if-eqz v21, :cond_1

    cmp-long v21, v12, v19

    if-gez v21, :cond_3

    :cond_1
    const-wide/16 v23, 0x1388

    add-long v10, v19, v23

    move-object/from16 v9, v18

    :cond_2
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v23, v0

    aput-wide v23, v3, v5

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v23, v0

    aput-wide v23, v3, v4

    goto :goto_0

    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    :cond_3
    cmp-long v21, v12, v10

    if-gez v21, :cond_2

    move-wide v10, v12

    move-object/from16 v9, v18

    goto :goto_1

    :cond_4
    :goto_2
    :try_start_1
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_5

    add-int/lit8 v4, v5, 0x1

    const-wide/16 v23, -0x1

    aput-wide v23, v3, v5

    move v5, v4

    goto :goto_2

    :cond_5
    if-nez v9, :cond_7

    const-wide/16 v7, -0x1

    :goto_3
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v7, v8, v3, v1}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v15

    if-nez v9, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-boolean v21, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v21, :cond_6

    const-string v21, "Email-MailService"

    const-string v23, "reschedule: alarm cancel - no account to check"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    monitor-exit v22

    return-void

    :cond_7
    iget-wide v7, v9, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    goto :goto_3

    :cond_8
    const/16 v21, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10, v11, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget-boolean v21, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v21, :cond_6

    const-string v21, "Email-MailService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "reschedule: alarm set at "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-wide v0, v9, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method restoreSyncReports(Landroid/content/Intent;)V
    .locals 16

    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    sget-object v11, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_0
    const-string v10, "com.android.email.intent.extra.ACCOUNT_INFO"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    if-nez v3, :cond_0

    const-string v10, "Email-MailService"

    const-string v12, "no data in intent to restore"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    array-length v6, v3

    move v5, v4

    :cond_1
    :goto_1
    if-ge v5, v6, :cond_2

    add-int/lit8 v4, v5, 0x1

    aget-wide v1, v3, v5

    add-int/lit8 v5, v4, 0x1

    aget-wide v7, v3, v4

    sget-object v10, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/service/MailService$AccountSyncReport;

    if-eqz v9, :cond_1

    iget-wide v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-nez v10, :cond_1

    iput-wide v7, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v10, v9, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v10, :cond_1

    iget-wide v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_1

    iget-wide v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v10, v9, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v10, v10, 0x3e8

    mul-int/lit8 v10, v10, 0x3c

    int-to-long v14, v10

    add-long/2addr v12, v14

    iput-wide v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method setupSyncReports(J)V
    .locals 2

    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(JLandroid/content/Context;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setupSyncReportsLocked(JLandroid/content/Context;)V
    .locals 11

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-wide/16 p1, -0x1

    :cond_0
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getForceOneMinuteRefresh()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v2, "Email-MailService"

    const-string v3, "One-minute refresh enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v4, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_2

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_2

    new-instance v5, Lcom/android/email/service/MailService$AccountSyncReport;

    invoke-direct {v5}, Lcom/android/email/service/MailService$AccountSyncReport;-><init>()V

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/16 v2, 0x8

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v2, 0xc

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v9, v10}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v1, -0x1

    move v3, v1

    :goto_2
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    const-wide/16 v1, 0x0

    iput-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    if-lez v3, :cond_7

    const-wide/16 v1, 0x0

    :goto_3
    iput-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    const/4 v1, 0x0

    iput v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    const/4 v1, 0x0

    iput v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->lastUnseenMessageCount:I

    iput v3, v5, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->notify:Z

    and-int/lit8 v1, v7, 0x2

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->vibrate:Z

    and-int/lit8 v1, v7, 0x40

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_6
    iput-boolean v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->vibrateWhenSilent:Z

    if-nez v8, :cond_b

    const/4 v1, 0x0

    :goto_7
    iput-object v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->ringtoneUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->displayName:Ljava/lang/String;

    new-instance v1, Landroid/accounts/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.email"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.android.email.provider"

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v5, Lcom/android/email/service/MailService$AccountSyncReport;->syncEnabled:Z

    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    iget-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    :goto_8
    return-void

    :cond_4
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_8

    :cond_5
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    if-eqz v6, :cond_d

    if-ltz v1, :cond_d

    const/4 v1, 0x1

    move v3, v1

    goto/16 :goto_2

    :cond_7
    const-wide/16 v1, -0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    :cond_b
    :try_start_1
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_7

    :cond_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :cond_d
    move v3, v1

    goto/16 :goto_2
.end method

.method updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;
    .locals 7

    invoke-virtual {p0, p1, p2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/MailService$AccountSyncReport;

    if-nez v0, :cond_0

    const-string v1, "Email-MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No account to update for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v1, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v1, :cond_1

    iget-wide v3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v1, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    :cond_1
    const/4 v1, -0x1

    if-eq p3, v1, :cond_2

    iput p3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    :cond_2
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "Email-MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
