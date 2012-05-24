.class public Lcom/android/email/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/Controller$ControllerStats;,
        Lcom/android/email/Controller$ControllerService;,
        Lcom/android/email/Controller$ServiceCallbackWrapper;,
        Lcom/android/email/Controller$ServiceCallback;,
        Lcom/android/email/Controller$LegacyListener;,
        Lcom/android/email/Controller$MessageRetrievalListenerBridge;,
        Lcom/android/email/Controller$Result;,
        Lcom/android/email/Controller$PendingDownloadController;,
        Lcom/android/email/Controller$AccountMoveMessageInfo;
    }
.end annotation


# static fields
.field private static final BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

.field private static mAttachdownstop:Z

.field private static mContextnoti:Landroid/content/Context;

.field private static mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

.field private static sCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/emailcommon/service/IEmailServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/email/Controller;


# instance fields
.field public bEAS2POP_EASTrashMove_Complete:Z

.field public bLoadingMessages:Z

.field private mAccountMoveList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$AccountMoveMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

.field mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

.field private final mContext:Landroid/content/Context;

.field public mLegacyController:Lcom/android/email/MessagingController;

.field final mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyListener:Lcom/android/email/Controller$LegacyListener;

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

.field private mProviderContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/email/Controller;->mAttachdownstop:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/android/email/Controller;->sCallbackList:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/email/Controller$LegacyListener;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$LegacyListener;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    new-instance v0, Lcom/android/email/ControllerUtility$CallbackWrapper;

    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Lcom/android/email/ControllerUtility$CallbackWrapper;-><init>(Ljava/util/HashSet;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    iput-boolean v2, p0, Lcom/android/email/Controller;->bLoadingMessages:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    new-instance v0, Lcom/android/email/Controller$17;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$17;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    sput-object p1, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    new-instance v0, Lcom/android/email/Controller$ServiceCallback;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;)V

    sput-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->addListener(Lcom/android/email/MessagingListener;)V

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    sget-object v2, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    iget-object v3, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v4, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->initProtocolAdapter(Landroid/content/Context;Lcom/android/email/Controller$Result;Lcom/android/email/Controller$ServiceCallback;Lcom/android/email/MessagingController;Lcom/android/email/Controller$LegacyListener;)V

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/Controller$ControllerStats;->init()V

    :cond_0
    return-void
.end method

.method public static IsAttachdownstop()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/Controller;->mAttachdownstop:Z

    return v0
.end method

