.class public Lcom/android/email/adapter/LegacyAdapter;
.super Lcom/android/email/adapter/ProtocolAdapter;
.source "LegacyAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/adapter/ProtocolAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUserAccount() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7

    const-string v0, "LegacyAdapter"

    const-string v1, "copyOneMessageToProvider() is called : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method public createFolder(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    .locals 6

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    sget-object v5, Lcom/android/email/adapter/LegacyAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    move-object v1, p2

    move-object v2, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingController;->createFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;JLcom/android/email/MessagingListener;)V

    return-void
.end method

.method public deleteAccountSync(JLandroid/content/Context;)V
    .locals 3

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAccountSync() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/MessagingController;->deleteUserAccount(J)V

    return-void
.end method

.method public deleteFolder(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    sget-object v1, Lcom/android/email/adapter/LegacyAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/email/MessagingController;->deleteFolder(JLjava/util/ArrayList;Lcom/android/email/MessagingListener;)V

    return-void
.end method

.method public deleteFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 0

    return-void
.end method

.method public deleteMessage(Ljava/util/HashSet;JJ)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)Z"
        }
    .end annotation

    sget-object v17, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    const/16 v18, 0x6

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v14

    const/4 v4, 0x0

    const-string v17, "LegacyAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "deleteMessage() is called : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v17, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v11

    iget v0, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    iget v0, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_2

    cmp-long v17, p4, v14

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/email/adapter/LegacyAdapter;->moveMessage(Ljava/util/HashSet;J)V

    const/16 v17, 0x1

    :goto_0
    return v17

    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-object v17, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v7, v8}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v17, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :try_start_0
    sget-object v17, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "com.android.email.provider"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-eqz v4, :cond_4

    const/16 v17, 0x1

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v17, "LegacyAdapter"

    const-string v18, "EVENT@CTRL [deleteMessage] [RemoteException]"

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v5

    const-string v17, "LegacyAdapter"

    const-string v18, "EVENT@CTRL [deleteMessage] [OperationApplicationException]"

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2

    :cond_4
    sget-object v17, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "EVENT@CONTR"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "deleteMessage | Airplane mode ON accId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_5
    move-wide/from16 v12, p2

    new-instance v17, Lcom/android/email/adapter/LegacyAdapter$5;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "tDelMsg_PPA_accId_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/android/email/adapter/LegacyAdapter$5;-><init>(Lcom/android/email/adapter/LegacyAdapter;Ljava/lang/String;J)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/email/adapter/LegacyAdapter$5;->start()V

    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public getAvailableAccounts()V
    .locals 2

    const-string v0, "LegacyAdapter"

    const-string v1, "getAvailableAccounts() is called : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getMailboxSyncState(J)I
    .locals 3

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMailboxSyncState() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/MessagingController;->getMailboxSyncState(J)I

    move-result v0

    return v0
.end method

.method public getUserConfiguredAccounts()V
    .locals 2

    const-string v0, "LegacyAdapter"

    const-string v1, "getUserConfiguredAccounts() is called : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getUserProfile()V
    .locals 2

    const-string v0, "LegacyAdapter"

    const-string v1, "getUserProfile() is called : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initProtocol()V
    .locals 2

    const-string v0, "LegacyAdapter"

    const-string v1, "initProtocol() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    sput-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    return-void
.end method

.method public isMailboxSyncable(J)Z
    .locals 3

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMailboxSyncable() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public loadAttachment(JJJI)V
    .locals 5

    const-string v2, "LegacyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAttachment() is called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

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

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    return-void
.end method

.method public loadAttachment(JJJJZ)V
    .locals 13

    const-string v2, "LegacyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAttachment() is called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    sget-object v11, Lcom/android/email/adapter/LegacyAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V

    return-void
.end method

