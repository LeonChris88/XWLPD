.class public Lcom/android/email/MessagingController;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/MessagingController$CommandInfo;,
        Lcom/android/email/MessagingController$ImapIdleFolder;,
        Lcom/android/email/MessagingController$Command;,
        Lcom/android/email/MessagingController$LocalMessageInfo;,
        Lcom/android/email/MessagingController$LocalMailboxInfo;
    }
.end annotation


# static fields
.field private static FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

.field private static final FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

.field private static final FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

.field private static final PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

.field private static final PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/email/MessagingController;


# instance fields
.field private mBusy:Z

.field private final mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/email/MessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/email/Controller;

.field private mHandler:Landroid/os/Handler;

.field private mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/MessagingController$ImapIdleFolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Lcom/android/email/GroupMessagingListener;

.field private mRemoteSync:Z

.field private mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "location"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    sget-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const-string v1, "contentUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/email/Controller;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/android/email/GroupMessagingListener;

    invoke-direct {v0}, Lcom/android/email/GroupMessagingListener;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private IsEAS(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v0, -0x1

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "pop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "imap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "MsgControl >>>"

    const-string v1, "Exception is occured, in IsEAS method "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v2, "eas"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v0, "MsgControl >>>"

    const-string v2, "onSwitchingTitle -----"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;
    .locals 1

    iget-object v0, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/MessagingController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/MessagingController;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/MessagingController;Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/MessagingController$CommandInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/MessagingController$CommandInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;
    .locals 1

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->synchronizeMailboxSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/android/email/MessagingController;->processPendingMultiMoveSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/MessagingController;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->loadMessageForViewSyncronous(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/MessagingController;JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/android/email/MessagingController;->processPendingAccountMoveActionsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z

    move-result v0

    return v0
.end method

.method private checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->IsEAS(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;
    .locals 2

    const-class v1, Lcom/android/email/MessagingController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/MessagingController;

    invoke-direct {v0, p0, p1}, Lcom/android/email/MessagingController;-><init>(Landroid/content/Context;Lcom/android/email/Controller;)V

    sput-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    :cond_0
    sget-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static injectMockController(Lcom/android/email/MessagingController;)V
    .locals 0

    sput-object p0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    return-void
.end method

.method private isActiveListener(Lcom/android/email/MessagingListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v0

    return v0
.end method

.method private isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x2

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v3

    const-string v0, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPushScheduledNow | syncSchedule - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/emailcommon/utility/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/emailcommon/utility/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPushScheduledNow [accId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Fail. Roaming - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v0

    if-ne v0, v6, :cond_2

    :cond_1
    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v0

    if-eq v0, v6, :cond_3

    :cond_2
    move v0, v1

    :goto_1
    const-string v1, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPushScheduledNow [accId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] this time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPush - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private loadMessageForViewSyncronous(J)Z
    .locals 12

    :try_start_0
    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    iget v9, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v7

    iget-object v9, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    sget-object v9, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    iget-object v9, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v6

    new-instance v1, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v1}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v1, v9}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v1, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    if-eqz v6, :cond_4

    const/4 v9, 0x1

    invoke-virtual {p0, v6, v0, v2, v9}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v9, 0x0

    goto :goto_0

    :catch_1
    move-exception v8

    const/4 v9, 0x0

    goto :goto_0
.end method

.method private processAccountMoveUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p7, p8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync failed for null message, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget v1, p6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v1, p6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upsyc triggered for message id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/email/MessagingController;->processPendingAccountMoveAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    goto :goto_0
.end method

.method private processPendingAccountMoveActionsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p5

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/android/email/MessagingController;->processPendingAccountMoveUploadsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;J)Z

    move-result v11

    return v11
.end method

.method private processPendingAccountMoveAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v1, "processPendingAccountMoveAppend"

    const-string v2, "This Pop account do not allowed upload sync. So we will just local move."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v3, v4, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v4, v5, :cond_2

    const-string v0, "processPendingAccountMoveAppend"

    const-string v2, "remoteFolder.getMode() != OpenMode.READ_WRITE."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v4, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p6}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_4
    const-string v0, "processPendingAccountMoveAppend"

    const-string v2, "message.mServerId is null. Sending is failed...."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "processPendingAccountMoveAppend"

    const-string v2, "Target Account Server Already have same message. Something wrong. Do nothing."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0
.end method

.method private processPendingAccountMoveUploadsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-ltz v2, :cond_3

    const/4 v8, 0x0

    if-nez v4, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v4

    :cond_0
    if-nez v8, :cond_1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p8

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    :cond_1
    if-eqz v8, :cond_2

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v5, p5

    move-wide v6, p3

    move-wide v9, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/email/MessagingController;->processAccountMoveUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    :cond_2
    :goto_0
    return v11

    :catchall_0
    move-exception v2

    throw v2

    :cond_3
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "MsgControl >>>"

    const-string v3, "PERFORMANCE DELETE START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/MessagingController;->processPendingMultiDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    const-string v2, "MsgControl >>>"

    const-string v3, "PERFORMANCE DELETE END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/MessagingController;->processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/MessagingController;->processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    return-void
.end method

.method private processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "syncServerId"

    iget-object v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    :try_start_0
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v4, :cond_5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move v3, v2

    move v0, v1

    move v4, v1

    :goto_1
    if-eqz v4, :cond_7

    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_7

    :try_start_2
    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v6, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v6}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v6, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/emailcommon/mail/Message;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    :cond_7
    :goto_2
    if-nez v3, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    :try_start_3
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    if-eqz v3, :cond_c

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v4, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :goto_3
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    :cond_a
    :try_start_4
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v3, v6}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-lez v4, :cond_b

    move v3, v1

    move v0, v2

    move v4, v2

    goto :goto_1

    :cond_b
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v6}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    sget-object v3, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    move v3, v2

    move v0, v1

    move v4, v1

    goto/16 :goto_1

    :cond_c
    if-eqz v0, :cond_9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "syncServerId"

    iget-object v7, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "syncServerTimeStamp"

    iget-wide v7, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v0, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_d
    throw v0

    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method private processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v2, "Local-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p6, :cond_b

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_3
    :try_start_2
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update for msg id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flagged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new mailbox="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    if-eqz p3, :cond_5

    sget-object v3, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_5
    if-eqz p4, :cond_6

    sget-object v3, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_6
    if-eqz p5, :cond_7

    sget-object v3, Lcom/android/email/MessagingController;->FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_7
    if-eqz p6, :cond_9

    iget-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_8

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "syncServerId"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_a
    throw v0

    :cond_b
    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    goto/16 :goto_1
