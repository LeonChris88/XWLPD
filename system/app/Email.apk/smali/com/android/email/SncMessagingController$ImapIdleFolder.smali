.class public Lcom/android/email/SncMessagingController$ImapIdleFolder;
.super Ljava/lang/Object;
.source "SncMessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SncMessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapIdleFolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;,
        Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleMessageUpdateCallback;
    }
.end annotation


# instance fields
.field private final IDLE_STATUS_STRING:[Ljava/lang/String;

.field mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field mConnTimeout:I

.field mCurrUpTime:J

.field mFailureString:Ljava/lang/String;

.field mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIdleCallback:Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

.field mIdleThreadId:Ljava/lang/Thread;

.field mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

.field mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

.field mResetCount:I

.field mRetryCount:I

.field private mStats:Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;

.field mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field mTotalUpTime:J

.field final synthetic this$0:Lcom/android/email/SncMessagingController;


# direct methods
.method public constructor <init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->this$0:Lcom/android/email/SncMessagingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "IDLE_STATUS_INACTIVE"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "IDLE_STATUS_ACTIVE  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IDLE_STATUS_STOPPED "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IDLE_STATUS_FAILED  "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IDLE_STATUS_RESET   "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "NIL"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->IDLE_STATUS_STRING:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "na"

    iput-object v0, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    iput v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    iput v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mConnTimeout:I

    iput v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mResetCount:I

    iput-wide v5, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mTotalUpTime:J

    iput-wide v5, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mCurrUpTime:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleMessageUpdateCallback;-><init>(Lcom/android/email/SncMessagingController$ImapIdleFolder;Lcom/android/email/SncMessagingController$1;)V

    iput-object v0, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mIdleCallback:Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

    new-instance v0, Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;

    invoke-direct {v0, p0, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;-><init>(Lcom/android/email/SncMessagingController$ImapIdleFolder;Lcom/android/email/SncMessagingController$1;)V

    iput-object v0, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStats:Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;

    iput-object p2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object p3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/SncMessagingController$ImapIdleFolder;)Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleMessageUpdateCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mIdleCallback:Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/SncMessagingController$ImapIdleFolder;)Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;
    .locals 1

    iget-object v0, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStats:Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;

    return-object v0
.end method


# virtual methods
.method public close(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    if-nez v1, :cond_0

    const-string v1, "close | Fail. mRemoteFolder itself is null"

    invoke-virtual {p0, v1}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/emailcommon/mail/Folder;->close(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dumpStatus(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "[ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->IDLE_STATUS_STRING:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " [isPaused - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " [Ret/Timeout/Res - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mConnTimeout:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mResetCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " [Inv/Sup - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStats:Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;

    iget v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;->mInvoked:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStats:Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;

    iget v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;->mSuppressed:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " [TName/Id - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure Reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    const-string v1, "na"

    goto :goto_1

    :cond_3
    const-string v1, "na"

    goto :goto_2
.end method

.method public logIdle(Ljava/lang/String;)V
    .locals 4

    const-string v0, "IDLE "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pushStatus()I
    .locals 2

    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 5

    const/4 v4, 0x4

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v2, "Reset skipped\n"

    invoke-virtual {p0, v2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_3

    :cond_1
    const-string v2, "Restarting idle since failed or still in reset state\n"

    invoke-virtual {p0, v2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->start()I

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    if-nez p1, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    if-nez v2, :cond_5

    const-string v2, "reset | Fail. mRemoteFolder itself is null"

    invoke-virtual {p0, v2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->stopIdling()V

    const-string v2, "Reset initiated."

    invoke-virtual {p0, v2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Resetting IDLE failed"

    invoke-virtual {p0, v2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setFetchFlag(I)V
    .locals 3

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch Flag Reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    goto :goto_0
.end method

.method public start()I
    .locals 9

    const/16 v8, 0x64

    const/4 v7, 0x3

    const/4 v2, -0x1

    :try_start_0
    const-string v3, "IDLE "

    const-string v4, "Open the remote folder and create the remote folder if necessary"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v4}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v4}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;Z)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Remote folder does not exist"

    invoke-virtual {p0, v3}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    const-string v3, "Remote folder does not exist"

    iput-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const/16 v5, 0x30

    const/16 v6, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/Controller$ServiceCallback;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;II)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v5

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/email/Controller$ServiceCallback;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;II)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tImapIdle_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;-><init>(Lcom/android/email/SncMessagingController$ImapIdleFolder;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public status()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 4

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eq v3, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    :cond_0
    const-string v2, "already Stopped or Failed :(\n"

    invoke-virtual {p0, v2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x4

    if-ne v2, v0, :cond_2

    const-string v2, "Fail :( Already in reset state. Hence, closing the connection\n"

    invoke-virtual {p0, v2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->close(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    if-nez v2, :cond_3

    const-string v2, "stop | Fail. mRemoteFolder itself is null"

    invoke-virtual {p0, v2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->stopIdling()V

    const-string v2, "Stop initiated."

    invoke-virtual {p0, v2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Stopping IDLE failed"

    invoke-virtual {p0, v2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
