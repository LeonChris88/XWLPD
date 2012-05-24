.class Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;
.super Lcom/android/email/mail/store/SncImapStore$ImapFolder;
.source "SyncNConnStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/SyncNConnStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncNConnFolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;,
        Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    }
.end annotation


# instance fields
.field private mDeletedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mModSeq:Ljava/lang/String;

.field private mRemoteSync:Z

.field private mUidValidity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/SncImapStore;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;-><init>(Lcom/android/email/mail/store/SncImapStore;Ljava/lang/String;)V

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mModSeq:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mUidValidity:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mFetchResponses:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    const-string v0, "Z7App"

    const-string v1, "SyncNConnStore::SyncNConnFolder "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mRemoteSync:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mModSeq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mRemoteSync:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mFetchResponses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mFetchResponses:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mUidValidity:Ljava/lang/String;

    return-object v0
.end method

.method private getUIDValidity()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v0, v2

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreUnifiedMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    aget-object v2, v0, v4

    return-object v2
.end method


# virtual methods
.method public generateURLAuth(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v9, "SyncNConnStore"

    const-string v10, "Into generateURLAuth() Method"

    invoke-static {v9, v10}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "SyncNConnStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UID :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "SyncNConnStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Token :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->getUIDValidity()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imap://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/email/syncnconnect/utils/SncServerSettings;->IMAP_VIP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "UnifiedInbox"

    invoke-static {v10}, Lcom/android/email/mail/store/SncImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";UIDVALIDITY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/;UID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";urlauth=anonymous"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "SyncNConnStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IMAP URL :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "GENURLAUTH %s INTERNAL"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {v9, v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v9, 0x0

    const-string v10, "GENURLAUTH"

    invoke-virtual {v4, v9, v10}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "SyncNConnStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URL :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v9, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v9, v3}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->destroyResponses()V

    throw v9

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->destroyResponses()V

    return-object v8
.end method

.method public getCondStoreValues()[Ljava/lang/String;
    .locals 3

    const-string v0, "SyncNConnStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "condstore values : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mUidValidity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mModSeq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mUidValidity:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mModSeq:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getMailBoxSynchronizer()Lcom/android/email/mail/StoreSynchronizer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Z7App"

    const-string v1, "SyncNConnFolder::getMailBoxSynchronizer "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    invoke-direct {v0, p0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;-><init>(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)V

    return-object v0
.end method

.method public bridge synthetic getMailBoxSynchronizer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->getMailBoxSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesByInterval(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Missing search criteria"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Invalid search criteria"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "header X-VZW-MESSAGE-TYPE email header X-VZW-SOURCE-USER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (keyword vSent) not (keyword vDraft)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT DELETED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sentsince "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->eSearchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (keyword vDraft) not (keyword vSent)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-nez p2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not (keyword vSent) not (keyword vDraft)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    if-eq p2, v1, :cond_4

    if-eqz p5, :cond_8

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    move-object v0, p5

    goto :goto_0

    :cond_8
    const-string v1, "SyncNConnStore"

    const-string v2, "For user created folder, to sync, annotaiton is mandatory"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    goto :goto_1
.end method

.method public getQresyncedDeleteMessgeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getQresyncedFetchMessgeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mFetchResponses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v7, p1}, Lcom/android/emailcommon/mail/Folder$OpenMode;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v7

    if-eqz v7, :cond_2

    :try_start_1
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    iget-object v7, v7, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v8, 0xea60

    invoke-interface {v7, v8}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v8, "NOOP"

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->destroyResponses()V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v3

    :try_start_3
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v7, v3}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->destroyResponses()V

    :cond_0
    :goto_1
    monitor-enter p0
    :try_end_4
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/SncImapStore;->getConnection()Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v6, 0x0

    :try_start_6
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    const-string v8, "QRESYNC"

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/SncImapStore;->checkStoreCapability(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v8, "ENABLE QRESYNC"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/imap/ImapResponse;

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to enable the capability,Can\'t open mailbox: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v3

    :try_start_7
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v7, v3}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v7

    :try_start_8
    invoke-virtual {p0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->destroyResponses()V

    throw v7
    :try_end_8
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_2
    move-exception v0

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->close(Z)V

    throw v0

    :catchall_1
    move-exception v7

    :try_start_9
    invoke-virtual {p0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->destroyResponses()V

    throw v7
    :try_end_9
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v0

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mExists:Z

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->close(Z)V

    throw v0

    :cond_2
    const/4 v7, 0x0

    :try_start_a
    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->close(Z)V
    :try_end_a
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_1

    :catchall_2
    move-exception v7

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v7
    :try_end_c
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_3

    :cond_3
    :try_start_d
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT \"%s\""

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "QRESYNC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mUidValidity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mModSeq:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "))"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    :goto_2
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iget-object v7, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mFetchResponses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v4, -0x1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/imap/ImapResponse;

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponse;->isExist()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v4

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v8, "SELECT \"%s\""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/email/mail/store/SncImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0, v5}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->parseOkResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponse;->isVanished()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->parseVanishedResponse(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponse;->isFetch()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->parseFetchResponse(Lcom/android/email/mail/store/imap/ImapList;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t open mailbox: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_a
    const/4 v7, -0x1

    if-ne v4, v7, :cond_b

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Did not find message count during select"

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b
    iput v4, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMessageCount:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mExists:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    :try_start_e
    invoke-virtual {p0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->destroyResponses()V
    :try_end_e
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_0
.end method

.method parseFetchResponse(Lcom/android/email/mail/store/imap/ImapList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v8, 0x1

    const-string v6, "UID"

    invoke-virtual {p1, v6}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "FLAGS"

    invoke-virtual {p1, v6}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    new-instance v4, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-direct {v4, v5, p0}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_6

    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    const-string v6, "\\DELETED"

    invoke-virtual {v1, v6}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v4, v6, v8}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "\\ANSWERED"

    invoke-virtual {v1, v6}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v4, v6, v8}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_1

    :cond_2
    const-string v6, "\\SEEN"

    invoke-virtual {v1, v6}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v4, v6, v8}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_1

    :cond_3
    const-string v6, "\\FLAGGED"

    invoke-virtual {v1, v6}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v4, v6, v8}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_1

    :cond_4
    const-string v6, "vSent"

    invoke-virtual {v1, v6}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "SyncNConnStore"

    const-string v7, "vSent"

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->SENT:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v4, v6, v8}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_1

    :cond_5
    const-string v6, "vDraft"

    invoke-virtual {v1, v6}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SyncNConnStore"

    const-string v7, "vDraft"

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->DRAFT:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v4, v6, v8}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mFetchResponses:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mFetchResponses:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method parseOkResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    const-string v1, "READ-ONLY"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "READ-WRITE"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    goto :goto_0

    :cond_2
    const-string v1, "UIDVALIDITY"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v1

    const-string v2, "UIDVALIDITY"

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mUidValidity:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "HIGHESTMODSEQ"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v1

    const-string v2, "HIGHESTMODSEQ"

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mModSeq:Ljava/lang/String;

    goto :goto_0
.end method

.method parseVanishedResponse(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    invoke-static {v7, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    iget-object v7, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v0, v9

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v5, v6

    :goto_1
    if-gt v5, v2, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v7, "SyncNConnStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Vanished Messages size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mDeletedMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCondStoreValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mUidValidity:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mModSeq:Ljava/lang/String;

    return-void
.end method