.end method

.method private processPendingDeleteForeverFromAnyfolder(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, "Local-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    :cond_5
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_7

    :try_start_3
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x1

    :try_start_5
    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v4, Lcom/android/email/MessagingController$16;

    invoke-direct {v4, p0, p5}, Lcom/android/email/MessagingController$16;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_7
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_8
    throw v0
.end method

.method private processPendingMultiDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/email/mail/Store;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget v5, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v3, v5, v8}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_2

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p4}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_3

    invoke-virtual {p4}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Lcom/android/emailcommon/mail/Folder;->getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_5

    array-length v5, v2

    new-array v0, v5, [Lcom/android/emailcommon/mail/Flag;

    const/4 v1, 0x0

    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_4

    sget-object v5, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    invoke-virtual {v3, v2, v0, v5}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_5
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private processPendingMultiDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    const-string v4, "accountKey=?"

    const-string v6, "mailboxKey"

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-wide/16 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v1, v5, v9}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    move-object v5, v1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v6, v1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_2

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    if-eqz v2, :cond_0

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v11, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    :cond_1
    iget v9, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_2

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v1, v2

    move-wide v13, v3

    move-wide v2, v13

    move-wide v13, v2

    move-wide v3, v13

    move-object v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_4

    move-object/from16 v0, p1

    invoke-direct {p0, v5, v0, v2, v7}, Lcom/android/email/MessagingController;->processPendingMultiDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashSet;)V

    :cond_4
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to process pending delete for id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    move-object v5, v1

    goto/16 :goto_0
.end method