.method public loadAttachment(JJJJZZZ)V
    .locals 15

    const-string v2, "LegacyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAttachment() is called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/email/adapter/LegacyAdapter$4;

    move-object v3, p0

    move-wide/from16 v4, p7

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p1

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v2 .. v14}, Lcom/android/email/adapter/LegacyAdapter$4;-><init>(Lcom/android/email/adapter/LegacyAdapter;JJJJZZZ)V

    invoke-virtual {v2}, Lcom/android/email/adapter/LegacyAdapter$4;->start()V

    return-void
.end method

.method public loadMessageForView(J)V
    .locals 3

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMessageForView() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/email/adapter/LegacyAdapter$6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tLoadMsgForView_msgId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/email/adapter/LegacyAdapter$6;-><init>(Lcom/android/email/adapter/LegacyAdapter;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/android/email/adapter/LegacyAdapter$6;->start()V

    return-void
.end method

.method public loadMore(J)V
    .locals 3

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMore() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/email/adapter/LegacyAdapter$7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tLoadMore_msgId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/email/adapter/LegacyAdapter$7;-><init>(Lcom/android/email/adapter/LegacyAdapter;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/android/email/adapter/LegacyAdapter$7;->start()V

    return-void
.end method

.method public loadMoreMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 4

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMoreMessages() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    sget-object v1, Lcom/android/email/adapter/LegacyAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V

    return-void
.end method

.method public moveConversationAlways(JJ[BI)V
    .locals 4

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveConversationAlways() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p5, v2, v3}, Lcom/android/email/Controller$Result;->moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V

    return-void
.end method

.method public moveMessage(J)V
    .locals 3

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveMessage() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    return-void
.end method

.method public moveMessageToSameAccount(Ljava/util/ArrayList;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    .locals 21
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

    const-string v2, "LegacyAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveMessageToSameAccount() is called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v19

    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_6

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mailboxKey"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    if-eqz v13, :cond_0

    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v17, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct/range {v17 .. v17}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    const/4 v2, 0x3

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingActions(J)V

    :cond_6
    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_4

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mailboxKey"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    if-eqz v13, :cond_7

    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    :cond_8
    if-nez v15, :cond_9

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OR _id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_a
    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide/from16 v0, p4

    invoke-static {v2, v0, v1, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    if-nez v14, :cond_b

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OR _id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_c
    if-eqz v15, :cond_d

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v10, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_d
    if-eqz v14, :cond_e

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingMoveActions(Ljava/util/HashMap;JJJ)V

    goto/16 :goto_1
.end method

.method public processPendingAccountMoveActions(Ljava/util/ArrayList;JJJJJII)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJJJJII)V"
        }
    .end annotation

    const-string v2, "LegacyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPendingAccountMoveActions() is called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-virtual/range {v2 .. v15}, Lcom/android/email/MessagingController;->processPendingAccountMoveActions(Ljava/util/ArrayList;JJJJJII)V

    return-void
.end method

.method public processPendingActions(J)V
    .locals 3

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPendingActions() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    return-void
.end method

.method public processPendingDeletesForeverSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;JLandroid/content/ContentResolver;JIIJJ)V
    .locals 15

    const-string v1, "LegacyAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPendingDeletesForeverSynchronous() is called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    invoke-virtual/range {v1 .. v14}, Lcom/android/email/MessagingController;->processPendingDeletesForeverSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;JLandroid/content/ContentResolver;JIIJJ)V

    return-void
.end method

.method public processPendingMoveActions(Ljava/util/HashMap;JJJ)V
    .locals 8
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

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPendingMoveActions() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingController;->processPendingMoveActions(Ljava/util/HashMap;JJJ)V

    return-void
.end method

.method public refreshIRMTemplates(J)V
    .locals 0

    return-void
.end method

.method public renameFolder(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 2

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    sget-object v1, Lcom/android/email/adapter/LegacyAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/email/MessagingController;->renameFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V

    return-void
.end method

.method public searchOnServerSync(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
    .locals 4

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchOnServerSync() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    sget-object v1, Lcom/android/email/adapter/LegacyAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/email/MessagingController;->searchOnServerSync(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V

    return-void
.end method

.method public sendMessage(JJJ)V
    .locals 7

    sget-object v3, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p5, p6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    sget-object v3, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    sget-object v5, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p5, p6, v4, v5}, Lcom/android/emailcommon/utility/Utility;->findOrCreateMailboxOfType(Landroid/content/Context;JILjava/lang/String;)J

    move-result-wide v1

    const-string v3, "LegacyAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessage() is called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/email/adapter/LegacyAdapter$8;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/email/adapter/LegacyAdapter$8;-><init>(Lcom/android/email/adapter/LegacyAdapter;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public sendPendingMessages(J)V
    .locals 7

    sget-object v3, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    sget-object v3, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    sget-object v5, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/emailcommon/utility/Utility;->findOrCreateMailboxOfType(Landroid/content/Context;JILjava/lang/String;)J

    move-result-wide v1

    const-string v3, "LegacyAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendPendingMessages() is called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/email/adapter/LegacyAdapter$9;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/email/adapter/LegacyAdapter$9;-><init>(Lcom/android/email/adapter/LegacyAdapter;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public serviceCheckMail(JJJLcom/android/email/Controller$Result;)V
    .locals 6

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheckMail() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/email/adapter/LegacyAdapter$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/email/adapter/LegacyAdapter$3;-><init>(Lcom/android/email/adapter/LegacyAdapter;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setMailboxSyncable(JJZ)V
    .locals 6

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    const-string v2, "LegacyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMailboxSyncable() is called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v2, "LegacyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set PUSH failed. Invalid Params: accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mbId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v2, p5, :cond_2

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v2, v0, v1}, Lcom/android/email/MessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v2, v0, v1}, Lcom/android/email/MessagingController;->stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_0
.end method

.method public setMessageBoolean([JLjava/lang/String;ZJ)V
    .locals 22

    const-string v19, "LegacyAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setMessageBoolean() is called : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    const/16 v20, 0x0

    aget-wide v20, p1, v20

    invoke-static/range {v19 .. v21}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v15

    if-nez v15, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-wide/16 v6, -0x1

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v10, p1

    array-length v14, v10

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_2

    aget-wide v16, v10, v13

    sget-object v19, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    sget-object v19, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v19, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v6

    const-wide/16 v19, -0x1

    cmp-long v19, v6, v19

    if-eqz v19, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v19, -0x1

    cmp-long v19, p4, v19

    if-nez v19, :cond_6

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v9

    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v9, v0, :cond_4

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v9, v0, :cond_3

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/email/adapter/LegacyAdapter;->processPendingActions(J)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    :cond_5
    :goto_3
    const-string v19, "flagRead"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    sget-object v19, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    sget-object v20, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-static/range {p4 .. p5}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v9

    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v9, v0, :cond_7

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v9, v0, :cond_5

    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/email/adapter/LegacyAdapter;->processPendingActions(J)V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public setMessageRead(JZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "LegacyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMessageRead() is called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "flagRead"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "messageid=?"

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "new"

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/email/adapter/LegacyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/email"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Lcom/android/email/adapter/LegacyAdapter$10;

    invoke-direct {v0, p0, v2}, Lcom/android/email/adapter/LegacyAdapter$10;-><init>(Lcom/android/email/adapter/LegacyAdapter;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v0}, Lcom/android/email/adapter/LegacyAdapter$10;->start()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public updateMailbox(JJZ)V
    .locals 6

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailbox() is called : "

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

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/email/adapter/LegacyAdapter$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/adapter/LegacyAdapter$1;-><init>(Lcom/android/email/adapter/LegacyAdapter;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateMailboxList(J)V
    .locals 3

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailboxList() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LegacyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailboxList called accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/email/adapter/LegacyAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/adapter/LegacyAdapter$2;-><init>(Lcom/android/email/adapter/LegacyAdapter;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateUserProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 2

    const-string v0, "LegacyAdapter"

    const-string v1, "updateUserProfile() is called : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