.method public static SetAttachdownstop(Z)V
    .locals 1

    sput-boolean p0, Lcom/android/email/Controller;->mAttachdownstop:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->setCopyCancel(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/os/RemoteCallbackList;
    .locals 1

    sget-object v0, Lcom/android/email/Controller;->sCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/android/email/Controller;
    .locals 1

    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;
    .locals 1

    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/Controller;[J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/Controller;->deleteMessageSync([J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/Controller;[J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/Controller;->deleteMessageSyncForAllAccount([J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/Controller;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/email/Controller;->moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/Controller;)Lcom/android/email/Controller$PendingDownloadController;
    .locals 1

    iget-object v0, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/Controller;Lcom/android/email/Controller$PendingDownloadController;)Lcom/android/email/Controller$PendingDownloadController;
    .locals 0

    iput-object p1, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/Controller;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/Controller;->processPendingMessages_AccountmoveIsneededAfterAttachmentDownload()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    .locals 1

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method private deleteMessageSync([J)V
    .locals 13

    const/4 v12, 0x0

    const/4 v8, 0x6

    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    aget-wide v1, p1, v10

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessageSync() is called : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-wide v3, p1, v10

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1, v8}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    aget-wide v3, p1, v10

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v0

    move v1, v10

    :goto_1
    if-ge v1, v4, :cond_2

    aget-wide v5, v0, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    aget-wide v3, p1, v10

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->getMailboxId(Landroid/content/Context;J)J

    move-result-wide v4

    const-string v0, "Controller"

    const-string v3, "Mail is getting deleted for Snc Account"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessage(Ljava/util/HashSet;JJ)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "mailboxKey"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v3

    if-ne v3, v9, :cond_8

    invoke-static {v8}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/adapter/ProtocolAdapter;->hasExpiredAccounts()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v3, v11, :cond_6

    :cond_5
    array-length v3, p1

    move v0, v10

    :goto_2
    if-ge v0, v3, :cond_7

    aget-wide v4, p1, v0

    iget-object v6, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/email/Controller;->moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    :cond_7
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v1, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingActions(J)V

    :goto_3
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    move v4, v11

    move v5, v10

    move v6, v10

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    :cond_8
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, v5, v6}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessageSync([JJ)V

    goto :goto_3
.end method

.method private deleteMessageSyncForAllAccount([J)V
    .locals 13

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-string v0, "Controller"

    const-string v1, "deleteMessageSyncForAllAccount() is called : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v12, p1

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v12, :cond_6

    aget-wide v3, p1, v10

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x6

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->getMailboxId(Landroid/content/Context;J)J

    move-result-wide v4

    const-string v0, "Controller"

    const-string v3, "Mail is getting deleted for Snc Account"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessage(Ljava/util/HashSet;JJ)Z

    :goto_2
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "mailboxKey"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v7

    if-nez v7, :cond_5

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v5, v6, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v7, 0x0

    aput-wide v3, v1, v7

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/email/Controller;->moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    goto :goto_2

    :cond_5
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessageSync([JJ)V

    goto :goto_2

    :cond_6
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingActions(J)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto/16 :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/Controller;
    .locals 2

    const-class v1, Lcom/android/email/Controller;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/Controller;

    invoke-direct {v0, p0}, Lcom/android/email/Controller;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    :cond_0
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getServiceCallback()Lcom/android/email/Controller$ServiceCallback;
    .locals 1

    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    return-object v0
.end method

.method public static declared-synchronized injectMockControllerForTest(Lcom/android/email/Controller;)V
    .locals 2

    const-class v0, Lcom/android/email/Controller;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isLegacy(J)Z
    .locals 3

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getTrasportType(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPop(J)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getTrasportType(J)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSnc(J)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getTrasportType(J)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnifiedAccount(J)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProviderType(J)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAttachmentOfEAS(JJJJ)Z
    .locals 2

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p7, p8, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loadAttachmentOfEAS"

    const-string v1, "Something goes wrong now.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    .locals 14

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveMessageToSameAccount() is called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    monitor-enter v13

    :try_start_0
    array-length v6, p1

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v6, :cond_2

    aget-wide v7, p1, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$AccountMoveMessageInfo;

    iget-wide v9, v2, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v2, v9, v11

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_2
    invoke-static/range {p3 .. p4}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    move-object v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Lcom/android/email/adapter/ProtocolAdapter;->moveMessageToSameAccount(Ljava/util/ArrayList;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    monitor-exit v13

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method private processPendingMessages_AccountmoveIsneededAfterAttachmentDownload()V
    .locals 36

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v7, -0x1

    const-wide/16 v13, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    move-wide/from16 v26, v11

    move-wide/from16 v24, v9

    move-wide/from16 v22, v7

    :goto_0
    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object/from16 v31, v0

    monitor-enter v31

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    monitor-exit v31

    move-wide/from16 v11, v26

    move-wide/from16 v9, v24

    move-wide/from16 v7, v22

    :goto_1
    return-void

    :cond_0
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_1
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/Controller$AccountMoveMessageInfo;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 v19, 0x1

    :cond_2
    if-eqz v19, :cond_4

    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    move-wide/from16 v11, v26

    move-wide/from16 v9, v24

    move-wide/from16 v7, v22

    :goto_3
    :try_start_1
    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    :cond_3
    :try_start_2
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v32, 0x1

    cmp-long v4, v4, v32

    if-nez v4, :cond_1

    const/16 v17, 0x1

    goto :goto_2

    :cond_4
    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/Controller$AccountMoveMessageInfo;

    move-object/from16 v15, v16

    iget-wide v4, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v32, -0x1

    cmp-long v4, v4, v32

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v11, v26

    move-wide/from16 v9, v24

    move-wide/from16 v7, v22

    :goto_4
    :try_start_3
    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v5

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/android/email/Controller;->moveMessageToOtherAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJJ)V

    :cond_5
    const-wide/16 v4, 0x12c

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move-wide/from16 v26, v11

    move-wide/from16 v24, v9

    move-wide/from16 v22, v7

    goto/16 :goto_0

    :cond_6
    :try_start_5
    iget-wide v4, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v32, 0x1

    cmp-long v4, v4, v32

    if-nez v4, :cond_7

    move-wide/from16 v11, v26

    move-wide/from16 v9, v24

    move-wide/from16 v7, v22

    goto :goto_4

    :cond_7
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v0, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    move-wide/from16 v32, v0

    iget-wide v0, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v32

    move-wide/from16 v2, v34

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/email/provider/AttachmentProvider;->getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-wide v4, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v7, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-wide v13, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J

    iget-wide v9, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_accountId:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-wide v11, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_boxId:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v4

    goto/16 :goto_3

    :cond_8
    const/16 v18, 0x1

    :try_start_9
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    iget-wide v9, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J

    iget-wide v11, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/email/Controller;->loadAttachmentOfEAS(JJJJ)Z

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_9
    move-wide/from16 v11, v26

    move-wide/from16 v9, v24

    move-wide/from16 v7, v22

    goto/16 :goto_4

    :catch_0
    move-exception v20

    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    monitor-exit v5

    goto/16 :goto_1

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v4

    throw v4

    :catchall_4
    move-exception v4

    move-wide/from16 v11, v26

    move-wide/from16 v9, v24

    goto/16 :goto_3

    :catchall_5
    move-exception v4

    move-wide/from16 v11, v26

    goto/16 :goto_3

    :cond_a
    move-wide/from16 v11, v26

    move-wide/from16 v9, v24

    move-wide/from16 v7, v22

    goto/16 :goto_4
.end method

.method private setMessageBoolean([JLjava/lang/String;ZJ)Landroid/os/AsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/lang/String;",
            "ZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/email/Controller$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$14;-><init>(Lcom/android/email/Controller;[JLjava/lang/String;ZJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private setMessageInt([JLjava/lang/String;IJ)Landroid/os/AsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/lang/String;",
            "IJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/email/Controller$15;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$15;-><init>(Lcom/android/email/Controller;Ljava/lang/String;I[JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static showSendingNotification_fail(JJLjava/lang/String;)V
    .locals 7

    const-wide/16 v3, -0x1

    :try_start_0
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSendingNotification_fail() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, p2, v3

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object p4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    :goto_0
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v4, 0x7f08050b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_1
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0202aa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v6, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    sget-object v2, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    sget-object v3, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v4, 0x7f08050b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    sget-object v2, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    long-to-int v2, p0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    long-to-int v1, p0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v3, 0x7f08050b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-wide v1, p2

    goto/16 :goto_0
.end method

.method public static showSendingNotification_finish(JJLjava/lang/String;)V
    .locals 7

    const-wide/16 v3, -0x1

    :try_start_0
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSendingNotification_finish() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, p2, v3

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide p2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide v1, p2

    :goto_0
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v4, 0x7f08050c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_1
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0202aa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v6, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    sget-object v2, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    sget-object v3, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v4, 0x7f08050c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    sget-object v2, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    long-to-int v2, p0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    long-to-int v1, p0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v3, 0x7f08050c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-wide v1, p2

    goto/16 :goto_0
.end method


# virtual methods
.method public OnCleanup()V
    .locals 0

    invoke-static {}, Lcom/android/email/adapter/ProtocolAdapter;->doCleanup()V

    return-void
.end method

.method public addResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2

    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addUserAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EVENT@CONTR"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addUserAccount] [endpointName - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[userName - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[password - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/email/EmailLog;->DEBUG_LOG_PRIVACY:Z

    if-eqz v0, :cond_1

    move-object v0, p4

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[serviceList - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    :cond_0
    const-string v0, "Controller"

    const-string v2, "[addUserAccount] INVALID Arguments"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status_text"

    const-string v2, "Invalid arguments"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status_code"

    const/16 v2, 0x3d

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/email/Controller$ServiceCallback;->addUserAccountStatus(Landroid/os/Bundle;J)V

    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/android/email/EmailLog;->LOG_PRIVACY:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "EVENT@CONTR"

    const-string v2, "addUserAccount | Airplane mode ON"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/email/Controller$ServiceCallback;->addUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_1

    :cond_3
    sput-boolean v4, Lcom/android/email/Email;->SNC_RESTORE_ACCOUNT_FLOW_UNDERPROCESS:Z

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->setRestoreFlowDone(Landroid/content/Context;Z)V

    new-instance v0, Lcom/android/email/Controller$19;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$19;-><init>(Lcom/android/email/Controller;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public changeSmsSettings(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->changeSmsSettings(J)V

    goto :goto_0
.end method

.method public cleanupForTest()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->removeListener(Lcom/android/email/MessagingListener;)V

    return-void
.end method

.method public createFolder(Ljava/lang/String;J)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/email/Controller$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/email/Controller$4;-><init>(Lcom/android/email/Controller;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public createFolder(Ljava/lang/String;JJZ)Landroid/os/AsyncTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJZ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/email/Controller$5;

    move-object v1, p0

    move-wide v2, p2

    move v4, p6

    move-object v5, p1

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/email/Controller$5;-><init>(Lcom/android/email/Controller;JZLjava/lang/String;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method createMailbox(JI)J
    .locals 4

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid arguments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Email"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    iput-wide p1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iput p3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getMailboxServerName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    return-wide v2
.end method

.method public deleteAccount(J)V
    .locals 1

    new-instance v0, Lcom/android/email/Controller$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$16;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public deleteAccountSync(JLandroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->deleteAccountSync(JLandroid/content/Context;)V

    return-void
.end method

.method public deleteAttachment(J)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteAttachmentMessages()V
    .locals 9

    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=257"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "mailboxKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public deleteCalendarInvitation(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "sync_data2=?"

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public deleteFolder(J)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/email/Controller$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$3;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public deleteFolder(JLjava/util/ArrayList;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/email/Controller$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$2;-><init>(Lcom/android/email/Controller;JLjava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessage([JJ)V
    .locals 3

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/email/Controller$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$10;-><init>(Lcom/android/email/Controller;[JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public deleteMessageLocal([J)V
    .locals 10

    move-object v0, p1

    array-length v5, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-wide v3, v0, v2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "EasLocalDeleteFlag"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteSyncedDataSync(J)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? AND type!=68"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "syncKey"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id =?"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const-string v3, "syncKey"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=?"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->deleteAccountPIMData(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Email"

    const-string v2, "Exception while deleting account synced data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public emptyTrash(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->emptyTrash(J)V

    return-void
.end method

.method public declared-synchronized findOrCreateMailboxOfType(JI)J
    .locals 6

    const-wide/16 v2, -0x1

    monitor-enter p0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    if-gez p3, :cond_2

    :cond_0
    move-wide v0, v2

    :cond_1
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p1, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/Controller;->createMailbox(JI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getAttachmentMailbox()Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=257"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    invoke-virtual {v7, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    :goto_0
    return-object v8

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const-string v0, "__attachment_mailbox__"

    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    const-string v0, "__attachment_mailbox__"

    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    const/16 v0, 0x101

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-object v8, v7

    goto :goto_0
.end method

.method public getAvailableAccounts(I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getAvailableAccounts][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EVENT@CONTR"

    const-string v2, "getAvailableAccounts | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getCachedEndpoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/email/Controller$ServiceCallback;->getAvailableAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/email/Controller$18;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Controller$18;-><init>(Lcom/android/email/Controller;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getConversationID(Ljava/lang/String;)[B
    .locals 6

    const/16 v5, 0x10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte array to encript cannot be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    aget-byte v3, v2, v0

    const/16 v4, -0x80

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_2

    aget-byte v3, v2, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    aget-byte v3, v2, v0

    mul-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method getMailboxServerName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/activity/ActivityResourceInterface;->getMailboxServerName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutOfOffice(J)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [getOutOfOffice] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid account ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOutOfOffice | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getOutOfOffice(J)V

    goto :goto_0
.end method

.method public getResultCallbacksForTest()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserConfiguredAccounts(I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getUserConfiguredAccounts][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EVENT@CONTR"

    const-string v2, "getUserConfiguredAccounts | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/email/Controller$ServiceCallback;->getUserConfiguredAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/email/Controller$20;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Controller$20;-><init>(Lcom/android/email/Controller;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getUserProfile(I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getUserprofile][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EVENT@CONTR"

    const-string v2, "getUserProfile | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/email/Controller$ServiceCallback;->getUserProfileStatus(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/email/Controller$21;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Controller$21;-><init>(Lcom/android/email/Controller;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public hasPremiumExpiredAccounts()Z
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->hasExpiredAccounts()Z

    move-result v0

    return v0
.end method

.method public hasPremiumExpiredAccounts(JJ)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts()Z

    move-result v0

    return v0
.end method

.method public hostChanged(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->hostChanged(J)V

    return-void
.end method

.method public isMessagingController(J)Z
    .locals 3

    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pop3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "imap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v0

    goto :goto_0
.end method

.method public loadAttachment(JJJI)V
    .locals 9

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAttachment() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v8, 0x0

    move-wide v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-wide v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v1, 0x0

    const/16 v8, 0x190

    move-wide v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v1, 0x0

    const/16 v8, 0x64

    move-wide v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0

    :cond_2
    invoke-static {p5, p6}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/adapter/ProtocolAdapter;->loadAttachment(JJJI)V

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V
    .locals 13

    const/4 v12, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZZ)V

    return-void
.end method

.method public loadAttachment(JJJJLcom/android/email/Controller$Result;ZZZ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p1

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v5

    const-string v6, "Controller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Controller:loadAttachment() START ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [loadAttachment] [accId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [mbId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p5

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [msgId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [attId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gtz v6, :cond_1

    :cond_0
    const-string v4, "Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAttachment | Invalid parameter accountId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mailboxId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x3d

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    :goto_0
    return-void

    :cond_1
    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v5, 0x0

    const/16 v12, 0x64

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAttachment | Airplane mode ON accountId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mailboxId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x5d

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto/16 :goto_0

    :cond_5
    invoke-static/range {p7 .. p8}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v4

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-virtual/range {v4 .. v15}, Lcom/android/email/adapter/ProtocolAdapter;->loadAttachment(JJJJZZZ)V

    goto/16 :goto_0
.end method

.method public loadMessageForView(J)V
    .locals 7

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide v2

    :cond_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    :cond_1
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMessageForView | Invalid parameter msg: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x3d

    invoke-direct {v1, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMessageForView | Airplane mode ON messageId "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x5d

    invoke-direct {v1, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    :cond_3
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "[loadMessageForView] [accId - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] [msgId - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->loadMessageForView(J)V

    goto :goto_0
.end method

.method public loadMessageFromUri(Landroid/net/Uri;I)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 15

    invoke-virtual {p0}, Lcom/android/email/Controller;->getAttachmentMailbox()Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v13

    if-nez v13, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    :try_start_1
    new-instance v3, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "__attachment_message__"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    invoke-virtual {v3, v12}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V

    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move/from16 v0, p2

    int-to-long v4, v0

    iget-wide v6, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v8, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-static/range {v1 .. v8}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    invoke-virtual {v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "application/x-pkcs7-mime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v4

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v3

    move-object v6, v2

    move-object v7, v13

    invoke-virtual/range {v4 .. v10}, Lcom/android/email/adapter/ProtocolAdapter;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "multipart/signed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public loadMore(J)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide v0

    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [loadMore] [accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [msgId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, p1, v6

    if-lez v2, :cond_0

    cmp-long v2, v0, v6

    if-gtz v2, :cond_1

    :cond_0
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMore | Invalid parameter msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMoreStatus | Airplane mode ON messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->loadMore(J)V

    goto :goto_0
.end method

.method public loadMoreCancel()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->loadMoreCancel()V

    return-void
.end method

.method public loadMoreMessages(J)V
    .locals 1

    new-instance v0, Lcom/android/email/Controller$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$9;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public lookupAccountForMessage(J)J
    .locals 8

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, -0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    const-string v0, "Controller"

    const-string v1, "[modifyUserAccount] INVALID Arguments"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "EVENT@CONTR"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[modifyUserAccount] [password - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/email/EmailLog;->DEBUG_LOG_PRIVACY:Z

    if-eqz v0, :cond_1

    move-object v0, p3

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[account name - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[display name - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[serviceList - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EVENT@CONTR"

    const-string v2, "modifyUserAccount | Airplane mode ON"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/email/Controller$ServiceCallback;->addUserAccountStatus(Landroid/os/Bundle;J)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/android/email/EmailLog;->LOG_PRIVACY:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/email/Controller$22;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/Controller$22;-><init>(Lcom/android/email/Controller;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public moveConversationAlways(JLjava/lang/String;JJI)V
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v0, p6, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p4, p5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getConversationID(Ljava/lang/String;)[B

    move-result-object v5

    move-wide v1, p1

    move-wide v3, p6

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/adapter/ProtocolAdapter;->moveConversationAlways(JJ[BI)V

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p4

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    goto :goto_0
.end method

.method public moveConversationIgnore(JLjava/lang/String;J)V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    :try_start_0
    const-string v0, "CONVID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConversationID start conversationId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "accountKey=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "6"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4, p5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getConversationID(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x1

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/adapter/ProtocolAdapter;->moveConversationAlways(JJ[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, p0

    move-wide v1, p4

    move-wide v3, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_0
.end method

.method public moveFolder(JJ)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/email/adapter/ProtocolAdapter;->moveFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    return-void

    :cond_0
    iput-object v6, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    iget v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public moveMessage(J[JJ)Landroid/os/AsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[JJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lcom/android/email/Controller$11;

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p4

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$11;-><init>(Lcom/android/email/Controller;[JJJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public moveMessageToOtherAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJJ)V
    .locals 26

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v18

    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-wide v6, p1, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    if-nez v8, :cond_2

    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v21

    const/4 v3, 0x3

    move/from16 v0, v21

    if-eq v0, v3, :cond_5

    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_5

    const-string v3, "moveMessageToOtherAccountFolder()"

    const-string v4, "target account server is invalid.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v22

    const/4 v3, 0x6

    move/from16 v0, v22

    if-ne v0, v3, :cond_6

    const-string v3, "moveMessageToOtherAccountFolder()"

    const-string v4, "source account server is invalid.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_7
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Lcom/android/email/Controller$AccountMoveMessageInfo;

    const/4 v5, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p3

    move-wide/from16 v14, p9

    invoke-direct/range {v3 .. v16}, Lcom/android/email/Controller$AccountMoveMessageInfo;-><init>(Lcom/android/email/Controller;IJJJJJI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide/from16 v0, p3

    invoke-static {v4, v0, v1, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/Controller$AccountMoveMessageInfo;

    iget-wide v7, v4, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-nez v4, :cond_8

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_9
    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0x1

    iput-wide v4, v3, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    goto :goto_4

    :cond_a
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v3

    move-object/from16 v4, v23

    move-wide/from16 v5, p3

    move-wide/from16 v7, p9

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, v18

    move/from16 v15, v21

    move/from16 v16, v22

    invoke-virtual/range {v3 .. v16}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingAccountMoveActions(Ljava/util/ArrayList;JJJJJII)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    if-nez v3, :cond_c

    new-instance v3, Lcom/android/email/Controller$PendingDownloadController;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/email/Controller$PendingDownloadController;-><init>(Lcom/android/email/Controller;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    new-instance v3, Lcom/android/email/Controller$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/email/Controller$12;-><init>(Lcom/android/email/Controller;)V

    invoke-virtual {v3}, Lcom/android/email/Controller$12;->start()V

    :cond_c
    monitor-exit v4

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_e
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    new-instance v3, Lcom/android/email/Controller$AccountMoveMessageInfo;

    const/4 v5, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p3

    move-wide/from16 v14, p9

    invoke-direct/range {v3 .. v16}, Lcom/android/email/Controller$AccountMoveMessageInfo;-><init>(Lcom/android/email/Controller;IJJJJJI)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/Controller$AccountMoveMessageInfo;

    iget-wide v7, v4, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-nez v4, :cond_f

    const/4 v4, 0x1

    :goto_8
    if-nez v4, :cond_e

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_2
    move-exception v3

    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    :cond_10
    :try_start_4
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_6

    :cond_11
    move v4, v5

    goto :goto_8

    :cond_12
    move v4, v5

    goto/16 :goto_5
.end method

.method public refreshIRMTemplates(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->refreshIRMTemplates(J)V

    return-void
.end method

.method public removeResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renameFolder(Ljava/lang/String;J)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/email/Controller$6;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/email/Controller$6;-><init>(Lcom/android/email/Controller;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public resetCheckSyncLookbackForAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string v0, "Controller"

    const-string v1, "resetCheckSyncLookbackForAccount | account is null"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetCheckSyncLookbackForAccount | For account - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3, v5, v5}, Lcom/android/emailcommon/utility/Utility;->restoreMailboxList(Landroid/content/Context;JLjava/lang/String;[Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCheckSyncLookbackForAccount | Fail. No mailboxes for account - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    const-string v5, "Controller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting syncStatus to RESET for mailbox - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x3

    invoke-static {v5, v6, v7, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Controller"

    const-string v2, "Restarting sync for INBOX based on new syncInterval"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    goto/16 :goto_0
.end method

.method public saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 5

    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iput p2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxType:I

    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    return-void
.end method

.method public searchOnServer(JLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/email/Controller$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$8;-><init>(Lcom/android/email/Controller;JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/email/Controller$8;->start()V

    return-void
.end method

.method public sendMeetingEditedResponse(JJI)V
    .locals 7

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->sendMeetingEditedResponse(JJI)V

    goto :goto_0
.end method

.method public sendMeetingResponse(JI)V
    .locals 3

    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->sendMeetingResponse(JI)V

    goto :goto_0
.end method

.method public sendMessage(JJ)V
    .locals 10

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-wide/16 v3, -0x1

    cmp-long v0, p3, v3

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    :cond_0
    const-wide/16 v3, -0x1

    cmp-long v0, p3, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v3, 0x3d

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v6, 0x0

    move-wide v2, p3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, p3, p4, v0}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "mailboxKey"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v9, v7, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "EMAIL_PERFORMANCE"

    const-string v3, "sendMessage() MOVE TO OUTBOX"

    invoke-static {v0, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage | Airplane mode ON messageId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v3, 0x5d

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v6, 0x0

    move-wide v2, p3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    :cond_2
    invoke-static {p3, p4}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/adapter/ProtocolAdapter;->sendMessage(JJJ)V

    goto :goto_0
.end method

.method public sendPendingMessages(J)V
    .locals 9

    const/16 v3, 0x3d

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [sendPendingMessages] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPendingMessages | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid account ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, p1, p2, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-nez v0, :cond_2

    const-string v0, "Controller"

    const-string v1, "Outbox not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->sendPendingMessages(J)V

    goto :goto_0
.end method

.method public serviceCheckMail(JJJ)V
    .locals 9

    const-wide/16 v1, 0x0

    const/16 v6, 0x64

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheckMail | Airplane mode ON mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    move-wide v4, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    :goto_0
    return-void

    :cond_0
    cmp-long v0, p1, v1

    if-lez v0, :cond_1

    cmp-long v0, p3, v1

    if-gtz v0, :cond_2

    :cond_1
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheckMail | Invalid parameter accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    move-wide v4, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0

    :cond_2
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [serviceCheckMail] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [Tag - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-object v7, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/adapter/ProtocolAdapter;->serviceCheckMail(JJJLcom/android/email/Controller$Result;)V

    goto/16 :goto_0
.end method

.method public serviceLogging(I)V
    .locals 2

    new-instance v0, Lcom/android/email/Controller$1;

    const-string v1, "serviceLogging"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/email/Controller$1;-><init>(Lcom/android/email/Controller;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/email/Controller$1;->start()V

    return-void
.end method

.method public setMessageFavorite([JZJ)Landroid/os/AsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    const-string v2, "flagFavorite"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller;->setMessageBoolean([JLjava/lang/String;ZJ)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessageFollowUpFlag([JIJ)Landroid/os/AsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JIJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;III)V

    const-string v2, "flagStatus"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller;->setMessageInt([JLjava/lang/String;IJ)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessageRead([JZJ)Landroid/os/AsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->EAS_LOCAL_DB_OPERATION:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEasLocalChangeEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageReadLocal([JZJ)Landroid/os/AsyncTask;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "flagRead"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller;->setMessageBoolean([JLjava/lang/String;ZJ)Landroid/os/AsyncTask;

    move-result-object v0

    goto :goto_0
.end method

.method public setMessageRead(JZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "flagRead"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    :cond_1
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->setMessageRead(JZ)V

    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto :goto_0
.end method

.method public setMessageReadLocal([JZJ)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/email/Controller$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$13;-><init>(Lcom/android/email/Controller;[JZ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [setOutOfOffice] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [data - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid account ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutOfOffice | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V

    goto :goto_0
.end method

.method public setProviderContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    return-void
.end method

.method public setupPushForUnifiedAccount()V
    .locals 5

    const-string v0, "EVENT@CONTR"

    const-string v1, "setupPushForUnifiedAccount"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreUnifiedMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v2, "TAG_EVENT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupPushForUnifiedAccount | No unified account/mailbox -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/email/MessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)V

    goto :goto_0
.end method

.method public updateMailbox(JJZ)V
    .locals 8

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller:updateMailbox() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [updateMailbox] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailbox | Airplane mode ON accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    :goto_0
    return-void

    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    cmp-long v0, p3, v3

    if-gtz v0, :cond_2

    :cond_1
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailbox | Invalid parameter accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->updateMailbox(JJZ)V

    goto :goto_0
.end method

.method public updateMailboxList(J)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailboxList | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v3}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailboxList | Invalid parameter accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v3}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    :cond_2
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [updateMailboxList] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->updateMailboxList(J)V

    goto :goto_0
.end method

.method public updateUserProfile(ILcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateUserprofile][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[SncProfile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EVENT@CONTR"

    const-string v2, "updateUserProfile | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v1, v0}, Lcom/android/email/Controller$ServiceCallback;->updateUserProfileStatus(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/email/Controller$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$23;-><init>(Lcom/android/email/Controller;ILcom/android/email/syncnconnect/utils/SncProfile;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