.method private processPendingMultiMoveSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;JJ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p4, p5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p6, p7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    :cond_0
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/emailcommon/mail/Folder;->getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_3

    array-length v0, v2

    if-gtz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    const-string v3, "processPendingMultiMoveSynchronous"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newMailbox.mDisplayName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    :cond_5
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v3, Lcom/android/email/MessagingController$14;

    invoke-direct {v3, p0}, Lcom/android/email/MessagingController$14;-><init>(Lcom/android/email/MessagingController;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    if-eqz v2, :cond_8

    array-length v0, v2

    new-array v3, v0, [Lcom/android/emailcommon/mail/Flag;

    const/4 v0, 0x0

    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_7

    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_8
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_c
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 21

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const-string v7, "mailboxKey"

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v6, "pop3"

    iget-object v3, v3, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move/from16 v17, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v8, 0x0

    const/4 v14, 0x0

    const-class v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v6, :cond_1

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    if-eqz v7, :cond_7

    if-eqz v2, :cond_2

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v9, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v4, v4, v9

    if-eqz v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v4, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    if-nez v5, :cond_4

    move-object v2, v5

    move-wide/from16 v4, v18

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v3, "Email"

    const-string v6, "Error !!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v2

    goto :goto_0

    :cond_3
    move-object v5, v2

    :cond_4
    :try_start_3
    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v11, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v2, v9, v11

    if-eqz v2, :cond_11

    iget v2, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_8

    const/4 v2, 0x1

    :goto_2
    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-boolean v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v4, v8, :cond_9

    const/4 v11, 0x1

    :goto_3
    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eq v4, v8, :cond_a

    const/4 v12, 0x1

    :goto_4
    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    iget-boolean v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    if-eq v4, v8, :cond_b

    const/4 v13, 0x1

    :goto_5
    if-nez v3, :cond_6

    if-eqz p1, :cond_6

    if-nez v2, :cond_5

    if-nez v11, :cond_5

    if-nez v12, :cond_5

    if-nez v13, :cond_5

    if-eqz v14, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v3, v4, v8}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    :cond_6
    if-eqz v2, :cond_c

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/email/MessagingController;->processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    move-object v2, v5

    :cond_7
    :goto_6
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide/from16 v4, v18

    goto/16 :goto_1

    :cond_8
    const/4 v14, 0x1

    move v2, v8

    goto :goto_2

    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    goto :goto_5

    :cond_c
    if-nez v17, :cond_e

    if-nez v11, :cond_d

    if-nez v12, :cond_d

    if-nez v13, :cond_d

    if-eqz v14, :cond_e

    :cond_d
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v5

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lcom/android/email/MessagingController;->processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_e
    move-object v2, v5

    goto :goto_6

    :cond_f
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :goto_7
    return-void

    :catch_1
    move-exception v2

    :goto_8
    :try_start_4
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to process pending update for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_10
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catch_2
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_0
    move-exception v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v2

    :catch_3
    move-exception v2

    move-wide/from16 v18, v4

    goto :goto_8

    :cond_11
    move v2, v8

    goto/16 :goto_2
.end method

.method private processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey=? and type=5"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const-wide/16 v7, -0x1

    const/4 v1, 0x0

    move-object v9, v1

    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    const/4 v10, 0x0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=? and (syncServerId is null or syncServerId=\'\')"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    :goto_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v10, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    :goto_2
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v9, v5

    move-object v10, v3

    goto :goto_1

    :cond_0
    move-object v5, v9

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v9, v5

    move-object v10, v3

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    goto :goto_1

    :cond_2
    if-eqz v15, :cond_3

    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=?"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v14

    move-object v5, v9

    move-object v1, v10

    move-wide/from16 v16, v7

    move-wide/from16 v6, v16

    :goto_3
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    :goto_4
    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    if-nez v5, :cond_7

    move-object v1, v3

    goto :goto_3

    :catchall_0
    move-exception v1

    move-wide v6, v7

    :goto_5
    if-eqz v15, :cond_4

    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    move-wide v7, v6

    :goto_6
    :try_start_6
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to process pending upsync for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_7
    return-void

    :cond_7
    const/4 v1, 0x0

    :try_start_7
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v1, v3

    goto :goto_3

    :cond_8
    if-eqz v14, :cond_9

    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v9, v1

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_2
    move-exception v1

    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v1

    :cond_c
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catchall_3
    move-exception v1

    goto :goto_5

    :cond_d
    move-object v3, v1

    goto :goto_4

    :cond_e
    move-object v3, v10

    goto/16 :goto_2
.end method

.method private processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p5, p6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync failed for null message, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=trash, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsyc triggered for message id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/email/MessagingController;->processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/android/email/MessagingController$Command;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    iput-object p2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    iput-object p3, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    iput-object p1, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private put(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/MessagingController$CommandInfo;)V
    .locals 8

    :try_start_0
    new-instance v1, Lcom/android/email/MessagingController$Command;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    iput-object p2, v1, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    iput-object p1, v1, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/email/MessagingController$Command;->info:Lcom/android/email/MessagingController$CommandInfo;

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v4, :cond_0

    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< put cmd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | desc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_3

    const-string v4, "synchronizeMailbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "qreSyncMailbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;

    iget-object v4, v0, Lcom/android/email/MessagingController$Command;->info:Lcom/android/email/MessagingController$CommandInfo;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/email/MessagingController$Command;->info:Lcom/android/email/MessagingController$CommandInfo;

    iget-wide v4, v4, Lcom/android/email/MessagingController$CommandInfo;->mAccountId:J

    iget-wide v6, p3, Lcom/android/email/MessagingController$CommandInfo;->mAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [REMOVE] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [ADD] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method private saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private syncSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** syncSearchOnServer *** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    :goto_0
    return-object v3

    :cond_1
    const/4 v9, 0x0

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? AND mailboxKey=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    :goto_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/android/email/MessagingController$LocalMessageInfo;

    invoke-direct {v5, v4}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    iget-object v6, v5, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    invoke-virtual {v12, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v13

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    :cond_5
    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v13, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    :cond_6
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v14

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    if-gtz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    iget v4, v4, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    :cond_7
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    if-lez v14, :cond_23

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v4, v0, v5}, Lcom/android/emailcommon/mail/Folder;->getMessages(ILjava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    if-eqz v5, :cond_c

    array-length v7, v5

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_8

    aget-object v8, v5, v4

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    array-length v8, v5

    const/4 v4, 0x0

    move v7, v4

    :goto_4
    if-ge v7, v8, :cond_c

    aget-object v9, v5, v7

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    if-nez v4, :cond_9

    add-int/lit8 v6, v6, 0x1

    :cond_9
    if-eqz v4, :cond_a

    iget v4, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-nez v4, :cond_b

    :cond_a
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_4

    :cond_c
    move-object v11, v5

    :goto_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d

    new-instance v17, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v17 .. v17}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [Lcom/android/emailcommon/mail/Message;

    new-instance v4, Lcom/android/email/MessagingController$8;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/email/MessagingController$8;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v10, v0, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    :cond_d
    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-virtual {v13, v11, v4, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v8

    array-length v10, v8

    const/4 v4, 0x0

    move v7, v4

    :goto_6
    if-ge v7, v10, :cond_e

    aget-object v17, v8, v7

    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v17

    if-ne v0, v4, :cond_22

    const/4 v4, 0x1

    :goto_7
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v17

    if-ne v0, v5, :cond_21

    const/4 v5, 0x1

    :goto_8
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_6

    :cond_e
    if-nez v5, :cond_f

    if-eqz v6, :cond_15

    :cond_f
    array-length v0, v11

    move/from16 v17, v0

    const/4 v4, 0x0

    move v10, v4

    :goto_9
    move/from16 v0, v17

    if-ge v10, v0, :cond_15

    aget-object v8, v11, v10

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    if-nez v4, :cond_11

    :cond_10
    :goto_a
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_9

    :cond_11
    iget-boolean v7, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    sget-object v18, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v18

    if-eqz v5, :cond_13

    move/from16 v0, v18

    if-eq v0, v7, :cond_13

    const/4 v7, 0x1

    :goto_b
    iget-boolean v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v19, v0

    sget-object v20, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v20

    if-eqz v6, :cond_14

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    const/4 v8, 0x1

    :goto_c
    if-nez v7, :cond_12

    if-eqz v8, :cond_10

    :cond_12
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "flagRead"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "flagFavorite"

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v8, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v7, v8, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_a

    :cond_13
    const/4 v7, 0x0

    goto :goto_b

    :cond_14
    const/4 v8, 0x0

    goto :goto_c

    :cond_15
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/16 v4, 0x3e8

    const/4 v7, 0x0

    sub-int v4, v14, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lez v14, :cond_17

    const/4 v7, 0x0

    invoke-virtual {v13, v4, v14, v7}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v7

    array-length v8, v7

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v8, :cond_16

    aget-object v10, v7, v4

    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_16
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_17
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-static {v8, v10, v11, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_e

    :cond_18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v11

    if-le v10, v11, :cond_19

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_19
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1a
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v10

    const/16 v11, 0x6400

    if-le v10, v11, :cond_1b

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1c
    new-instance v8, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v8}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v8, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    new-instance v7, Lcom/android/email/MessagingController$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Lcom/android/email/MessagingController$9;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    invoke-virtual {v13, v3, v8, v7}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v8, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v7, 0x0

    invoke-virtual {v13, v3, v8, v7}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v4

    if-nez v4, :cond_1e

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v8, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v13, v4, v8, v10, v11}, Lcom/android/emailcommon/mail/Folder;->fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    :goto_11
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto :goto_10

    :cond_1d
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    invoke-virtual {v13, v4, v8, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_11

    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4, v10}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    invoke-virtual {v8, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v4, v8, v11}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_12

    :cond_1f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_10

    :cond_20
    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v14, v4}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    move-object v4, v9

    goto/16 :goto_2

    :cond_21
    move v5, v6

    goto/16 :goto_8

    :cond_22
    move v4, v5

    goto/16 :goto_7

    :cond_23
    move-object v11, v4

    goto/16 :goto_5
.end method

.method private synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const-string v3, "Email"

    const-string v4, "*** synchronizeMailboxGeneric ***"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :try_start_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_1

    throw v11

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    throw v11

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    const/4 v10, 0x0

    :try_start_1
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? AND mailboxKey=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :goto_1
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lcom/android/email/MessagingController$LocalMessageInfo;

    invoke-direct {v5, v4}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    iget-object v6, v5, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v4, :cond_3

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    move-object v4, v11

    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_4
    throw v3

    :cond_5
    if-eqz v4, :cond_6

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v17

    :try_start_6
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_7

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_7

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    :cond_8
    :try_start_7
    const-string v4, "EMAIL_PERFORMANCE"

    const-string v5, "synchronizeMailboxGeneric() BEFORE OPEN"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    const-string v4, "EMAIL_PERFORMANCE"

    const-string v5, "synchronizeMailboxGeneric() AFTER OPEN"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v19

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    if-gtz v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move v5, v4

    :goto_4
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    if-lez v19, :cond_2e

    const/4 v4, 0x0

    sub-int v5, v19, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    array-length v7, v5

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_9

    aget-object v8, v5, v4

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    :catchall_2
    move-exception v3

    move-object/from16 v4, v17

    goto/16 :goto_3

    :cond_a
    array-length v8, v5

    const/4 v4, 0x0

    move v7, v4

    :goto_6
    if-ge v7, v8, :cond_e

    aget-object v10, v5, v7

    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    if-nez v4, :cond_b

    add-int/lit8 v6, v6, 0x1

    :cond_b
    if-eqz v4, :cond_c

    iget v4, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-nez v4, :cond_d

    :cond_c
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_6

    :cond_e
    move-object v13, v5

    :goto_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    new-instance v11, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v11}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Lcom/android/emailcommon/mail/Message;

    move-object v10, v0

    new-instance v4, Lcom/android/email/MessagingController$10;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/email/MessagingController$10;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    :cond_10
    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v4, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v10

    array-length v14, v10

    const/4 v4, 0x0

    move v8, v4

    :goto_8
    if-ge v8, v14, :cond_11

    aget-object v15, v10, v8

    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v15, v4, :cond_2d

    const/4 v4, 0x1

    move v7, v4

    :goto_9
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v15, v4, :cond_2c

    const/4 v4, 0x1

    move v6, v4

    :goto_a
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    if-ne v15, v4, :cond_2b

    const/4 v4, 0x1

    :goto_b
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v11, v6

    move v12, v7

    move v5, v4

    goto :goto_8

    :cond_11
    if-nez v12, :cond_12

    if-nez v11, :cond_12

    if-eqz v5, :cond_19

    :cond_12
    array-length v14, v13

    const/4 v4, 0x0

    move v10, v4

    :goto_c
    if-ge v10, v14, :cond_19

    aget-object v15, v13, v10

    invoke-virtual {v15}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    if-nez v4, :cond_14

    :cond_13
    :goto_d
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_c

    :cond_14
    iget-boolean v6, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    sget-object v7, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v15, v7}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v16

    if-eqz v12, :cond_16

    move/from16 v0, v16

    if-eq v0, v6, :cond_16

    const/4 v6, 0x1

    move v8, v6

    :goto_e
    iget-boolean v6, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    sget-object v7, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v15, v7}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v22

    if-eqz v11, :cond_17

    move/from16 v0, v22

    if-eq v6, v0, :cond_17

    const/4 v6, 0x1

    move v7, v6

    :goto_f
    iget-boolean v6, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagReply:Z

    sget-object v23, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v15

    if-eqz v5, :cond_18

    if-eq v6, v15, :cond_18

    const/4 v6, 0x1

    :goto_10
    if-nez v8, :cond_15

    if-nez v7, :cond_15

    if-eqz v6, :cond_13

    :cond_15
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "flagRead"

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "flagFavorite"

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "flagReply"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v7, v6, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_d

    :cond_16
    const/4 v6, 0x0

    move v8, v6

    goto :goto_e

    :cond_17
    const/4 v6, 0x0

    move v7, v6

    goto :goto_f

    :cond_18
    const/4 v6, 0x0

    goto :goto_10

    :cond_19
    new-instance v6, Ljava/util/HashSet;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1a

    const-string v7, "LocalAccountMoved-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v12, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11, v12, v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v11, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v12, 0x190

    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v14, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v7

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto :goto_11

    :cond_1b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v10

    if-le v8, v10, :cond_1c

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1c
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1d
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v8

    const/16 v10, 0x6400

    if-le v8, v10, :cond_1e

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1e
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1f
    new-instance v7, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v7}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    new-instance v5, Lcom/android/email/MessagingController$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v5, v0, v1, v2}, Lcom/android/email/MessagingController$11;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v4

    if-nez v4, :cond_21

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v5, v10}, Lcom/android/emailcommon/mail/Folder;->fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    :goto_14
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto :goto_13

    :cond_20
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_14

    :cond_21
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v10, v4}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v5, v4

    :goto_15
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    invoke-interface {v4}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v4

    add-int/2addr v4, v5

    move v5, v4

    goto :goto_15

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v4

    if-le v5, v4, :cond_23

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v5, v10}, Lcom/android/emailcommon/mail/Folder;->fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_13

    :cond_23
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_16

    :cond_24
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_13

    :cond_25
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_17

    :cond_26
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_13

    :cond_27
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_28

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    :cond_28
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_29

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_29
    if-eqz v17, :cond_2a

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_2a
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    invoke-direct {v3, v0, v4}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    move-object v4, v10

    goto/16 :goto_2

    :cond_2b
    move v4, v5

    goto/16 :goto_b

    :cond_2c
    move v6, v11

    goto/16 :goto_a

    :cond_2d
    move v7, v12

    goto/16 :goto_9

    :cond_2e
    move-object v13, v4

    goto/16 :goto_7

    :cond_2f
    move v5, v4

    goto/16 :goto_4
