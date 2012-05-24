.class Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;
.super Ljava/lang/Object;
.source "SyncNConnStore.java"

# interfaces
.implements Lcom/android/email/mail/StoreSynchronizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailBoxSynchronizer"
.end annotation


# instance fields
.field private mNewMessageCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOpsAttachememnt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mOpsBody:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mOpsEnvelope:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateAccountList:Z

.field private mlocalMessageCopy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mlocalMessageCopy:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsEnvelope:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsBody:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsAttachememnt:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mUpdateAccountList:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mUpdateAccountList:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mlocalMessageCopy:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;Lcom/android/emailcommon/mail/Message;JJIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;JJIIZZ)V

    return-void
.end method

.method private copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;JJIIZZ)V
    .locals 10

    const-string v1, "SyncNConnStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entered copyOneMessageToProvider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SyncNConnStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteSync is not enabled: remoteSync - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v3}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v3, v1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v1

    :goto_1
    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v2, :cond_3

    const-string v1, "SyncNConnStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve message from db, UUID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SyncNConnStore"

    const-string v3, "copyOneMessageToProvider | Error while copying downloaded message."

    invoke-static {v2, v1, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v7

    :goto_2
    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v1

    const-string v2, "SyncNConnStore"

    const-string v3, "copyOneMessageToProvider | Error while copying attachment."

    invoke-static {v2, v1, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v1

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v9, v1

    :goto_3
    :try_start_5
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-static/range {v1 .. v8}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1, v3}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9, v2, v1}, Lcom/android/email/LegacyConversions;->updateBodyFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    const-string v1, "SyncNConnStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message isSaved : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " body isSaved : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " message loaded flag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p9, :cond_4

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V

    invoke-direct {p0, v9}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V

    :goto_4
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3, v1}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    move/from16 v0, p7

    iput v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "flagAttachment"

    iget-boolean v4, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "flagLoaded"

    iget v4, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    if-nez p9, :cond_7

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_6
    const-string v2, "SyncNConnStore"

    const-string v3, "copyOneMessageToProvider | Error while copying downloaded message"

    invoke-static {v2, v1, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :cond_4
    :try_start_7
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsBody:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_5
    iget-object v1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsBody:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    goto/16 :goto_4

    :cond_7
    iget-object v3, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsAttachememnt:Ljava/util/ArrayList;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v3

    goto/16 :goto_2

    :cond_8
    move-object v9, v1

    goto/16 :goto_3

    :cond_9
    move-object v2, v8

    goto/16 :goto_1
.end method

.method private downloadMessageHeaders(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Ljava/util/HashMap;ILjava/util/ArrayList;I)Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/MessagingController$LocalMessageInfo;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v12, 0x6

    if-eq v11, v12, :cond_0

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v12, 0x103

    if-ne v11, v12, :cond_3

    :cond_0
    const/4 v5, 0x1

    :goto_0
    const-string v11, "SyncNConnStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remoteMsgArrayList - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " localMessageMap size - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " remoteMessageCount - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " unsyncedMessages size - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " maxMessageToDownload - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz p3, :cond_1

    const/4 v10, 0x0

    const/4 v1, 0x0

    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    aget-object v11, v2, v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    aget-object v11, v2, v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    const-string v11, "SyncNConnStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "downloadMessageHeaders | start/end - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v10

    :goto_2
    if-lt v4, v1, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/MessagingController$LocalMessageInfo;

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v11

    int-to-long v12, v4

    invoke-static {v11, v12, v13, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreUnifiedMessageWithUid(Landroid/content/Context;JZ)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-wide v11, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_5

    const-string v11, "SyncNConnStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fail. mailboxkey differs and so could not download this. m.mMailboxKey "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p4, p4, -0x1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v10, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v9, v9, 0x1

    :cond_6
    if-eqz v6, :cond_7

    iget v11, v6, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-eqz v11, :cond_7

    iget v11, v6, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_2

    :cond_7
    new-instance v11, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-direct {v11, v12, v13}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v0, p6

    if-le v11, v0, :cond_2

    :cond_8
    new-instance v11, Landroid/util/Pair;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method private downloadMessagesBasedOnSizes(Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/Folder;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v0, "SyncNConnStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download large messages - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->downloadLargeMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    return-void
.end method

.method private getLocalMessageCount(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)I
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

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

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private getLocalMessageMap(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/MessagingController$LocalMessageInfo;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND mailboxKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    iget-wide v10, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v6, Lcom/android/email/MessagingController$LocalMessageInfo;

    invoke-direct {v6, v9}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    iget-object v0, v6, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v8

    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v8

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public SynchronizeMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v3, "SyncNConnStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MailBoxSynchronizer::SynchronizeMailBox Starts for folder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v5}, Lcom/android/email/esp/ServiceProvider;->getProviderFromType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    new-instance v18, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$102(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;Z)Z

    const-string v3, "SyncNConnStore"

    const-string v4, "Open the remote folder and create the remote folder if necessary"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const-string v3, "SyncNConnStore"

    const-string v4, "DRAFTS/OUTBOX Cannot be Synced"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    move-object/from16 v3, v18

    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v5, 0x103

    if-ne v4, v5, :cond_6

    :cond_1
    const/4 v4, 0x1

    move/from16 v17, v4

    :goto_1
    invoke-direct/range {p0 .. p2}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->getLocalMessageMap(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/util/HashMap;

    move-result-object v9

    const-string v4, "SyncNConnStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initialized local message map of the uids "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v4}, Lcom/android/email/adapter/SncAdapter;->parseSyncLookback(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/email/mail/store/SyncNConnStore;->convertSyncIntervalToDate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "annotation"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " /vendor/vzw/tag/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " value.priv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "SyncNConnStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Annotation - "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/emailcommon/mail/Folder;->getMessagesByInterval(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    const/4 v4, 0x1

    aget-object v4, v22, v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    const-string v4, "SyncNConnStore"

    const-string v5, "No Messages to Synchronize"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v6}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$900(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v6}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1000(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v4, v0, v5, v6}, Lcom/android/email/mail/store/SyncNConnStore;->setCondstoreStatus(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Z)V

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v4, "SyncNConnStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting the old messages - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->cleanLocalStore(Ljava/util/ArrayList;Z)V

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_5
    const-string v3, "SyncNConnStore"

    const-string v4, "Failed to initialize SNC Remote Folder"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x1

    aget-object v4, v22, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v23, v22, v5

    const/4 v5, 0x0

    aget-object v5, v22, v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v24, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const-string v5, "SyncNConnStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reverse Search List "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SyncNConnStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create a list of remote messages to download  - remoteMsgCount - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v4

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v9, :cond_d

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v25, v4

    move v4, v6

    move/from16 v6, v25

    :goto_3
    const-string v7, "SyncNConnStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SynchronizeMailBox | start/end - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v4

    :goto_4
    if-lt v7, v6, :cond_d

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    if-nez v4, :cond_9

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v10

    int-to-long v14, v7

    move/from16 v0, v17

    invoke-static {v10, v14, v15, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreUnifiedMessageWithUid(Landroid/content/Context;JZ)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v10

    if-eqz v10, :cond_9

    add-int/lit8 v4, v5, -0x1

    :goto_5
    add-int/lit8 v5, v7, -0x1

    move v7, v5

    move v5, v4

    goto :goto_4

    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v6, v4

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_a

    iget v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-eqz v10, :cond_a

    iget v4, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    const/4 v10, 0x4

    if-ne v4, v10, :cond_b

    :cond_a
    new-instance v4, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-direct {v4, v10, v11}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v10, 0x19

    if-lt v4, v10, :cond_c

    move v10, v5

    :goto_6
    const-string v4, "SyncNConnStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download basic info about the new/unloaded messages - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " remoteMsgCount - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v4, p0

    move-object v5, v3

    move-object v6, v13

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->downloadUnSyncedMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashMap;)V

    const/16 v4, 0x19

    move v5, v10

    move v6, v12

    move v10, v4

    move v4, v11

    :goto_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x19

    if-ge v7, v8, :cond_e

    if-ge v10, v5, :cond_e

    add-int/lit8 v10, v10, 0x19

    const-string v4, "SyncNConnStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail. Not able to download atleast ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] messages of this mailbox type: max - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    invoke-direct/range {p0 .. p2}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->getLocalMessageMap(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/util/HashMap;

    move-result-object v7

    const-string v4, "SyncNConnStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initialized local message map of the uids "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v22, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, v24

    move-object v9, v13

    invoke-direct/range {v4 .. v10}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->downloadMessageHeaders(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Ljava/util/HashMap;ILjava/util/ArrayList;I)Landroid/util/Pair;

    move-result-object v6

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "SyncNConnStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download basic info about the new/unloaded messages - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " remoteMsgCount - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newMessageCount - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v11, p0

    move-object v12, v3

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, v7

    invoke-virtual/range {v11 .. v16}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->downloadUnSyncedMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashMap;)V

    move-object v9, v7

    goto/16 :goto_7

    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v10, 0x64

    if-ge v4, v10, :cond_c

    new-instance v4, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-direct {v4, v10, v11}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    move v4, v5

    goto/16 :goto_5

    :cond_d
    move v4, v5

    move v5, v4

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v4, v7, :cond_f

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v4, v7

    sub-int/2addr v6, v4

    :cond_f
    const-string v4, "SyncNConnStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Divide the unsynced messages into small & large (by size) - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " remoteMsgCount - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newMessageCount - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v3, v1, v2, v13}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->downloadMessagesBasedOnSizes(Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    const-string v4, "SyncNConnStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Refresh the flags for the first ~100 messages in the local BaseSncStore that is already download - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->updateLocalStore(Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Z)V

    :cond_10
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v8}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$900(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v8}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1000(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v4, v0, v7, v8}, Lcom/android/email/mail/store/SyncNConnStore;->setCondstoreStatus(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->expandESearchResponse(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "SyncNConnStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleting the old messages - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->cleanLocalStore(Ljava/util/ArrayList;Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v18

    iput v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    move-object/from16 v0, v18

    iput v5, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-direct/range {p0 .. p2}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->getLocalMessageCount(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)I

    move-result v5

    move-object/from16 v0, v18

    iput v5, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const-string v5, "SyncNConnStore"

    const-string v7, "Send new message count for the Inbox"

    invoke-static {v5, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->sendMessageCountNotification(Ljava/util/HashMap;)V

    const-string v5, "SyncNConnStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " SNCStoreSynchronizer::SynchronizeMailBox processSucess New Messages - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " End: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Diff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v3, v3, v20

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_12
    move v10, v5

    goto/16 :goto_6
.end method

.method public SynchronizeMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v2, "SyncNConnStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentProviderOperation size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_1

    const-string v2, "SyncNConnStore"

    const-string v3, "applyBatch for the message to DB "

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.email.provider"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SyncNConnStore"

    const-string v3, "RemoteException while doing applyBatch operation"

    invoke-static {v2, v0, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SyncNConnStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyBatch for the messages to DB of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.email.provider"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SyncNConnStore"

    const-string v3, "OperationApplicationException while doing applyBatch operation"

    invoke-static {v2, v0, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method cleanLocalStore(Ljava/util/ArrayList;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "LocalAccountMoved-"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "SyncNConnStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Account Moved Message - uidToDelete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SyncNConnStore"

    const-string v2, "Exception happeing in SynchronizeMessagesSynchronous!!"

    invoke-static {v1, v0, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreUnifiedMessageWithUid(Landroid/content/Context;JZ)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v8, "SyncNConnStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting localStore message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    invoke-virtual {p0, v4, v0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "SyncNConnStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " SynchronizeMessagesSynchronous deleteStart Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " End: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Diff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v0, v5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method cleanLocalStore(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1200(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->cleanLocalStore(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method downloadLargeMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v5, "SyncNConnStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "$$ downloadLargeMessages "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v19 .. v19}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v0, p3

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p4

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p4

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsBody:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsAttachememnt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsEnvelope:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsBody:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsAttachememnt:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/emailcommon/mail/Message;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1, v13}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/mail/Message;

    const/16 v5, 0x9

    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v13}, Lcom/android/email/esp/ServiceProvider;->getProviderFromType(I)I

    move-result v13

    if-ne v5, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mlocalMessageCopy:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;

    if-eqz v15, :cond_1

    const-string v5, "SyncNConnStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Overriding large message data"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$600(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v7

    invoke-static {v15}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$700(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v9

    invoke-static {v15}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$500(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)I

    move-result v11

    const-string v5, "SyncNConnStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Overriding fldr ID for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v27

    if-eqz v27, :cond_0

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    int-to-byte v5, v5

    invoke-static {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize(B)I

    move-result v18

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    if-nez v5, :cond_3

    const-string v25, "text/html"

    :goto_2
    const-string v5, "SyncNConnStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Size/Format of the email to be fetched: fetchSize - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/ Format - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " acc.mEmailSize - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    const/4 v12, 0x2

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v5

    move/from16 v0, v18

    if-ge v5, v0, :cond_4

    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    :goto_3
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/emailcommon/mail/Message;

    const/4 v13, 0x0

    aput-object v6, v5, v13

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1, v13}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v14}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;JJIIZZ)V

    :goto_4
    const/4 v5, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/emailcommon/mail/Flag;->SENT:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v6, v5}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/emailcommon/mail/Flag;->DRAFT:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v6, v5}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mlocalMessageCopy:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;

    if-eqz v15, :cond_1

    const-string v5, "SyncNConnStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Overriding large message data"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$600(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v7

    invoke-static {v15}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$700(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v9

    invoke-static {v15}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$500(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)I

    move-result v11

    goto/16 :goto_1

    :cond_3
    const-string v25, "text/plain"

    goto/16 :goto_2

    :cond_4
    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_5
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-static {v6, v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v12, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getPart(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;

    move-result-object v29

    if-nez v29, :cond_6

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    if-eqz v5, :cond_9

    const-string v16, "text/html"

    :goto_5
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getPart(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;

    move-result-object v29

    if-nez v29, :cond_6

    const-string v5, "SyncNConnStore"

    const/4 v13, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v13, v14}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_6
    if-eqz v29, :cond_8

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v29 .. v29}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    const-string v5, "SyncNConnStore"

    const-string v13, "Added sane flag for this part"

    invoke-static {v5, v13}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setSize(I)V

    const/4 v12, 0x2

    :cond_7
    const-string v5, "SyncNConnStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ctype - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {v29 .. v29}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " cdisp - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {v29 .. v29}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mType - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {v29 .. v29}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/emailcommon/mail/Message;

    const/4 v13, 0x0

    aput-object v6, v5, v13

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1, v13}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setSize(I)V

    :cond_8
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v14}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;JJIIZZ)V

    goto/16 :goto_4

    :cond_9
    const-string v16, "text/plain"

    goto/16 :goto_5

    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->downloadSmallMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-string v5, "SyncNConnStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " LargeMessagebodyStart Time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " End: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Diff: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v32, v21, v23

    move-wide/from16 v0, v32

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method downloadQSyncUnSyncedMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v1, "SyncNConnStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$ downloadQSyncUnSyncedMessages "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p4

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v2, 0x103

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v12, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v12}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v12, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v12, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->ANNOTATION:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v12, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Lcom/android/emailcommon/mail/Message;

    new-instance v1, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;

    move-object v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;-><init>(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;ZLcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v13, v12, v1}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v1, "SyncNConnStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " fetchStart Time: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " End: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Diff: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v8, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method downloadSmallMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v6, "SyncNConnStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "$$ downloadSmallMessages "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v6}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsAttachememnt:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsBody:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsBody:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mOpsAttachememnt:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/emailcommon/mail/Message;

    new-instance v7, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;

    invoke-direct {v7, p0, p3, p4, v5}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;-><init>(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v6, v4, v7}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v6, "SyncNConnStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " SmallMessagebodyStart Time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " End: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Diff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method downloadUnSyncedMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashMap;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/MessagingController$LocalMessageInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v1, "SyncNConnStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$ downloadUnSyncedMessages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v13, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v13}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v13, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v13, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->ANNOTATION:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v13, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Lcom/android/emailcommon/mail/Message;

    new-instance v1, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;

    move-object v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;-><init>(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13, v1}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v1, "SyncNConnStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SynchronizeMessagesSynchronous fetchStart Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " End: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Diff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v9, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public expandESearchResponse(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_1
    if-lt v0, v3, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "SyncNConnStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expanded eSearch response - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public qresyncMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v3, "SyncNConnStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MailBoxSynchronizer::qresyncMailBox Starts for folder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " store "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$102(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;Z)Z

    const-string v3, "SyncNConnStore"

    const-string v4, " Open the remote folder and create the remote folder if necessary"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "SyncNConnStore"

    const-string v4, "Failed to get SNC Remote Folder"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    iget v5, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_1

    iget v5, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v6, 0x103

    if-ne v5, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    move v12, v5

    :goto_1
    if-eqz v12, :cond_3

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreUnifiedTrashMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_4

    const-string v3, "SyncNConnStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Race condn. No unifiedMailbox of type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    move v12, v5

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreUnifiedMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v5

    goto :goto_2

    :cond_4
    iget-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v4, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_5
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v3, v6, v4}, Lcom/android/emailcommon/mail/Folder;->updateCondStoreValues(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    const/16 v16, 0x0

    invoke-static {v5}, Lcom/android/email/EmailUtility;->isAccountAddedRecently(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    iget-object v4, v4, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    const-string v5, "QRESYNC"

    invoke-virtual {v4, v5}, Lcom/android/email/mail/store/SncImapStore;->checkStoreCapability(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v5

    const-string v4, "SyncNConnStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Create a list of messages to download - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "SyncNConnStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QresyncedFetchMessageList - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v10}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getQresyncedFetchMessgeList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1102(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string v4, "SyncNConnStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QresyncedFetchMessageList - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v10}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v4}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v4}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SyncNConnStore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Fetch response message ID: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-static {v11, v0, v1, v12}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreUnifiedMessageWithUid(Landroid/content/Context;JZ)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    if-eqz v11, :cond_6

    iget v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v17, v0

    if-eqz v17, :cond_6

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v11, v0, :cond_7

    :cond_6
    const-string v11, "SyncNConnStore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "New message uid "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v4}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object v4, v6

    move-object v6, v7

    :goto_4
    const-string v7, "SyncNConnStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Download basic info about the new/unloaded messages (if any) "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " updatedMsg - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mUpdateAccountList:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v13, v9}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->downloadQSyncUnSyncedMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    const-string v7, "SyncNConnStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Refresh the flags for any messages in the local BaseSncStore that we didn\'t just download - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v7}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3, v4, v12}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->updateLocalStore(Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Z)V

    :cond_9
    const-string v4, "SyncNConnStore"

    const-string v7, " Remove any messages that are in the local BaseSncStore but no longer on the remote store."

    invoke-static {v4, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getQresyncedDeleteMessgeList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1202(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string v4, "SyncNConnStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted messages - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v8}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1200(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->cleanLocalStore(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v4}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1200(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_a
    const-string v4, "SyncNConnStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Divide the unsynced messages into small & large (by size) - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v9, v6}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->downloadMessagesBasedOnSizes(Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getCondStoreValues()[Ljava/lang/String;

    move-result-object v4

    const-string v6, "SyncNConnStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** condstore values : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v8}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$900(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v8}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1000(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v6, v9, v4, v7}, Lcom/android/email/mail/store/SyncNConnStore;->setCondstoreStatus(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->sendMessageCountNotification(Ljava/util/HashMap;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v6, "SyncNConnStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " SNCStoreSynchronizer::qresyncMailBox processSucess Time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " End: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Diff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v3, v14

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mUpdateAccountList:Z

    move/from16 v0, v16

    invoke-direct {v3, v5, v4, v0, v6}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(IIZZ)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "SyncNConnStore"

    const-string v5, "Since the server does not support QRESYNC, the normal SYNC is called for the particular account"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->getLocalMessageMap(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/util/HashMap;

    move-result-object v17

    const-string v4, "SyncNConnStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initialized local message map of the uids "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v4}, Lcom/android/email/adapter/SncAdapter;->parseSyncLookback(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/email/mail/store/SyncNConnStore;->convertSyncIntervalToDate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    iget v5, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    iget-object v6, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/emailcommon/mail/Folder;->getMessagesByInterval(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    array-length v4, v5

    const/4 v6, 0x2

    if-lt v4, v6, :cond_c

    const/4 v4, 0x1

    aget-object v4, v5, v4

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    const-string v4, "SyncNConnStore"

    const-string v5, "No Messages to Synchronize"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getCondStoreValues()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "SyncNConnStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "** condstore values : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v7}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$900(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v7}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$1000(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v5, v9, v4, v6}, Lcom/android/email/mail/store/SyncNConnStore;->setCondstoreStatus(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x1

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const-string v5, "SyncNConnStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reverse Search List "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SyncNConnStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create a list of remote messages to download  - remoteMsgCount - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " folder\'s visibleLimit - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v4

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x64

    if-lt v6, v7, :cond_e

    const-string v4, "SyncNConnStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qresyncMailBox2 | Break. Reached the visiblelimit - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unsyncedMsg - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " updatedMsg - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v10

    move-object v6, v11

    goto/16 :goto_4

    :cond_e
    if-eqz v17, :cond_14

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    move v4, v6

    move/from16 v6, v21

    :goto_6
    const-string v7, "SyncNConnStore"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "qresyncMailBox | start/end - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v4

    :goto_7
    if-lt v7, v6, :cond_14

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int v4, v4, v18

    const/16 v18, 0x64

    move/from16 v0, v18

    if-lt v4, v0, :cond_10

    const-string v4, "SyncNConnStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qresyncMailBox3 | Reached the visiblelimit - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unsyncedMsg - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " updatedMsg - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    :goto_8
    move v5, v4

    goto/16 :goto_5

    :cond_f
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v6, v4

    goto :goto_6

    :cond_10
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    if-nez v4, :cond_11

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v18

    int-to-long v0, v7

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2, v12}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreUnifiedMessageWithUid(Landroid/content/Context;JZ)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v18

    if-eqz v18, :cond_11

    add-int/lit8 v4, v5, -0x1

    :goto_9
    add-int/lit8 v5, v7, -0x1

    move v7, v5

    move v5, v4

    goto :goto_7

    :cond_11
    if-eqz v4, :cond_12

    iget v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    move/from16 v18, v0

    if-eqz v18, :cond_12

    iget v4, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v4, v0, :cond_13

    :cond_12
    new-instance v4, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_9

    :cond_13
    new-instance v4, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_9

    :cond_14
    move v4, v5

    goto :goto_8

    :cond_15
    move-object v4, v10

    move-object v6, v11

    goto/16 :goto_4
.end method

.method sendMessageCountNotification(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "SyncNConnStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update local account and send new message count notification for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    iget v1, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    const-string v2, "SyncNConnStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "newMessageCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/android/email/service/MailService;->actionNotifyNewMessages(Landroid/content/Context;J)V

    goto/16 :goto_0

    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method updateLocalStore(Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/FetchProfile;",
            "Lcom/android/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Message;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    sget-object v0, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v6, v0, :cond_b

    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v6, v1, :cond_a

    const/4 v1, 0x1

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_1

    if-eqz v2, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    invoke-static {v0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SyncNConnStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Start updating the local Store for Id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v8, v9, p4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreUnifiedMessageWithUid(Landroid/content/Context;JZ)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v0, "SyncNConnStore"

    const-string v3, "Incorrect entry leave it"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-boolean v3, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v9

    if-eqz v1, :cond_5

    if-eq v9, v3, :cond_5

    const/4 v3, 0x1

    :goto_4
    iget-boolean v4, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    const/4 v10, 0x1

    if-ne v4, v10, :cond_6

    const/4 v4, 0x1

    :goto_5
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v10

    if-eqz v2, :cond_7

    if-eq v4, v10, :cond_7

    const/4 v0, 0x1

    :goto_6
    if-nez v3, :cond_4

    if-eqz v0, :cond_2

    :cond_4
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "flagRead"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "flagFavorite"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V

    :cond_9
    return-void

    :cond_a
    move v1, v2

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_1
.end method
