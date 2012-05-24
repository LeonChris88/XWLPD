.class public Lcom/android/email/SncMessagingController;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SncMessagingController$Command;,
        Lcom/android/email/SncMessagingController$CommandInfo;,
        Lcom/android/email/SncMessagingController$ImapIdleFolder;,
        Lcom/android/email/SncMessagingController$LocalMessageInfo;,
        Lcom/android/email/SncMessagingController$LocalMailboxInfo;
    }
.end annotation


# static fields
.field private static FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

.field private static FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

.field private static PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

.field private static PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/email/SncMessagingController;


# instance fields
.field private mBusy:Z

.field private mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/email/SncMessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/SncMessagingController$ImapIdleFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/email/Controller$ServiceCallback;

.field private final mListeners:Lcom/android/email/GroupMessagingListener;

.field private mRemoteSync:Z

.field private mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mThread:Ljava/lang/Thread;

.field opsAttachememnt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field opsBody:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field opsEnvelope:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/SncMessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/SncMessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "location"

    aput-object v1, v0, v2

    const-string v1, "contentId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/SncMessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/SncMessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    sget-object v0, Lcom/android/email/SncMessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const-string v1, "contentUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SncMessagingController;->sInstance:Lcom/android/email/SncMessagingController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    new-instance v0, Lcom/android/email/GroupMessagingListener;

    invoke-direct {v0}, Lcom/android/email/GroupMessagingListener;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->opsAttachememnt:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/email/Controller;->getServiceCallback()Lcom/android/email/Controller$ServiceCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "tSnc"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/SncMessagingController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/SncMessagingController;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/SncMessagingController;->synchronizeMailboxSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/SncMessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/SncMessagingController;->updateAccountCapability(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/SncMessagingController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/email/SncMessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/email/SncMessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/SncMessagingController;Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    return-void
.end method

.method private copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V
    .locals 9

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    if-nez v0, :cond_0

    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteSync is not enabled: mRemoteSync - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

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

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v1, :cond_3

    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve message from db, UUID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SncMessagingController"

    const-string v2, "copyOneMessageToProvider | Error while copying downloaded message."

    invoke-static {v1, v0, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "SncMessagingController"

    const-string v2, "copyOneMessageToProvider | Error while copying  downloaded message."

    invoke-static {v1, v0, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v8, v0

    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v7, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0, v2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v1, v0}, Lcom/android/email/LegacyConversions;->updateBodyFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    const-string v0, "SncMessagingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message isSaved : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " body isSaved : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " message loaded flag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p3, p1, v1, v8}, Lcom/android/email/SncMessagingController;->updateHistoryForEmail(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)Z

    :cond_4
    if-nez p6, :cond_5

    invoke-direct {p0, v1}, Lcom/android/email/SncMessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V

    invoke-direct {p0, v8}, Lcom/android/email/SncMessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V

    :goto_4
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, p2}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    iput p4, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "flagAttachment"

    iget-boolean v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "flagLoaded"

    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-nez p6, :cond_8

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "EVENT@LEGACY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyOneMessageToProvider [accId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][mbId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Got exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SncMessagingController"

    const-string v2, "copyOneMessageToProvider | Error while copying downloaded message"

    invoke-static {v1, v0, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :cond_5
    :try_start_7
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    goto/16 :goto_4

    :cond_8
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->opsAttachememnt:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :cond_9
    move-object v8, v0

    goto/16 :goto_3

    :cond_a
    move-object v1, v6

    goto/16 :goto_1
.end method

.method private forwardMessage(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;JLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "SncMessagingController"

    const-string v3, "Into forwardMessage"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "UnifiedInbox"

    invoke-virtual {p1, v2}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "SncMessagingController"

    const-string v2, "Remote Folder does not exists."

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v2, v3, v1}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_1
    const-string v3, "SncMessagingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2, p5}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "SncMessagingController"

    const-string v2, "Remote Message is NULL"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p5}, Lcom/android/emailcommon/mail/Folder;->generateURLAuth(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v3, "SncMessagingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL LIST COUNT :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v3

    invoke-virtual {v3, p3, p4, v1}, Lcom/android/email/mail/Sender;->forwardMessage(JLjava/util/List;)V

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/SncMessagingController;
    .locals 2

    const-class v1, Lcom/android/email/SncMessagingController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/SncMessagingController;->sInstance:Lcom/android/email/SncMessagingController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/SncMessagingController;

    invoke-direct {v0, p0}, Lcom/android/email/SncMessagingController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/SncMessagingController;->sInstance:Lcom/android/email/SncMessagingController;

    :cond_0
    sget-object v0, Lcom/android/email/SncMessagingController;->sInstance:Lcom/android/email/SncMessagingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x2

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v3

    const-string v0, "SncMessagingController"

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

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

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

    const-string v0, "SncMessagingController"

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
    const-string v1, "SncMessagingController"

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

.method private processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/SncMessagingController;->processPendingDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/SncMessagingController;->processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/SncMessagingController;->processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    return-void
.end method

.method private processPendingAppend(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "syncServerId"

    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v0, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v6, v0, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v0, v3, :cond_4

    invoke-virtual {v6, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    new-array v3, v1, [Lcom/android/emailcommon/mail/Message;

    aput-object v0, v3, v2

    invoke-virtual {v6, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move v3, v2

    move v0, v1

    move v4, v1

    :goto_2
    if-eqz v4, :cond_5

    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_5

    :try_start_0
    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v7, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v7}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v8, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v8}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/android/emailcommon/mail/Message;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v7, v9}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iput-wide v7, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v7, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    if-eqz v3, :cond_a

    invoke-virtual {v7, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    :goto_4
    invoke-virtual {v6, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    :cond_8
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    new-array v4, v1, [Lcom/android/emailcommon/mail/Message;

    aput-object v0, v4, v2

    invoke-virtual {v6, v4, v3, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v7, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-lez v4, :cond_9

    move v3, v1

    move v0, v2

    move v4, v2

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    new-array v3, v1, [Lcom/android/emailcommon/mail/Message;

    aput-object v4, v3, v2

    invoke-virtual {v6, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    sget-object v3, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0, v3, v1}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    move v3, v2

    move v0, v1

    move v4, v1

    goto/16 :goto_2

    :cond_a
    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "syncServerId"

    iget-object v8, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "syncServerTimeStamp"

    iget-wide v8, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v7, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    :catch_0
    move-exception v4

    goto/16 :goto_3

    :cond_b
    move-object v0, v5

    goto/16 :goto_1
.end method

.method private processPendingDataChange(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v3, "Local-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p6

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "SncMessagingController"

    const-string v2, "POP Account does not support settings read/favourite/changeMailbox"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_a

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_4
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "Z7App"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update flags for msg id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " read="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flagged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changeRead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changeFlagged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new mailbox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    if-eqz p3, :cond_6

    sget-object v4, Lcom/android/email/SncMessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p7

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_6
    if-eqz p4, :cond_7

    sget-object v4, Lcom/android/email/SncMessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p7

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_7
    if-eqz p5, :cond_8

    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "syncServerId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Local-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v5, Lcom/android/email/SncMessagingController$12;

    move-object/from16 v0, p7

    invoke-direct {v5, p0, v0}, Lcom/android/email/SncMessagingController$12;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    sget-object v3, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    goto :goto_2

    :cond_a
    move-object v10, v1

    move-object v1, p2

    move-object p2, v10

    goto/16 :goto_1
.end method

.method private processPendingDeleteFromTrash(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private processPendingDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 15

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    const-string v4, "accountKey=?"

    const-string v6, "mailboxKey"

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v4, 0x0

    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v7, v1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_2

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    :try_start_1
    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v10, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v5

    if-nez v5, :cond_1

    move-wide v2, v3

    goto :goto_0

    :cond_1
    iget v2, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x6

    if-ne v2, v8, :cond_6

    const/4 v2, 0x1

    :goto_1
    move v12, v2

    move-wide v13, v3

    move-wide v2, v13

    move v4, v12

    :cond_2
    if-nez v6, :cond_3

    if-eqz v4, :cond_3

    :try_start_2
    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v6

    :cond_3
    if-eqz v4, :cond_4

    move-object/from16 v0, p1

    invoke-direct {p0, v6, v0, v5, v1}, Lcom/android/email/SncMessagingController;->processPendingDeleteFromTrash(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    :cond_4
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "Z7App"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to process pending delete for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_3
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :catch_1
    move-exception v1

    move-wide v2, v3

    goto :goto_2
.end method

.method private processPendingMoveToTrash(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x1

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
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    iput-boolean v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-object v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v0, v1, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/email/mail/BaseSncStore;->requireCopyMessageToTrashFolder()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    :cond_5
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_6

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    invoke-virtual {v2, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-instance v4, Lcom/android/email/SncMessagingController$13;

    invoke-direct {v4, p0, p5}, Lcom/android/email/SncMessagingController$13;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_7
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1, v2, v5}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1, v2, v6}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 18

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    const-string v4, "accountKey=?"

    const-string v6, "mailboxKey"

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    const-wide/16 v15, -0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v8, v2

    move-wide v2, v15

    :goto_0
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-class v5, Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v15, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v13, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    if-eqz v6, :cond_e

    if-eqz v7, :cond_0

    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    if-nez v7, :cond_1

    move-wide v2, v15

    goto :goto_0

    :cond_1
    iget-wide v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_d

    iget v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    const/4 v4, 0x1

    move v3, v4

    :goto_1
    iget-wide v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_5

    if-eqz v7, :cond_5

    iget v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_5

    const/4 v2, 0x1

    :goto_2
    iget-boolean v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v1, v4, :cond_6

    const/4 v10, 0x1

    :goto_3
    iget-boolean v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eq v1, v4, :cond_7

    const/4 v1, 0x1

    :goto_4
    move v11, v1

    move-object v4, v7

    move v1, v2

    :goto_5
    if-nez v8, :cond_c

    if-nez v3, :cond_2

    if-nez v10, :cond_2

    if-nez v11, :cond_2

    if-nez v12, :cond_2

    if-eqz v1, :cond_c

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v1, v2, v7}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v8

    move-object v2, v8

    :goto_6
    if-eqz v3, :cond_8

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/email/SncMessagingController;->processPendingMoveToTrash(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    :cond_3
    :goto_7
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v7, v4

    move-object v8, v2

    move-wide v2, v15

    goto/16 :goto_0

    :cond_4
    const/4 v12, 0x1

    move v3, v4

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    if-nez v10, :cond_9

    if-nez v11, :cond_9

    if-eqz v12, :cond_3

    :cond_9
    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v4

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v7 .. v14}, Lcom/android/email/SncMessagingController;->processPendingDataChange(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    move-wide v2, v15

    :goto_8
    :try_start_2
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "Z7App"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to process pending update for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :goto_9
    return-void

    :cond_b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catchall_0
    move-exception v1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v1

    :catch_1
    move-exception v1

    goto :goto_8

    :cond_c
    move-object v2, v8

    goto :goto_6

    :cond_d
    move v3, v4

    goto/16 :goto_1

    :cond_e
    move v3, v4

    move-object v4, v7

    goto/16 :goto_5
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

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    :goto_2
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

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
    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
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

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    :goto_4
    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

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

    const-string v2, "Z7App"

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

    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
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

.method private processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p5, p6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    const-string v1, "Z7App"

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

    const-string v1, "Z7App"

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

    const-string v1, "Z7App"

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

    const-string v1, "Z7App"

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
    const-string v0, "Z7App"

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

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/email/SncMessagingController;->processPendingAppend(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private put(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V
    .locals 8

    :try_start_0
    new-instance v1, Lcom/android/email/SncMessagingController$Command;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/email/SncMessagingController$Command;-><init>(Lcom/android/email/SncMessagingController$1;)V

    iput-object p2, v1, Lcom/android/email/SncMessagingController$Command;->runnable:Ljava/lang/Runnable;

    iput-object p1, v1, Lcom/android/email/SncMessagingController$Command;->description:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/email/SncMessagingController$Command;->info:Lcom/android/email/SncMessagingController$CommandInfo;

    if-eqz p3, :cond_2

    const-string v4, "synchronizeMailbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "qreSyncMailbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "listFolders"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "processPendingActions"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "sendPendingMessages"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "checkMail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$Command;

    iget-object v4, v0, Lcom/android/email/SncMessagingController$Command;->info:Lcom/android/email/SncMessagingController$CommandInfo;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/email/SncMessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/email/SncMessagingController$Command;->info:Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v4, v4, Lcom/android/email/SncMessagingController$CommandInfo;->mAccountId:J

    iget-wide v6, p3, Lcom/android/email/SncMessagingController$CommandInfo;->mAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    const-string v4, "DEBUG@LEGACY "

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

    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

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

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    const-string v4, "DEBUG@LEGACY "

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

    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

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

.method private saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private syncSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v0, "SncMessagingController"

    const-string v1, "syncSearchOnServer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    new-instance v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "SncMessagingController"

    const-string v2, "1.Initializing the (DB)local store data"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/SncMessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND mailboxKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget-wide v8, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    invoke-direct {v0, v1}, Lcom/android/email/SncMessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    iget-object v2, v0, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v9

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    const-string v2, "SncMessagingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remoteMessageCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "visibleLimit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v1, :cond_7

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mVisibleLimitDefault:I

    :cond_7
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/emailcommon/mail/Message;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    if-lez v9, :cond_14

    const-string v2, "SncMessagingController"

    const-string v3, "2.Performing the Search on the based on the input String"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sub-int v1, v9, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v1}, Lcom/android/email/adapter/SncAdapter;->parseSyncLookback(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore;->convertSyncIntervalToDate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/mail/Folder;->getMessages(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v1

    move-object v2, v1

    :goto_3
    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_9

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/emailcommon/mail/Folder;->getMessages(ILjava/lang/Object;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v1

    move-object v2, v1

    goto :goto_3

    :cond_9
    array-length v5, v2

    const/4 v1, 0x0

    move v4, v1

    move v3, v6

    :goto_5
    if-ge v4, v5, :cond_d

    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    if-nez v1, :cond_a

    add-int/lit8 v3, v3, 0x1

    :cond_a
    if-eqz v1, :cond_b

    iget v8, v1, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-eqz v8, :cond_b

    iget v1, v1, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagLoaded:I

    const/4 v8, 0x4

    if-ne v1, v8, :cond_c

    :cond_b
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    :cond_d
    move v8, v3

    :goto_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    const-string v1, "SncMessagingController"

    const-string v2, "3.Based on whether data is already present in the local store or not update/add the record in db.At this stage just update the flags"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v11}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Lcom/android/emailcommon/mail/Message;

    new-instance v1, Lcom/android/email/SncMessagingController$7;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/email/SncMessagingController$7;-><init>(Lcom/android/email/SncMessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v7, v11, v1}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    :cond_e
    const-string v1, "SncMessagingController"

    const-string v2, "5.Filter the messages based on the large/small size.Larege messsages are fetched partially"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v5

    const v6, 0xf000

    if-le v5, v6, :cond_f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    new-instance v10, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v10}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/emailcommon/mail/Message;

    new-instance v3, Lcom/android/email/SncMessagingController$8;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/email/SncMessagingController$8;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    invoke-virtual {v0, v1, v10, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V

    goto :goto_8

    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1, v3}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/mail/Part;

    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v10, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_9

    :cond_12
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    new-instance v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-direct {v0, v9, v8}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto/16 :goto_2

    :cond_14
    move v8, v6

    goto/16 :goto_6
.end method

.method private synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-string v4, "SncMessagingController"

    const-string v5, "synchronizeMailboxGeneric Starts"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    :cond_0
    const-string v4, "SncMessagingController"

    const-string v5, "DRAFTS/OUTBOX Cannot be Synced"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    new-instance v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    :goto_0
    return-object v4

    :cond_1
    const-string v5, "SncMessagingController"

    const-string v6, "1.  Get the message list from the local store and create an index of the uids"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/SncMessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    const-string v7, "accountKey=? AND mailboxKey=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    :goto_1
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    invoke-direct {v4, v5}, Lcom/android/email/SncMessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    iget-object v6, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    invoke-virtual {v14, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4

    :cond_3
    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "accountKey=? AND mailboxKey=? AND flagRead=0"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalUnreadCount is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SncMessagingController"

    const-string v5, "2. Open the remote folder and create the remote folder if necessary"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v15

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
    invoke-virtual {v15}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v15, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SncMessagingController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating remote folder failed :["

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

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "SncMessagingController"

    const-string v5, "3. Open the remote folder. This pre-loads certain metadata like message count"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v15}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v20

    const-string v4, "SncMessagingController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Message Count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SncMessagingController"

    const-string v5, "6. Determine the limit of messages to download"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    if-gtz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mVisibleLimitDefault:I

    :cond_7
    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteMessaegCount/visibleLimit - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSyncLookback - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SncMessagingController"

    const-string v6, "7. Create a list of messages to download"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v7, v5, [Lcom/android/emailcommon/mail/Message;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-lez v20, :cond_2a

    :try_start_2
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v7}, Lcom/android/email/adapter/SncAdapter;->parseSyncLookback(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/emailcommon/utility/Utility;->convertSyncIntervalToDate(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v15, v7, v8}, Lcom/android/emailcommon/mail/Folder;->getMessageUidListByInterval(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    :try_start_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v4, v6, :cond_8

    move v4, v6

    :cond_8
    const-string v8, "SncMessagingController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No. of messages since "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " - "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " and visibleLimit - "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_9

    const-string v7, "SncMessagingController"

    const-string v8, "No messages to download"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-direct {v7, v6, v9, v4}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(III)V
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v4, v7

    goto/16 :goto_0

    :cond_9
    move v7, v4

    :goto_3
    const/4 v4, 0x0

    sub-int v8, v20, v7

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v4, v0, v8}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v8

    array-length v11, v8

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v11, :cond_a

    aget-object v12, v8, v4

    invoke-virtual {v12}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_0
    move-exception v7

    move-object/from16 v28, v5

    move v5, v6

    move v6, v4

    move-object/from16 v4, v28

    :goto_5
    const-string v7, "SncMessagingController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail. Get messages based on date is not supported for acc - "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    move v6, v5

    move-object v5, v4

    goto :goto_3

    :cond_a
    array-length v11, v8

    const/4 v4, 0x0

    move v10, v4

    :goto_6
    if-ge v10, v11, :cond_e

    aget-object v12, v8, v10

    invoke-virtual {v12}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    if-nez v4, :cond_b

    add-int/lit8 v9, v9, 0x1

    :cond_b
    if-eqz v4, :cond_c

    iget v13, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-eqz v13, :cond_c

    iget v4, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagLoaded:I

    const/4 v13, 0x4

    if-ne v4, v13, :cond_d

    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_6

    :cond_e
    move-object v12, v5

    move/from16 v18, v6

    move-object v13, v8

    move/from16 v19, v7

    :goto_7
    const-string v4, "SncMessagingController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "8. Download basic info about the new/unloaded messages (if any) - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_10

    new-instance v17, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v17 .. v17}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, [Lcom/android/emailcommon/mail/Message;

    new-instance v4, Lcom/android/email/SncMessagingController$9;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/email/SncMessagingController$9;-><init>(Lcom/android/email/SncMessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v11, v0, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "SncMessagingController"

    const-string v5, "applyBatch for the fetch Message to the DB"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.android.email.provider"

    const-string v5, "synchronizeMailboxGeneric"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v5}, Lcom/android/email/SncMessagingController;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " synchronizeMailboxGeneric fetchStart Time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " End: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Diff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v4, v4, v23

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    new-instance v5, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v5}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v5, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v13

    const/16 v7, 0x64

    if-le v4, v7, :cond_12

    const/16 v4, 0x64

    move/from16 v0, v19

    if-le v0, v4, :cond_12

    array-length v4, v13

    add-int/lit8 v4, v4, -0x64

    array-length v7, v13

    :goto_8
    if-ge v4, v7, :cond_11

    aget-object v8, v13, v4

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    const/16 v4, 0x64

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    move-object v13, v4

    :cond_12
    const-string v4, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "9. Refresh the flags for any messages in the local store that we didn\'t just download - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v13, v5, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v8

    array-length v9, v8

    const/4 v4, 0x0

    move v7, v4

    :goto_9
    if-ge v7, v9, :cond_13

    aget-object v11, v8, v7

    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v11, v4, :cond_29

    const/4 v4, 0x1

    :goto_a
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v11, v5, :cond_28

    const/4 v5, 0x1

    :goto_b
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_9

    :cond_13
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-nez v5, :cond_14

    if-eqz v6, :cond_1b

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    if-eqz v4, :cond_1b

    array-length v0, v13

    move/from16 v17, v0

    const/4 v4, 0x0

    move v9, v4

    :goto_c
    move/from16 v0, v17

    if-ge v9, v0, :cond_1a

    aget-object v8, v13, v9

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    if-nez v4, :cond_16

    :cond_15
    :goto_d
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto :goto_c

    :cond_16
    iget-boolean v7, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagRead:Z

    sget-object v23, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v23

    if-eqz v5, :cond_18

    move/from16 v0, v23

    if-eq v0, v7, :cond_18

    const/4 v7, 0x1

    :goto_e
    iget-boolean v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v24, v0

    sget-object v25, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v25

    if-eqz v6, :cond_19

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_19

    const/4 v8, 0x1

    :goto_f
    if-nez v7, :cond_17

    if-eqz v8, :cond_15

    :cond_17
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "flagRead"

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "flagFavorite"

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_18
    const/4 v7, 0x0

    goto :goto_e

    :cond_19
    const/4 v8, 0x0

    goto :goto_f

    :cond_1a
    :try_start_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "SncMessagingController"

    const-string v5, "applyBatch for the Flags to the DB"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.email.provider"

    invoke-virtual {v4, v5, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1b
    :goto_10
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-nez v12, :cond_1e

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/16 v4, 0x3e8

    const/4 v7, 0x0

    sub-int v4, v20, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lez v20, :cond_1d

    const/4 v7, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v4, v0, v7}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v7

    array-length v8, v7

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v8, :cond_1c

    aget-object v9, v7, v4

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :catch_1
    move-exception v4

    const-string v5, "EVENT@LEGACY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[accId/mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] RemoteException while doing applyBatch operation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10

    :catch_2
    move-exception v4

    const-string v5, "EVENT@LEGACY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[accId/mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] OperationApplicationException while doing applyBatch operation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_1c
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    const-string v4, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Emails to be deleted - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    :goto_12
    const-string v4, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "11. Remove any messages that are in the local store but no longer on the remote store. - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    if-eqz v4, :cond_24

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "LocalAccountMoved-"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    const-string v9, "SncMessagingController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Account Moved Message - uidToDelete "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_13

    :catch_3
    move-exception v4

    const-string v5, "EVENT@LEGACY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[accId/mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Exception happeing in synchronizeMailboxGeneric!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v5, 0x31

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v4

    :cond_1e
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_12

    :cond_1f
    :try_start_6
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    iget-wide v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v23

    move-wide/from16 v2, v25

    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_13

    :cond_20
    :try_start_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "SncMessagingController"

    const-string v5, "applyBatch for the delete message to DB"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.email.provider"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    :cond_21
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    const-string v4, "SncMessagingController"

    const-string v5, "applyBatch for the syncDelete message to DB"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.email.provider"

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    :cond_22
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "SncMessagingController"

    const-string v5, "applyBatch for the Deleted Items delete message to DB"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.email.provider"

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/content/OperationApplicationException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_23
    :goto_14
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " synchronizeMailboxGeneric deleteStart Time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " End: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Diff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v4, v11

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_24
    const-string v4, "SncMessagingController"

    const-string v5, "12. Divide the unsynced messages into small & large (by size)"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v7

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    int-to-byte v8, v8

    invoke-static {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize(B)I

    move-result v8

    if-le v7, v8, :cond_25

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :catch_4
    move-exception v4

    :try_start_9
    const-string v5, "EVENT@LEGACY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[accId/mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] RemoteException while doing applyBatch operation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_14

    :catch_5
    move-exception v4

    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[accId/mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] OperationApplicationException while doing applyBatch operation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_14

    :cond_25
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_26
    const-string v4, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "13. Download small messages - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v11 .. v17}, Lcom/android/email/SncMessagingController;->downloadLargeMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Lcom/android/emailcommon/mail/Folder;ZZ)V

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v5

    invoke-virtual/range {v11 .. v17}, Lcom/android/email/SncMessagingController;->downloadLargeMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Lcom/android/emailcommon/mail/Folder;ZZ)V

    const-string v4, "SncMessagingController"

    const-string v5, "15. Clean up and report results"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    const-string v4, "SncMessagingController"

    const-string v5, " synchronizeMailboxGeneric Ends "

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " synchronizeMailboxGeneric processSucess Time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " End: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Diff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v4, v4, v21

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    if-lez v18, :cond_27

    :goto_16
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v5, v1}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(III)V

    goto/16 :goto_0

    :cond_27
    move/from16 v18, v20

    goto :goto_16

    :catch_6
    move-exception v7

    move-object/from16 v28, v5

    move v5, v6

    move v6, v4

    move-object/from16 v4, v28

    goto/16 :goto_5

    :catchall_1
    move-exception v4

    move-object v5, v10

    goto/16 :goto_2

    :cond_28
    move v5, v6

    goto/16 :goto_b

    :cond_29
    move v4, v5

    goto/16 :goto_a

    :cond_2a
    move-object v12, v5

    move/from16 v18, v6

    move-object v13, v7

    move/from16 v19, v4

    goto/16 :goto_7
.end method

.method private synchronizeMailboxSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)V
    .locals 10

    const/4 v9, 0x0

    const-string v4, "SncMessagingController"

    const-string v5, "synchronizeMailboxSearchOnServer"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/android/email/Controller$ServiceCallback;->searchMailboxStatus(JII)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/email/SncMessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/BaseSncStore;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/SncMessagingController;->syncSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/email/Controller$ServiceCallback;->searchMailboxStatus(JII)V

    :goto_1
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-interface {v0, p1, p2, v4, v5}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "EVENT@LEGACY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "synchronizeMailboxSearchOnServer [accId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][mbId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Got exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/android/email/Controller$ServiceCallback;->searchMailboxStatus(JII)V

    goto :goto_1
.end method

.method private synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 16

    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "synchronizeMailboxSynchronous Starts for account "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Folder: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/email/SncMessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Folder;->getMailBoxSynchronizer()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/StoreSynchronizer;

    :cond_0
    if-nez v2, :cond_5

    invoke-direct/range {p0 .. p2}, Lcom/android/email/SncMessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v9

    if-eqz v9, :cond_1

    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    if-lez v11, :cond_1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "newMessageCount"

    iget v12, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v3, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Lcom/android/email/service/MailService;->actionNotifyNewMessages(Landroid/content/Context;J)V

    :cond_1
    :goto_1
    if-eqz v9, :cond_f

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v11, :cond_6

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_2
    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "synchronizeMailboxSynchronous | ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " results Total/New/Fetched - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v14, 0x0

    const/16 v15, 0x64

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    iget v12, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    if-ge v11, v12, :cond_2

    const/4 v11, 0x2

    if-ne v5, v11, :cond_8

    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v12, 0x64

    if-lt v11, v12, :cond_8

    :cond_2
    const/4 v11, 0x2

    if-ne v5, v11, :cond_7

    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v12, 0x64

    if-ge v11, v12, :cond_7

    const-string v11, "SncMessagingController"

    const-string v12, "Sync results ignored. Waiting for SMS from Gateway"

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v7

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1, v11}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v9

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_7
    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Setting initial_sync success since all r fetched"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    const-string v11, "EVENT@LEGACY"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "synchronizeMailboxSynchronous [accId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "][mbId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] Got exception - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    goto/16 :goto_3

    :cond_8
    const/4 v11, 0x3

    if-ne v5, v11, :cond_b

    :try_start_1
    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    iget v12, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    if-ge v11, v12, :cond_9

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Lcom/android/email/Controller;->isPop(J)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_9
    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "### Setting initial_sync success since all r fetched or POP account["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v13, v14}, Lcom/android/email/Controller;->isPop(J)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    goto/16 :goto_3

    :cond_a
    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "### Run the synchronizeMailbox for acct "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " folder "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Messages Fetched "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " TotalMessage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    add-int/lit8 v11, v11, 0x19

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    const-string v11, "visibleLimit"

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v3, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p2}, Lcom/android/email/SncMessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto/16 :goto_3

    :cond_b
    move-object/from16 v6, p2

    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v11, :cond_c

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    :cond_c
    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v12, 0x64

    if-ge v11, v12, :cond_d

    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v12, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    sub-int/2addr v11, v12

    if-lez v11, :cond_d

    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "## Run the synchronizeMailbox for acct "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " folder "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Messages Fetched "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " TotalMessage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    add-int/lit8 v11, v11, 0x19

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    const-string v11, "visibleLimit"

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v3, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p2}, Lcom/android/email/SncMessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v11, :cond_e

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v14, 0x21

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncStatus(Landroid/content/Context;Ljava/lang/Long;I)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private updateAccountCapability(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/BaseSncStore;->getStoreCapability()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "protocolVersion"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method applyBatch(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "EVENT@LEGACY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RemoteException while doing applyBatch operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "EVENT@LEGACY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OperationApplicationException while doing applyBatch operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closePooledConnection(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 4

    const-string v0, "EVENT@LEGACY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closePooledConnection | accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "closePooledConnection"

    new-instance v1, Lcom/android/email/SncMessagingController$4;

    invoke-direct {v1, p0, p1}, Lcom/android/email/SncMessagingController$4;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0, v0, v1}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteUserAccount(J)V
    .locals 5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "SncMessagingController"

    const-string v2, "Invalid Account Id"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SncMessagingController"

    const-string v2, "Account is Empty: Null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "validate_result_code"

    const/16 v2, 0x34

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/Controller$ServiceCallback;->deleteUserAccountStatus(Landroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SncMessagingController"

    const-string v3, "Exception while deleting account"

    invoke-static {v2, v3, v0}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const-string v0, "validate_result_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/Controller$ServiceCallback;->deleteUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/mail/BaseSncStore;->delete()V

    invoke-static {v2}, Lcom/android/email/mail/BaseSncStore;->removeInstance(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/android/email/mail/Sender;->removeInstance(Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public downloadLargeMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Lcom/android/emailcommon/mail/Folder;ZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;",
            "Lcom/android/emailcommon/mail/Folder;",
            "ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v10, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v10}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    const-string v1, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "14. Download large messages - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loadMore/batch - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    if-eqz p6, :cond_1

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsAttachememnt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/emailcommon/mail/Message;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    if-eqz p5, :cond_3

    const/high16 v1, 0x10

    move v8, v1

    :goto_1
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    if-nez v1, :cond_4

    const-string v1, "text/html"

    move-object v9, v1

    :goto_2
    const-string v1, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size/Format of the email to be fetched: fetchSize - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ Format - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " acc.mEmailSize - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "SncMessagingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Body structure found for messageUid - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getMessageId_original()J

    move-result-wide v5

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getMessageId_original()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    if-eqz p5, :cond_5

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    :goto_4
    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v10, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    if-eqz p5, :cond_6

    const/4 v5, 0x1

    :goto_5
    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V

    goto :goto_3

    :cond_3
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    int-to-byte v1, v1

    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize(B)I

    move-result v1

    move v8, v1

    goto/16 :goto_1

    :cond_4
    const-string v1, "text/plain"

    move-object v9, v1

    goto/16 :goto_2

    :cond_5
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    goto :goto_4

    :cond_6
    const/4 v5, 0x2

    goto :goto_5

    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v4, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v3, 0x1

    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    invoke-static {v4, v9}, Lcom/android/emailcommon/internet/MimeUtility;->getPart(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;

    move-result-object v1

    if-nez v1, :cond_8

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    if-eqz v1, :cond_9

    const-string v1, "text/html"

    :goto_6
    invoke-static {v4, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getPart(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v5, "SncMessagingController"

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_8
    move-object v4, v1

    if-eqz v4, :cond_f

    invoke-virtual {v10, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v5

    if-le v5, v8, :cond_e

    const-string v1, "SncMessagingController"

    const-string v3, "Added sane flag for this part"

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v8}, Lcom/android/emailcommon/mail/Part;->setSize(I)V

    const/4 v1, 0x2

    :goto_7
    const-string v3, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ctype - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cdisp - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mType - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v10, v6}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    invoke-interface {v4, v5}, Lcom/android/emailcommon/mail/Part;->setSize(I)V

    move v5, v1

    :goto_8
    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V

    goto/16 :goto_3

    :cond_9
    const-string v1, "text/plain"

    goto/16 :goto_6

    :cond_a
    if-eqz p6, :cond_d

    :try_start_0
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "SncMessagingController"

    const-string v2, "applyBatch for the large message envelope to DB "

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.email.provider"

    iget-object v3, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    :cond_b
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "SncMessagingController"

    const-string v2, "applyBatch for the large message body to DB "

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.email.provider"

    iget-object v3, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    :cond_c
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsAttachememnt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "SncMessagingController"

    const-string v2, "applyBatch for the large message attachements to DB "

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.email.provider"

    iget-object v3, p0, Lcom/android/email/SncMessagingController;->opsAttachememnt:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_d
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "SncMessagingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " synchronizeMailboxGeneric LargeMessagebodyStart Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " End: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Diff: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v1, v11

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EVENT@LEGACY"

    const-string v3, "RemoteException while doing applyBatch operation"

    invoke-static {v2, v1, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_9

    :catch_1
    move-exception v1

    const-string v2, "EVENT@LEGACY"

    const-string v3, "OperationApplicationException while doing applyBatch operation"

    invoke-static {v2, v1, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    move v1, v3

    goto/16 :goto_7

    :cond_f
    move v5, v3

    goto/16 :goto_8
.end method

.method public getMailboxSyncState(J)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->pushStatus()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public loadAttachment(JJJJZ)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v14

    if-nez v14, :cond_0

    move-wide/from16 v3, p3

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide/from16 v5, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/email/Controller$ServiceCallback;->loadAttachmentStatus(JJII)V

    const-string v2, "loadAttachment"

    new-instance v5, Lcom/android/email/SncMessagingController$16;

    move-object/from16 v6, p0

    move/from16 v7, p9

    move-wide/from16 v8, p1

    move-wide/from16 v10, p5

    move-wide/from16 v12, p3

    move-wide v15, v3

    move-wide/from16 v17, p7

    invoke-direct/range {v5 .. v18}, Lcom/android/email/SncMessagingController$16;-><init>(Lcom/android/email/SncMessagingController;ZJJJLcom/android/emailcommon/provider/EmailContent$Attachment;JJ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-wide v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    goto :goto_0
.end method

.method public loadMessageForView(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V

    const-string v0, "loadMessageForViewRemote"

    new-instance v1, Lcom/android/email/SncMessagingController$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/SncMessagingController$15;-><init>(Lcom/android/email/SncMessagingController;J)V

    invoke-direct {p0, v0, v1}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadMore(J)V
    .locals 3

    const-string v0, "SncMessagingController"

    const-string v1, "load More"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/email/Controller$ServiceCallback;->loadMoreStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "loadMore"

    new-instance v1, Lcom/android/email/SncMessagingController$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/SncMessagingController$14;-><init>(Lcom/android/email/SncMessagingController;J)V

    invoke-direct {p0, v0, v1}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onIdleExists(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 4

    const-string v0, "SncMessagingController"

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

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/SncMessagingController$19;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/email/SncMessagingController$19;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public processPendingActions(J)V
    .locals 2

    const-string v0, "processPendingActions"

    new-instance v1, Lcom/android/email/SncMessagingController$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/SncMessagingController$10;-><init>(Lcom/android/email/SncMessagingController;J)V

    invoke-direct {p0, v0, v1}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method pruneCachedAttachments(J)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

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

    sget-object v4, Lcom/android/email/SncMessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

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

    sget-object v4, Lcom/android/email/SncMessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

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

.method public qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/email/SncMessagingController;->setFetchFlag(JI)V

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    const-string v0, "qreSyncMailbox"

    new-instance v1, Lcom/android/email/SncMessagingController$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/email/SncMessagingController$6;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-instance v2, Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/email/SncMessagingController$CommandInfo;-><init>(JJ)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    goto :goto_0
.end method

.method public qreSyncMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 11

    const/4 v10, 0x0

    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QReSyncMailboxSynchronous Starts "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMailBoxSynchronizer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/StoreSynchronizer;

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v5, p0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    invoke-interface {v0, p1, p2, v5}, Lcom/android/email/mail/StoreSynchronizer;->qresyncMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v4

    :goto_1
    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qreSyncMailboxSynchronous | ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "results Total/New/Fetched/isReSync - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mReSync:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    iget-boolean v5, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mReSync:Z

    if-eqz v5, :cond_0

    const-string v5, "SncMessagingController"

    const-string v6, "$$ Run the qresync again since not fully done"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/email/SncMessagingController;->qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    :cond_0
    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    iget-boolean v5, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mUpdateAccountList:Z

    if-eqz v5, :cond_3

    const/16 v5, 0xc8

    :goto_2
    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    :goto_3
    return-void

    :cond_1
    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get the folder for the remoteStore for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " acctId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v5, "EVENT@LEGACY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qreSyncMailboxSynchronous [accId - "

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

    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/email/SncMessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v4

    goto/16 :goto_1

    :cond_3
    const/16 v5, 0x64

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v8, 0x21

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public declared-synchronized resetIdling(Z)V
    .locals 10

    const/4 v9, 0x1

    monitor-enter p0

    :try_start_0
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE resetIdling - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/EmailConnectivityManager;->isWifiOnly()Z

    move-result v0

    invoke-static {}, Lcom/android/email/EmailConnectivityManager;->isMobileAvailable()Z

    move-result v1

    const-string v2, "SncMessagingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDLE isWifiOnly - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isMobileAvailable - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v4}, Lcom/android/email/SncMessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v4

    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IDLE ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isPush - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    const-string v4, "Off-Peak Time/Not-wifi-only"

    iput-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, v9, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->reset(Z)V

    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v4, "Pausing IDLE since off-peak or roaming or not-wifi-only"

    invoke-virtual {v0, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    :goto_1
    const-string v4, "SncMessagingController"

    const-string v5, "closing the pooled connection, if any, to reduce Server\'s load :)"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p0, v0}, Lcom/android/email/SncMessagingController;->closePooledConnection(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    const-string v4, "SncMessagingController"

    const-string v5, "IDLE Already paused"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v9, :cond_4

    const-string v4, "Peak-Time"

    iput-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    const-string v4, "Resuming IDLE since Peak time"

    invoke-virtual {v0, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {p0, v4, v5}, Lcom/android/email/SncMessagingController;->qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->status()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x6

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->reset()V

    iget-object v0, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p0, v0}, Lcom/android/email/SncMessagingController;->closePooledConnection(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "SncMessagingController"

    const-string v4, "IDLE Not restarted since restart time is not reached"

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {p0, v3, v0}, Lcom/android/email/SncMessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_9
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "SncMessagingController"

    const-string v1, "IDLE No need to reset since no idle connections!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :cond_a
    :try_start_2
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-ne v9, v0, :cond_b

    const-string v0, "SncMessagingController"

    const-string v1, "IDLE Reset timer is already running!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/SncMessagingController$21;

    invoke-direct {v1, p0}, Lcom/android/email/SncMessagingController$21;-><init>(Lcom/android/email/SncMessagingController;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public resetQresyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 7

    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetQresyncMailbox - accId - "

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

    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/SncMessagingController;->setFetchFlag(JI)V

    const-string v0, "resetQresyncMailbox"

    new-instance v1, Lcom/android/email/SncMessagingController$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/email/SncMessagingController$5;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-instance v2, Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/email/SncMessagingController$CommandInfo;-><init>(JJ)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    return-void
.end method

.method public run()V
    .locals 5

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$Command;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "DEBUG@LEGACY "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [TAKE] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/SncMessagingController;->mBusy:Z

    iget-object v2, v0, Lcom/android/email/SncMessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/SncMessagingController;->mBusy:Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendPendingMessages(Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .locals 5

    if-nez p1, :cond_0

    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid params. Null account & sentFolderId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "sendPendingMessages"

    new-instance v1, Lcom/android/email/SncMessagingController$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/SncMessagingController$17;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    new-instance v2, Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v2, v3, v4, p2, p3}, Lcom/android/email/SncMessagingController$CommandInfo;-><init>(JJ)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    goto :goto_0
.end method

.method public sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

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

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-gtz v2, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/mail/BaseSncStore;->requireCopyMessageToSentFolder()Z

    move-result v13

    const/4 v2, 0x0

    if-eqz v13, :cond_c

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "mailboxKey"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "syncServerId"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v2

    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_b

    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    const-wide/16 v14, 0x0

    cmp-long v4, v7, v14

    if-lez v4, :cond_4

    const-string v4, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "### msgId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " BodyId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " srcMsgId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    invoke-static {v4, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    const-string v4, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendPendingMessageSync - srcMessage - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_4

    iget v4, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v7, 0x1

    if-eq v4, v7, :cond_3

    const-string v2, "Z7App"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t send #"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "; unloaded body"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " of the srcMessage #"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const/4 v7, 0x0

    const/16 v8, 0x41

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V

    iget-wide v7, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/SncMessagingController;->loadMore(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v5, v1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v7, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v4

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    if-eqz v4, :cond_4

    iget-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-nez v8, :cond_5

    const-string v8, "SncMessagingController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "srcBody: text - "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v15, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "textReply"

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v7, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "SncMessagingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated the body of the message #"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " with the source message# "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "SncMessagingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not retrieve the message for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    :try_start_6
    const-string v8, "SncMessagingController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "srcBody: html - "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v15, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "htmlReply"

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v8, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    const-string v4, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message TYPE :: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v9, v9, 0x2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/email/activity/utils/AppPreferences;->ENABLE_SNC_SMART_FORWARD:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v14, v15}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    iget v4, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v7, 0x2

    if-ne v4, v7, :cond_7

    const-string v4, "SncMessagingController"

    const-string v7, "Starting the Forward without Download Flow"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/email/SncMessagingController;->forwardMessage(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x22

    invoke-direct {v2, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v2

    :cond_7
    invoke-virtual {v12, v5, v6}, Lcom/android/email/mail/Sender;->sendMessage(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_8
    :try_start_7
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    if-eqz v4, :cond_9

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v14, v15, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    :cond_9
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v10, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_3
    if-eqz v8, :cond_2

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v14, v15, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_c
    move-object v10, v2

    goto/16 :goto_1
.end method

.method public setFetchFlag(JI)V
    .locals 3

    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE resetFetchFlag | FolderHash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

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

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->setFetchFlag(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SncMessagingController"

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

.method public declared-synchronized startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/SncMessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)V
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
    const-string v0, "SncMessagingController"

    const-string v3, "IDLE startIdling Starts"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    const-string v0, "SncMessagingController"

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

    invoke-virtual {p0, p1, p2}, Lcom/android/email/SncMessagingController;->stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    :cond_0
    new-instance v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/SncMessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Off-Peak Time"

    iput-object v0, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

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

    invoke-virtual {v3}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->start()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, "SncMessagingController"

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

    invoke-virtual {p0, v0}, Lcom/android/email/SncMessagingController;->resetIdling(Z)V

    const-string v0, "SncMessagingController"

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

    iget-object v2, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

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

    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE stopIdling | FolderHash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

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

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->stop()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SncMessagingController"

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

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/email/Controller$ServiceCallback;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;II)V

    goto :goto_0
.end method

.method public synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/email/SncMessagingController;->setFetchFlag(JI)V

    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/android/email/SncMessagingController$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/email/SncMessagingController$3;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-instance v2, Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/email/SncMessagingController$CommandInfo;-><init>(JJ)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    goto :goto_0
.end method

.method public updateHistoryForEmail(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