.end method

.method private synchronizeMailboxSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/mail/Store;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->syncSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v10

    :goto_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v5, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v6, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJII)V

    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-interface {v7, p1, p2, v0, v1}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    :catch_0
    move-exception v5

    instance-of v0, v5, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto :goto_1
.end method

.method private synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 13

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxSynchronousForSnc(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    :try_start_0
    const-string v0, "EMAIL_PERFORMANCE"

    const-string v1, "synchronizeMailboxGeneric() START"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/mail/Store;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v10

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/email/MessagingController;->updatesynctime(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v5, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v6, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJII)V

    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    const-string v0, "EMAIL_PERFORMANCE"

    const-string v1, "synchronizeMailboxGeneric() END_SUCCESS"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v0, "EMAIL_PERFORMANCE"

    const-string v1, "synchronizeMailboxGeneric() END_FAIL"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, v5, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    :cond_2
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-interface {v7, p1, p2, v0, v1}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_1
.end method

.method private synchronizeMailboxSynchronousForSnc(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 20

    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "synchronizeMailboxSynchronous Starts for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Folder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    const/4 v4, 0x0

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v17

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v16

    :goto_0
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/Folder;->getMailBoxSynchronizer()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/mail/StoreSynchronizer;

    :cond_0
    if-nez v11, :cond_5

    invoke-direct/range {p0 .. p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    if-lez v3, :cond_1

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "newMessageCount"

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v12, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_1
    if-eqz v18, :cond_c

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :goto_2
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "synchronizeMailboxSynchronous | ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " results Total/New/Fetched - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    const/4 v4, 0x0

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v9, 0x64

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    if-ge v3, v5, :cond_2

    const/4 v3, 0x2

    if-ne v13, v3, :cond_8

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v5, 0x64

    if-lt v3, v5, :cond_8

    :cond_2
    const/4 v3, 0x2

    if-ne v13, v3, :cond_7

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v5, 0x64

    if-ge v3, v5, :cond_7

    const-string v3, "MsgControl >>>"

    const-string v5, "Sync results ignored. Waiting for SMS from Gateway"

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v16

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1, v3}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v18

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_7
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Setting initial_sync success since all r fetched"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "synchronizeMailboxSynchronous [accId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][mbId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Got exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v14, p2

    if-eqz p2, :cond_3

    :try_start_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_9
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v5, 0x64

    if-ge v3, v5, :cond_a

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    sub-int/2addr v3, v5

    if-lez v3, :cond_a

    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "## Run the synchronizeMailbox for acct "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " folder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Messages Fetched "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TotalMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    add-int/lit8 v3, v3, 0x64

    move-object/from16 v0, p2

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    const-string v3, "visibleLimit"

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v12, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncStatus(Landroid/content/Context;Ljava/lang/Long;I)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private updateHistoryForEmailSend(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->toFriendlyUseInBubbleButton([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgControl >>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateHistoryForEmailSend "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "account_name"

    invoke-virtual {v3, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "contactid"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "account_id"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "name"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "messageid"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "m_subject"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x32

    if-le v2, v4, :cond_2

    const-string v2, "m_content"

    const/4 v4, 0x0

    const/16 v5, 0x31

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v4, v1, v0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "number"

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://logs/email"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<body>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "m_content"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    return-void

    :cond_4
    move-object v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/email/MessagingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->addListener(Lcom/android/email/MessagingListener;)V

    return-void
.end method

.method public checkMail(JJLcom/android/email/MessagingListener;)V
    .locals 7

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V

    const-string v6, "checkMail"

    new-instance v0, Lcom/android/email/MessagingController$21;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController$21;-><init>(Lcom/android/email/MessagingController;JJ)V

    invoke-direct {p0, v6, p5, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V
    .locals 9

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-wide v7, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v7, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 9

    :try_start_0
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p5, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v8, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget v7, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0, v6}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const v2, 0x7f080086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8, p2, v0}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateBodyFields(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    :try_start_3
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " f : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_1

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v5, p6, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingController;->updateHistoryForEmail(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)Z

    :cond_1
    invoke-direct {p0, p2, p5}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    invoke-direct {p0, v8, p5}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    invoke-static {p5, p2, v6, p6}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    iput p4, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flagAttachment"

    iget-boolean v2, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "flagLoaded"

    iget v2, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while copying downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while storing downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while storing attachment."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :cond_3
    move-object v8, v0

    goto/16 :goto_0
.end method

.method public createFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;JLcom/android/email/MessagingListener;)V
    .locals 8

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v7, "createFolder"

    new-instance v0, Lcom/android/email/MessagingController$2;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/email/MessagingController$2;-><init>(Lcom/android/email/MessagingController;JLcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0, v7, p5, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public deleteFolder(JLjava/util/ArrayList;Lcom/android/email/MessagingListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/MessagingListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v6, "deleteFolder"

    new-instance v0, Lcom/android/email/MessagingController$4;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController$4;-><init>(Lcom/android/email/MessagingController;JLjava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0, v6, p4, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public deleteUserAccount(J)V
    .locals 8

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "MsgControl >>>"

    const-string v1, "Invalid Account Id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MsgControl >>>"

    const-string v1, "Account is Empty: Null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "validate_result_code"

    const/16 v1, 0x5b

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, v7, p1, p2}, Lcom/android/email/GroupMessagingListener;->deleteUserAccountStatus(Landroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MsgControl >>>"

    const-string v2, "Exception while deleting account"

    invoke-static {v1, v2, v0}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const-string v0, "validate_result_code"

    const/16 v1, 0x1a

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, v7, p1, p2}, Lcom/android/email/GroupMessagingListener;->deleteUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/Store;->delete()V

    invoke-static {v1}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/android/email/mail/Sender;->removeInstance(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/email"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public dumpConnectionStatus()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY CONNECTION STATISTICS START ***** "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY CONNECTION STATISTICS END *** "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/Controller;->isLegacy(J)Z

    move-result v4

    if-nez v4, :cond_1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_2

    :cond_3
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY CONNECTION STATISTICS END ***** \n"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpIdleStatus()V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "MsgControl >>>"

    const-string v2, " ***** IDLE STATISTICS START  *****"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MsgControl >>>"

    const-string v2, "IDLE ResetTimer - 600000 RestartTimer - 1800000 DelayedFetchTimer - 10000 DelayedQresyncTimer - 30000"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE Is Reset Timer Running? ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/MessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v0, v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** IDLE STATISTICS  END   *****\n"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MsgControl >>>"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dumpStatus()V
    .locals 5

    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY COMMAND STATISTICS START ***** "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const-string v1, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No. of pending commands: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    new-array v0, v0, [Lcom/android/email/MessagingController$Command;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/MessagingController$Command;

    check-cast v0, [Lcom/android/email/MessagingController$Command;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const-string v4, "MsgControl >>>"

    invoke-virtual {v3}, Lcom/android/email/MessagingController$Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY COMMAND STATISTICS END ***** \n"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MsgControl >>>"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/MessagingController;->dumpIdleStatus()V

    invoke-virtual {p0}, Lcom/android/email/MessagingController;->dumpConnectionStatus()V

    return-void
.end method

.method public getMailboxSyncState(J)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public listFolders(JLcom/android/email/MessagingListener;)V
    .locals 3

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/GroupMessagingListener;->listFoldersStarted(J)V

    const-string v1, "listFolders"

    new-instance v2, Lcom/android/email/MessagingController$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/email/MessagingController$1;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-direct {p0, v1, p3, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
    .locals 14

    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v9, 0x1

    :goto_0
    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/GroupMessagingListener;->loadAttachmentStarted(JJJZ)V

    const-string v13, "loadAttachment"

    new-instance v2, Lcom/android/email/MessagingController$18;

    move-object v3, p0

    move-wide/from16 v4, p7

    move-wide v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p10

    move-wide/from16 v11, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/email/MessagingController$18;-><init>(Lcom/android/email/MessagingController;JJJZJ)V

    move-object/from16 v0, p9

    invoke-direct {p0, v13, v0, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/MessagingListener;ZZZ)V
    .locals 15

    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v9, 0x1

    :goto_0
    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/GroupMessagingListener;->loadAttachmentStarted(JJJZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v14, "loadAttachment"

    new-instance v2, Lcom/android/email/MessagingController$19;

    move-object v3, p0

    move/from16 v4, p10

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    move-wide/from16 v9, p3

    move-wide/from16 v11, p7

    move/from16 v13, p12

    invoke-direct/range {v2 .. v13}, Lcom/android/email/MessagingController$19;-><init>(Lcom/android/email/MessagingController;ZJJJJZ)V

    move-object/from16 v0, p9

    invoke-direct {p0, v14, v0, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nullpointer Exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadAttachmentSyncronous(JJJJ)Z
    .locals 11

    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v5

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Account, mailbox, message or attachment are null"

    invoke-direct {v9, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Error while getting remoteFolder."

    invoke-direct {v9, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    iget-object v2, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    new-instance v6, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v6}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v2, v7

    invoke-virtual {v6, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    const-string v2, "X-Android-Attachment-StoreData"

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v7, "%s;\n name=\"%s\""

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "base64"

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v2, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    :cond_3
    const-string v7, "Content-Transfer-Encoding"

    invoke-virtual {v6, v7, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {v2}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    const-string v7, "mixed"

    invoke-virtual {v2, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    const-string v7, "Content-Type"

    const-string v8, "multipart/mixed"

    invoke-virtual {v4, v7, v8}, Lcom/android/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/android/emailcommon/mail/Message;->setBody(Lcom/android/emailcommon/mail/Body;)V

    new-instance v2, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    invoke-virtual {v2, v6}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/emailcommon/mail/Message;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v2, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v5, p1, p2}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    iget-object v2, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while storing attachment."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public loadMessageForView(JLcom/android/email/MessagingListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewStarted(J)V

    const-string v0, "loadMessageForViewRemote"

    new-instance v1, Lcom/android/email/MessagingController$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$17;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadMore(J)V
    .locals 2

    const-string v0, "MsgControl >>>"

    const-string v1, "load More"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onIdleExists(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 4

    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE onIdleExists [Delayed by 30000 ]| accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/MessagingController$23;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/email/MessagingController$23;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public processPendingAccountMoveActions(Ljava/util/ArrayList;JJJJJII)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJJJJII)V"
        }
    .end annotation

    const-string v18, "processPendingAccountMoveActions"

    const/16 v19, 0x0

    new-instance v3, Lcom/android/email/MessagingController$15;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move/from16 v16, p12

    move/from16 v17, p13

    invoke-direct/range {v3 .. v17}, Lcom/android/email/MessagingController$15;-><init>(Lcom/android/email/MessagingController;Ljava/util/ArrayList;JJJJJII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public processPendingActions(J)V
    .locals 3

    const-string v0, "processPendingActions"

    const/4 v1, 0x0

    new-instance v2, Lcom/android/email/MessagingController$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/MessagingController$12;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public processPendingDeletesForeverSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;JLandroid/content/ContentResolver;JIIJJ)V
    .locals 11

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_0
    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    if-eqz v5, :cond_0

    throw v5

    throw v6

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    :cond_0
    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p1, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-wide v9, v3

    move-object v3, v5

    :goto_0
    if-nez v2, :cond_1

    :try_start_1
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    :cond_1
    if-eqz v3, :cond_2

    invoke-direct {p0, v2, p2, v3, v6}, Lcom/android/email/MessagingController;->processPendingDeleteForeverFromAnyfolder(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    :cond_2
    const/4 v2, 0x3

    move/from16 v0, p8

    if-ne v0, v2, :cond_3

    move-wide/from16 v0, p6

    invoke-static {p1, p3, p4, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    const-string v2, "processPendingDeletesForeverSynchronous"

    const-string v3, "target_server_type is IMAP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p6

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_3
    const-string v2, "processPendingDeletesForeverSynchronous"

    const-string v3, "target_server_type is POP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalAccountMoved-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "accountKey"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "mailboxKey"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "syncServerId"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p6

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide v3, p3

    move-wide/from16 v5, p6

    move-wide/from16 v7, p10

    invoke-static/range {v2 .. v8}, Lcom/android/email/provider/AttachmentProvider;->moveAllAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-wide v3, v9

    :goto_2
    :try_start_2
    const-string v5, "processPendingDeletesForeverSynchronous"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to process pending delete for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    throw v2

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_5
    move-wide v9, v3

    move-object v3, v5

    goto/16 :goto_0
.end method

.method public processPendingMoveActions(Ljava/util/HashMap;JJJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;JJJ)V"
        }
    .end annotation

    const-string v9, "processPendingMoveActions"

    const/4 v10, 0x0

    new-instance v0, Lcom/android/email/MessagingController$13;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/email/MessagingController$13;-><init>(Lcom/android/email/MessagingController;JLjava/util/HashMap;JJ)V

    invoke-direct {p0, v9, v10, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method pruneCachedAttachments(J)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-nez v12, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v8, v12

    array-length v0, v8

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    aget-object v11, v8, v13

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-nez v4, :cond_3

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    sget-object v4, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->deleteOnExit()V

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public qreSyncMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 11

    const/4 v10, 0x0

    const-string v5, "MsgControl >>>"

    const-string v6, "QReSyncMailboxSynchronous Starts"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x1b

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    iget-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMailBoxSynchronizer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/StoreSynchronizer;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x1a

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V

    :goto_1
    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    invoke-interface {v0, p1, p2, v5}, Lcom/android/email/mail/StoreSynchronizer;->qresyncMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x2c

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "MsgControl >>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronizeMailboxSearchOnServer [accId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Got exception - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7, v1, v10}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V

    goto :goto_1
.end method

.method public removeListener(Lcom/android/email/MessagingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->removeListener(Lcom/android/email/MessagingListener;)V

    return-void
.end method

.method public renameFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
    .locals 7

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v3, 0x3

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x68

    invoke-direct {v5, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "renameFolder"

    new-instance v1, Lcom/android/email/MessagingController$3;

    invoke-direct {v1, p0, p1, p2, v6}, Lcom/android/email/MessagingController$3;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public resetIdling(Z)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "MsgControl >>>"

    const-string v1, "IDLE resetIdling"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v3, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v3}, Lcom/android/email/MessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Off-Peak Time"

    iput-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->status()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->reset()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {p0, v3, v0}, Lcom/android/email/MessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "MsgControl >>>"

    const-string v1, "IDLE No need to reset since no idle connections!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-ne v5, v0, :cond_7

    const-string v0, "MsgControl >>>"

    const-string v1, "IDLE Reset timer is already running!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/email/MessagingController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/MessagingController$22;

    invoke-direct {v1, p0}, Lcom/android/email/MessagingController$22;-><init>(Lcom/android/email/MessagingController;)V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public run()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    invoke-direct {p0, v2}, Lcom/android/email/MessagingController;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MessagingController:run() process command START : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v3, p0, Lcom/android/email/MessagingController;->mBusy:Z

    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/email/GroupMessagingListener;->controllerCommandCompleted(Z)V

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MsgControl >>>"

    const-string v5, "MessagingController:run() process command END"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v4, p0, Lcom/android/email/MessagingController;->mBusy:Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method public searchOnServerSync(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
    .locals 5

    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    const-string v0, "searchOnServerSync"

    new-instance v1, Lcom/android/email/MessagingController$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/MessagingController$5;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendPendingMessages(Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/email/MessagingListener;)V
    .locals 2

    const-string v0, "sendPendingMessages"

    new-instance v1, Lcom/android/email/MessagingController$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/MessagingController$20;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-direct {p0, v0, p4, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v6

    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_SUBJECT_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-gtz v2, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/Store;->requireCopyMessageToSentFolder()Z

    move-result v12

    const/4 v2, 0x0

    if-eqz v12, :cond_d

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "mailboxKey"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v8, v2

    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_a

    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v4, v13, v15

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v13, v14, v5, v6}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t send #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; unloaded attachments"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_3
    instance-of v2, v7, Lcom/android/emailcommon/mail/MessagingException;

    if-eqz v2, :cond_3

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to attach"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "syncServerId"

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v2, v3, v4, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    instance-of v2, v7, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9, v2, v3}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPendingMessagesSynchronous failed  messageID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " me="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v2, v3, v4}, Lcom/android/email/Controller;->showSendingNotification_fail(JJLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v6

    :try_start_4
    instance-of v1, v6, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v1, :cond_5

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9, v1, v2}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    :try_start_5
    invoke-virtual {v11, v5, v6}, Lcom/android/email/mail/Sender;->sendMessage(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    if-eqz v7, :cond_7

    iget v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v13, v14, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    :cond_7
    const/4 v7, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v4, v8, v7, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v13, v14, v4}, Lcom/android/email/Controller;->showSendingNotification_finish(JJLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v5

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/email/MessagingController;->updateHistoryForEmailSend(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)V

    :cond_8
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/email/MessagingController;->setMessageReply(JZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v13, v14, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v1, v7, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v4, v7, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesCompleted(J)V

    const-string v1, "EMAIL_PERFORMANCE"

    const-string v2, "SEND SUCCESS Notification"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9, v1, v2}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    const-string v1, "TN_US_ATT"

    invoke-static {v1}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "TN_US_COMM"

    invoke-static {v1}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "GATE"

    const-string v2, "<GATE-M>EMAIL_MESSAGE_SENT</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_d
    move-object v8, v2

    goto/16 :goto_1
.end method

.method public setFetchFlag(JI)V
    .locals 3

    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE resetFetchFlag | FolderHash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/android/email/MessagingController$ImapIdleFolder;->setFetchFlag(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE resetFetchFlag | No match found for mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMessageReply(JZ)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flagReply"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    if-nez v1, :cond_0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    :cond_0
    return-void
.end method

.method public declared-synchronized startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "MsgControl >>>"

    const-string v2, "IDLE startIdling Starts"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    const-string v0, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE Folder is already being idled [accId/mbId -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Hence stopping it!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/email/MessagingController;->stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    :cond_0
    new-instance v2, Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/MessagingController$ImapIdleFolder;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iget-object v3, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v3}, Lcom/android/email/MessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "Off-Peak Time"

    iput-object v0, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->start()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE IDLE failed to start for folder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "And will be retried while reset-ting!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/MessagingController;->resetIdling(Z)V

    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE IDLE started for folder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " successfully by thread "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "MsgControl >>>"

    const-string v3, "IDLE startIdling Starts"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    const-string v0, "MsgControl >>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDLE Folder is already being idled [accId/mbId -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Hence stopping it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/email/MessagingController;->stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    :cond_0
    new-instance v3, Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/email/MessagingController$ImapIdleFolder;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/MessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Off-Peak Time"

    iput-object v0, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    move v0, v2

    :goto_0
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/android/email/EmailConnectivityManager;->isMobileAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {v3}, Lcom/android/email/MessagingController$ImapIdleFolder;->start()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE IDLE failed to start for folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "And will be retried while reset-ting!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/MessagingController;->resetIdling(Z)V

    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE IDLE started for folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully by thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 4

    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE stopIdling | FolderHash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->stop()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE stopIdling | No match found for mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/email/GroupMessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V

    goto :goto_0
.end method

.method public synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V
    .locals 5

    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/android/email/MessagingController$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$6;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateHistoryForEmail(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v1, "date"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "number"

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contactid"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "messageid"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "m_subject"

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "account_name"

    invoke-virtual {v8, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "account_id"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "name"

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "new"

    iget-boolean v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_3

    const-string v1, "m_content"

    const/4 v2, 0x0

    const/16 v3, 0x31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/email"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    move v0, v7

    goto/16 :goto_0

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<body>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v1, "m_content"

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while updating History For Email."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public updatesynctime(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    const-string v2, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    :cond_0
    return-void
.end method
