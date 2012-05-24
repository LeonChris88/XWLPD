.class public Lcom/android/email/mail/store/LocalStore$LocalFolder;
.super Lcom/android/emailcommon/mail/Folder;
.source "LocalStore.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalFolder"
.end annotation


# instance fields
.field private final POPULATE_MESSAGE_SELECT_COLUMNS:Ljava/lang/String;

.field private mFolderId:J

.field private final mName:Ljava/lang/String;

.field private mUnreadMessageCount:I

.field private mVisibleLimit:I

.field final synthetic this$0:Lcom/android/email/mail/store/LocalStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    iput v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    iput v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    const-string v0, "subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers"

    iput-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->POPULATE_MESSAGE_SELECT_COLUMNS:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    return-void
.end method

.method private buildFlagPredicates(Ljava/lang/StringBuilder;[Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    if-eqz p2, :cond_5

    move-object v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_0

    const-string v4, "store_flag_1 = 1 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_1

    const-string v4, "store_flag_2 = 1 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_2

    const-string v4, "flag_downloaded_full = 1 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_3

    const-string v4, "flag_downloaded_partial = 1 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_4

    const-string v4, "flag_deleted = 1 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported flag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    if-eqz p3, :cond_b

    move-object v0, p3

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_b

    aget-object v1, v0, v2

    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_6

    const-string v4, "store_flag_1 = 0 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_7

    const-string v4, "store_flag_2 = 0 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_8

    const-string v4, "flag_downloaded_full = 0 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_9

    const-string v4, "flag_downloaded_partial = 0 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_a

    const-string v4, "flag_deleted = 0 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported flag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    return-void
.end method

.method private deleteAttachments(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v8, 0x0

    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const-string v3, "folder_id = ? AND uid = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v9

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "attachments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const-string v3, "message_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-wide v2

    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v4}, Lcom/android/email/mail/store/LocalStore;->access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_0

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v9

    :goto_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_4

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method private open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    return-void
.end method

.method private populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, ""

    :goto_0
    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setSubject(Ljava/lang/String;)V

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    array-length v7, v4

    if-lez v7, :cond_0

    aget-object v7, v4, v9

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFrom(Lcom/android/emailcommon/mail/Address;)V

    :cond_0
    new-instance v7, Ljava/util/Date;

    const/4 v10, 0x2

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setSentDate(Ljava/util/Date;)V

    const/4 v7, 0x3

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setUid(Ljava/lang/String;)V

    const/4 v7, 0x4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :try_start_0
    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/android/emailcommon/mail/Flag;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {p1, v7, v10}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v7

    :cond_2
    const/4 v7, 0x5

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$302(Lcom/android/email/mail/store/LocalStore$LocalMessage;J)J

    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    const/4 v10, 0x6

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {p1, v7, v10}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    const/4 v10, 0x7

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {p1, v7, v10}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    const/16 v10, 0x8

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {p1, v7, v10}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    const/16 v7, 0x9

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setReplyTo([Lcom/android/emailcommon/mail/Address;)V

    const/16 v7, 0xa

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$502(Lcom/android/email/mail/store/LocalStore$LocalMessage;I)I

    new-instance v7, Ljava/util/Date;

    const/16 v10, 0xb

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setInternalDate(Ljava/util/Date;)V

    const/16 v7, 0xc

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setMessageId(Ljava/lang/String;)V

    sget-object v10, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    const/16 v7, 0xd

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_2
    invoke-virtual {p1, v10, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    sget-object v10, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    const/16 v7, 0xe

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_3
    invoke-virtual {p1, v10, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    sget-object v10, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    const/16 v7, 0xf

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    :goto_4
    invoke-virtual {p1, v10, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    sget-object v10, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    const/16 v7, 0x10

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    :goto_5
    invoke-virtual {p1, v10, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    sget-object v7, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/16 v10, 0x11

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_7

    :goto_6
    invoke-virtual {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    const/16 v7, 0x12

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setExtendedHeaders(Ljava/lang/String;)V

    return-void

    :cond_3
    move v7, v9

    goto :goto_2

    :cond_4
    move v7, v9

    goto :goto_3

    :cond_5
    move v7, v9

    goto :goto_4

    :cond_6
    move v7, v9

    goto :goto_5

    :cond_7
    move v8, v9

    goto :goto_6
.end method

.method private saveAttachment(JLcom/android/emailcommon/mail/Part;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-nez p4, :cond_a

    instance-of v2, p3, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    if-eqz v2, :cond_a

    move-object v0, p3

    check-cast v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    invoke-virtual {v0}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->getAttachmentId()J

    move-result-wide v0

    move-wide v1, v0

    :goto_0
    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v0

    instance-of v6, v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    if-eqz v6, :cond_4

    check-cast v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    invoke-virtual {v0}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    move-object v5, v0

    move v0, v4

    move-object v4, v3

    :goto_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v6, "size"

    invoke-static {v3, v6}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v3, "X-Android-Attachment-StoreData"

    invoke-interface {p3, v3}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x2c

    invoke-static {v3, v6}, Lcom/android/emailcommon/utility/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-static {v6, v7}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-nez v8, :cond_6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "message_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "content_uri"

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "store_data"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "size"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "name"

    invoke-virtual {v2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content_id"

    invoke-virtual {v2, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "attachments"

    const-string v3, "message_id"

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    :goto_3
    if-eqz v4, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$400(Lcom/android/email/mail/store/LocalStore;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    invoke-interface {p3, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "content_uri"

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "attachments"

    const-string v5, "id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    instance-of v0, p3, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    if-eqz v0, :cond_3

    check-cast p3, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    invoke-virtual {p3, v1, v2}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->setAttachmentId(J)V

    :cond_3
    return-void

    :cond_4
    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v0, "att"

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v6}, Lcom/android/email/mail/store/LocalStore;->access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v6

    invoke-static {v0, v3, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v6}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v3

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    move-object v4, v0

    move v0, v3

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_6
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "content_uri"

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v6, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "size"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "content_id"

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "message_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "attachments"

    const-string v7, "id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_9
    move v0, v4

    move-object v4, v3

    goto/16 :goto_1

    :cond_a
    move-wide v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/android/emailcommon/mail/Message;Z)V

    return-void
.end method

.method public appendMessages([Lcom/android/emailcommon/mail/Message;Z)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v20, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    move-object/from16 v3, p1

    array-length v10, v3

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_9

    aget-object v11, v3, v9

    instance-of v0, v11, Lcom/android/emailcommon/internet/MimeMessage;

    move/from16 v20, v0

    if-nez v20, :cond_0

    new-instance v20, Ljava/lang/Error;

    const-string v21, "LocalStore can only store Messages that extend MimeMessage"

    invoke-direct/range {v20 .. v21}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_0
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Local"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    :goto_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    invoke-static {v11, v0, v5}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/emailcommon/mail/Part;

    :try_start_0
    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v18 .. v18}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "text/html"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    new-instance v20, Lcom/android/emailcommon/mail/MessagingException;

    const-string v21, "Unable to get text for message part"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :cond_1
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "DELETE FROM messages WHERE folder_id = ? AND uid = ?"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    :try_start_1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_3
    :try_start_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v20, "uid"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "subject"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "sender_list"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "date"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v20

    if-nez v20, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    :goto_3
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v20, "flags"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/email/mail/store/LocalStore;->makeFlagsString(Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "folder_id"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v20, "to_list"

    sget-object v21, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "cc_list"

    sget-object v21, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "bcc_list"

    sget-object v21, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "html_content"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    if-lez v20, :cond_5

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "text_content"

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    if-lez v20, :cond_6

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "reply_to_list"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getReplyTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "attachment_count"

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v22, "internal_date"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v20

    if-nez v20, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    :goto_6
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v21, "message_id"

    move-object v0, v11

    check-cast v0, Lcom/android/emailcommon/internet/MimeMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "store_flag_1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "store_flag_2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "flag_downloaded_full"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "flag_downloaded_partial"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "flag_deleted"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "x_headers"

    check-cast v11, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-virtual {v11}, Lcom/android/emailcommon/internet/MimeMessage;->getExtendedHeaders()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "messages"

    const-string v22, "uid"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v13, v4, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->saveAttachment(JLcom/android/emailcommon/mail/Part;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v7

    new-instance v20, Lcom/android/emailcommon/mail/MessagingException;

    const-string v21, "Error appending message"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :cond_4
    :try_start_3
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    goto/16 :goto_3

    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v20

    goto/16 :goto_6

    :cond_8
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public close(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->expunge()[Lcom/android/emailcommon/mail/Message;

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    return-void
.end method

.method public copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "copyMessages called with incorrect Folder"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p2, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/android/emailcommon/mail/Message;Z)V

    return-void
.end method

.method public create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT INTO folders (name, visible_limit) VALUES (?, ?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$200(Lcom/android/email/mail/store/LocalStore;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    return-object v0
.end method

.method public delete(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "DELETE FROM folders WHERE id = ?"

    new-array v3, v6, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    iget-object v0, p1, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-virtual {v0}, Lcom/android/email/mail/store/LocalStore;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public expunge()[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/emailcommon/mail/Message;

    return-object v1
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_0
    move-object/from16 v10, p1

    array-length v0, v10

    move/from16 v20, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    aget-object v22, v10, v17

    move-object/from16 v21, v22

    check-cast v21, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    const/4 v15, 0x0

    const-string v2, "Content-Type"

    const-string v3, "multipart/mixed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v23, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v23 .. v23}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    const-string v2, "mixed"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V

    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v2}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT html_content, text_content FROM messages WHERE id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v16, :cond_1

    new-instance v11, Lcom/android/emailcommon/internet/TextBody;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Lcom/android/emailcommon/internet/TextBody;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/android/emailcommon/internet/MimeBodyPart;

    const-string v2, "text/html"

    invoke-direct {v12, v11, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    :cond_1
    if-eqz v27, :cond_2

    new-instance v11, Lcom/android/emailcommon/internet/TextBody;

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Lcom/android/emailcommon/internet/TextBody;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/android/emailcommon/internet/MimeBodyPart;

    const-string v2, "text/plain"

    invoke-direct {v12, v11, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v2}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "attachments"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "size"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "mime_type"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "store_data"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "content_uri"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "content_id"

    aput-object v6, v4, v5

    const-string v5, "message_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v11, 0x0

    if-eqz v14, :cond_4

    new-instance v11, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$400(Lcom/android/email/mail/store/LocalStore;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v11, v2, v3}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    :cond_4
    new-instance v12, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-wide/from16 v0, v18

    invoke-direct {v12, v2, v11, v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;-><init>(Lcom/android/email/mail/store/LocalStore;Lcom/android/emailcommon/mail/Body;J)V

    const-string v2, "Content-Type"

    const-string v3, "%s;\n name=\"%s\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    const/4 v5, 0x1

    aput-object v24, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "base64"

    invoke-virtual {v12, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Disposition"

    const-string v3, "attachment;\n filename=\"%s\";\n size=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v24, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-ID"

    invoke-virtual {v12, v2, v13}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v26

    invoke-virtual {v12, v2, v0}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :catchall_1
    move-exception v2

    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :cond_7
    new-instance v12, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v12}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    const-string v2, "Content-Type"

    const-string v3, "text/html;\n charset=\"UTF-8\""

    invoke-virtual {v12, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    new-instance v12, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v12}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    const-string v2, "Content-Type"

    const-string v3, "text/plain;\n charset=\"UTF-8\""

    invoke-virtual {v12, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v15, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Email"

    const-string v1, "fetchWithRetrieveSize function in LocalStore : Do nothing."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDelimiter()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    return-wide v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    new-instance v1, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v2}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers FROM messages WHERE uid = ? AND folder_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_1
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public getMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessageCount([Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;)I

    move-result v0

    return v0
.end method

.method public getMessageCount([Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT COUNT(*) FROM messages WHERE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, p1, p2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->buildFlagPredicates(Ljava/lang/StringBuilder;[Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;)V

    const-string v3, "messages.folder_id = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v3}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v1

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3
.end method

.method public getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "LocalStore.getMessages(int, int, MessageRetrievalListener) not yet implemented"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages(ILjava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v9, 0x0

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v3}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers FROM messages WHERE folder_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    new-array v3, v9, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    return-object v3
.end method

.method public getMessages([Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers FROM messages WHERE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, p2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->buildFlagPredicates(Ljava/lang/StringBuilder;[Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;)V

    const-string v4, "folder_id = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v4}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v4

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    new-array v4, v10, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    return-object v4
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/emailcommon/mail/Message;

    goto :goto_0
.end method

.method public getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/android/email/mail/store/LocalStore;->access$700()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentCallbacks()Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    return-object p0
.end method

.method public getPersistentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    iget-wide v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/email/mail/store/LocalStore;->access$800(Lcom/android/email/mail/store/LocalStore;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v1}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT unread_count FROM folders WHERE folders.name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Nonexistent folder"

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getVisibleLimit()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v1}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT visible_limit FROM folders WHERE folders.name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Nonexistent folder"

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v1}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT id, unread_count, visible_limit FROM folders where folders.name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Nonexistent folder"

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setDelimiter(I)V
    .locals 0

    return-void
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3, p2, p3}, Lcom/android/emailcommon/mail/Message;->setFlags([Lcom/android/emailcommon/mail/Flag;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    return-void
.end method

.method public setUnreadMessageCount(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET unread_count = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVisibleLimit(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    iput p1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET visible_limit = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateMessage(Lcom/android/email/mail/store/LocalStore$LocalMessage;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v12, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v0, v11, v3}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/mail/Part;

    :try_start_0
    invoke-static {v10}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "text/html"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    const-string v13, "Unable to get text for message part"

    invoke-direct {v12, v13, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v12}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "UPDATE messages SET uid = ?, subject = ?, sender_list = ?, date = ?, flags = ?, folder_id = ?, to_list = ?, cc_list = ?, bcc_list = ?, html_content = ?, text_content = ?, reply_to_list = ?, attachment_count = ?, message_id = ?, store_flag_1 = ?, store_flag_2 = ?, flag_downloaded_full = ?, flag_downloaded_partial = ?, flag_deleted = ?, x_headers = ? WHERE id = ?"

    const/16 v12, 0x15

    new-array v0, v12, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/4 v12, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getSubject()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/4 v12, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v17, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v12

    if-nez v12, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    :goto_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v16, v17

    const/4 v12, 0x4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/LocalStore;->makeFlagsString(Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v16, v12

    const/4 v12, 0x6

    sget-object v13, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/4 v12, 0x7

    sget-object v13, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x8

    sget-object v13, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v13, 0x9

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    aput-object v12, v16, v13

    const/16 v13, 0xa

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_4
    aput-object v12, v16, v13

    const/16 v12, 0xb

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getReplyTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0xc

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0xd

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getMessageId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0xe

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v17, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0xf

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v17, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v17, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v17, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v17, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x13

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getExtendedHeaders()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x14

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v16, v12

    invoke-virtual/range {v14 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_5
    if-ge v6, v4, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/Part;

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v12

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v14}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->saveAttachment(JLcom/android/emailcommon/mail/Part;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    goto/16 :goto_2

    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_4

    :catch_1
    move-exception v5

    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    const-string v13, "Error appending message"

    invoke-direct {v12, v13, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_5
    return-void
.end method
