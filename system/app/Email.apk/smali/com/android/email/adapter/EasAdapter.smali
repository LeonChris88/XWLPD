.class public Lcom/android/email/adapter/EasAdapter;
.super Lcom/android/email/adapter/ProtocolAdapter;
.source "EasAdapter.java"


# static fields
.field private static mAccountStateHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/adapter/EasAdapter;->mAccountStateHash:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/adapter/ProtocolAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public changeSmsSettings(J)V
    .locals 3

    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->changeSmsSettings(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public createFolder(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    .locals 7

    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailService;->folderCreate(JLjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v1, "EasAdapter"

    const-string v2, "EVENT@CONTR [createFolder] [RemoteException]"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteAccountPIMData(J)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->deleteAccountPIMData(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "[moveConversationAlways] Got RemoteException"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->updateFolderList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [deleteFolder] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteMessage(Ljava/util/HashSet;JJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v9, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    const/4 v10, 0x6

    invoke-static {v9, p2, p3, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v6

    sget-object v9, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    sget-object v9, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, p2, p3, v2, v3}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-wide v9, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v9, v9, v6

    if-eqz v9, :cond_0

    iget v9, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "mailboxKey"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    return v9
.end method

.method public emptyTrash(J)V
    .locals 5

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->emptyTrash(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT@CONTR [emptyTrash] [RemoteException]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAvailableAccounts()V
    .locals 0

    return-void
.end method

.method public getMailboxSyncState(J)I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/email/adapter/EasAdapter;->isMailboxSyncable(J)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    :cond_0
    return v1
.end method

.method public getOutOfOffice(J)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p1, p2, v2}, Lcom/android/emailcommon/service/IEmailService;->OoOffice(JLcom/android/emailcommon/service/OoODataList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [getOutOfOffice] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserConfiguredAccounts()V
    .locals 0

    return-void
.end method

.method public getUserProfile()V
    .locals 0

    return-void
.end method

.method public hostChanged(J)V
    .locals 4

    :try_start_0
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->hostChanged(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "setServiceCallback"

    const-string v3, "RemoteException Occured "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public initProtocol()V
    .locals 0

    return-void
.end method

.method public isMailboxSyncable(J)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public loadAttachment(JJJI)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "flags"

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v3, v3, 0x2

    or-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    return-void
.end method

.method public loadAttachment(JJJJZZZ)V
    .locals 10

    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v1, "EasAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAttachment failed since no service, for msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    move/from16 v0, p11

    invoke-interface {v9, p1, p2, v0}, Lcom/android/emailcommon/service/IEmailService;->loadAttachment(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v1, "EasAdapter"

    const-string v2, "EVENT@CTRL [loadAttachment] [RemoteException]"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const-wide/16 v2, -0x1

    const/16 v6, 0x15

    const/4 v7, 0x0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$ServiceCallback;->loadAttachmentStatus(JJII)V

    goto :goto_0
.end method

.method public loadMessageForView(J)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v3, v4}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/16 v4, 0x3f

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "flagLoaded"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "EasAdapter"

    const-string v4, "Unexpected loadMessageForView() for service-based message."

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/16 v4, 0x18

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V

    goto :goto_0
.end method

.method public loadMore(J)V
    .locals 5

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->loadMore(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CTRL [loadMore] [OperationApplicationException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadMoreCancel()V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/emailcommon/service/IEmailService;->loadMoreCancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CTRL [loadMore] [OperationApplicationException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public moveConversationAlways(JJ[BI)V
    .locals 8

    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailService;->moveConversationAlways(JJ[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string v1, "EasAdapter"

    const-string v2, "[moveConversationAlways] Got RemoteException"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public moveFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->updateFolderList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [moveFolder] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public moveMessageToSameAccount(Ljava/util/ArrayList;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[J",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "JJJZ)V"
        }
    .end annotation

    const-string v10, "EasAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "moveMessageToSameAccount() is called : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p8

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isDelete= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p10

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    if-eqz p10, :cond_0

    move-object v2, p2

    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-wide v6, v2, v4

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "mailboxKey"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v2, p2

    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-wide v6, v2, v4

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v3, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v10, v11}, Lcom/android/email/adapter/EasAdapter;->processPendingActions(J)V

    :cond_2
    return-void
.end method

.method public refreshIRMTemplates(J)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->refreshIRMTemplates(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "IRM"

    const-string v3, "RefreshIRMTemplatesRemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public renameFolder(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->updateFolderList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [renameFolder] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchOnServer(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v7, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Lcom/android/emailcommon/service/IEmailService;->searchMessage(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v12

    const-string v1, "serchOnServer"

    const-string v2, "RemoteException : "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v12

    const-string v1, "serchOnServer"

    const-string v2, "UnsupportedEncodingException : "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendMeetingEditedResponse(JJI)V
    .locals 7

    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailService;->sendMeetingEditedResponse(JJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v1, "EasAdapter"

    const-string v2, "EVENT@CONTR [sendMeetingEditedResponse] [RemoteException]"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMeetingResponse(JI)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/emailcommon/service/IEmailService;->sendMeetingResponse(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [sendMeetingResponse] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(JJJ)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "EasAdapter"

    const-string v3, "sendMessage null service"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p1, p2, v2}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [sendMessage] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendPendingMessages(J)V
    .locals 6

    sget-object v4, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static {v4, p1, p2, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    sget-object v4, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v4, v5}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3, v1, v2, v4}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "EasAdapter"

    const-string v5, "EVENT@CONTR [sendPendingMessages] [RemoteException]"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendRecoveryPassword()V
    .locals 15

    const-string v12, "EasAdapter"

    const-string v13, "EVENT@CTRL [sendRecoveryPassword] [pwd]"

    invoke-static {v12, v13}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v12, v13}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v12, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v12

    const-string v13, "com.android.exchange"

    invoke-virtual {v12, v13}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    move-object v3, v5

    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, v3, v6

    const-string v12, "EasAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "account.name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "emailAddress=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-string v12, "EasAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "accountId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, 0x0

    cmp-long v12, v1, v12

    if-lez v12, :cond_2

    sget-object v12, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v12

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-boolean v12, v10, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    if-eqz v12, :cond_2

    :try_start_0
    invoke-interface {v11, v1, v2, v9}, Lcom/android/emailcommon/service/IEmailService;->sendRecoveryPassword(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public serviceCheckMail(JJJLcom/android/email/Controller$Result;)V
    .locals 10

    sget-object v0, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v0, v1}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v0, "EasAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheckMail failed since no service, for accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Controller"

    const-string v1, "SyncManager does auto refresh for exchange accounts. Mark MailService sync complete. Nothing done here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v0, -0x1

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v6, 0x64

    move-object/from16 v0, p7

    move-wide v2, p1

    move-wide v4, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0
.end method

.method public serviceLogging(I)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/emailcommon/service/IEmailService;->setLogging(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CTRL [serviceLogging] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMailboxSyncable(JJZ)V
    .locals 3

    const-string v0, "EasAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMailboxSyncable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/emailcommon/service/IEmailService;->OoOffice(JLcom/android/emailcommon/service/OoODataList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [setOutOfOffice] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateMailbox(JJZ)V
    .locals 6

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "EasAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMailbox | Invalid account Id - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/16 v4, 0x3d

    const/4 v5, -0x1

    invoke-virtual {v3, p3, p4, v4, v5}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v3, v4}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v2

    :try_start_0
    invoke-interface {v2, p3, p4, p5}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "EasAdapter"

    const-string v4, "EVENT@CTRL [updateMailbox] [RemoteException]"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateMailboxList(J)V
    .locals 4

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->updateFolderList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CTRL [updateMailboxList] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateUserProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 0

    return-void
.end method
