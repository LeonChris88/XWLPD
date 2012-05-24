.class public Lcom/android/email/mail/store/LocalStore;
.super Lcom/android/email/mail/Store;
.source "LocalStore.java"

# interfaces
.implements Lcom/android/email/mail/Store$PersistentDataCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;,
        Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;,
        Lcom/android/email/mail/store/LocalStore$LocalMessage;,
        Lcom/android/email/mail/store/LocalStore$LocalFolder;,
        Lcom/android/email/mail/store/LocalStore$PendingCommand;
    }
.end annotation


# static fields
.field private static final PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;


# instance fields
.field private final mAttachmentsDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mPath:Ljava/lang/String;

.field private mVisibleLimitDefault:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->X_DESTROYED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/mail/store/LocalStore;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/16 v10, 0x16

    const/16 v9, 0x15

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/16 v6, 0x18

    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/email/mail/store/LocalStore;->mVisibleLimitDefault:I

    iput-object p2, p0, Lcom/android/email/mail/store/LocalStore;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "local"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const-string v5, "Invalid scheme"

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v0

    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const-string v5, "Invalid uri for LocalStore"

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-eq v1, v6, :cond_9

    const/16 v4, 0x12

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS folders"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE folders (id INTEGER PRIMARY KEY, name TEXT, last_updated INTEGER, unread_count INTEGER, visible_limit INTEGER)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS messages"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE messages (id INTEGER PRIMARY KEY, folder_id INTEGER, uid TEXT, subject TEXT, date INTEGER, flags TEXT, sender_list TEXT, to_list TEXT, cc_list TEXT, bcc_list TEXT, reply_to_list TEXT, html_content TEXT, text_content TEXT, attachment_count INTEGER, internal_date INTEGER, message_id TEXT, store_flag_1 INTEGER, store_flag_2 INTEGER, flag_downloaded_full INTEGER,flag_downloaded_partial INTEGER, flag_deleted INTEGER, x_headers TEXT)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE attachments (id INTEGER PRIMARY KEY, message_id INTEGER,store_data TEXT, content_uri TEXT, size INTEGER, name TEXT,mime_type TEXT, content_id TEXT)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS pending_commands"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE pending_commands (id INTEGER PRIMARY KEY, command TEXT, arguments TEXT)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addRemoteStoreDataTable()V

    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addFolderDeleteTrigger()V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TRIGGER IF EXISTS delete_message"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TRIGGER delete_message BEFORE DELETE ON messages BEGIN DELETE FROM attachments WHERE old.id = message_id; END;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    if-eq v4, v6, :cond_9

    new-instance v4, Ljava/lang/Error;

    const-string v5, "Database upgrade failed!"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    if-ge v1, v7, :cond_4

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN message_id TEXT;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    :cond_4
    if-ge v1, v8, :cond_5

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE attachments ADD COLUMN content_id TEXT;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    :cond_5
    if-ge v1, v9, :cond_6

    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addRemoteStoreDataTable()V

    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addFolderDeleteTrigger()V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    :cond_6
    if-ge v1, v10, :cond_7

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN store_flag_1 INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN store_flag_2 INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    :cond_7
    const/16 v4, 0x17

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN flag_downloaded_full INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN flag_downloaded_partial INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN flag_deleted INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->migrateMessageFlags()V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_8
    if-ge v1, v6, :cond_2

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN x_headers TEXT;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    :cond_9
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_att"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_a
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/LocalStore;)I
    .locals 1

    iget v0, p0, Lcom/android/email/mail/store/LocalStore;->mVisibleLimitDefault:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/mail/store/LocalStore;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$700()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    sget-object v0, Lcom/android/email/mail/store/LocalStore;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/mail/store/LocalStore;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/mail/store/LocalStore;->getPersistentString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addFolderDeleteTrigger()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS delete_folder"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER delete_folder BEFORE DELETE ON folders BEGIN DELETE FROM messages WHERE old.id = folder_id; DELETE FROM remote_store_data WHERE old.id = folder_id; END;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private addRemoteStoreDataTable()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS remote_store_data"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE remote_store_data (id INTEGER PRIMARY KEY, folder_id INTEGER, data_key TEXT, data TEXT, UNIQUE (folder_id, data_key) ON CONFLICT REPLACE)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private getPersistentString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    move-object v9, p4

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "remote_store_data"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data"

    aput-object v4, v2, v3

    const-string v3, "folder_id = ? AND data_key = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v9

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private migrateMessageFlags()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "flags"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :try_start_0
    const-string v1, "id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v1, "flags"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    if-eqz v15, :cond_2

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v13, 0x1

    :cond_0
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v14, 0x1

    :cond_1
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v12, 0x1

    :cond_2
    const-string v1, "flag_downloaded_full"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "flag_downloaded_partial"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "flag_deleted"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/store/LocalStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/android/email/mail/store/LocalStore;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/LocalStore;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private setPersistentString(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "folder_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "remote_store_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method


# virtual methods
.method public checkSettings()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while closing localstore db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public delete()V
    .locals 7

    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    :try_start_2
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v5

    goto :goto_3

    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public getAllFolders()[Lcom/android/emailcommon/mail/Folder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT name FROM folders"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/email/mail/store/LocalStore$LocalFolder;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    new-array v2, v5, [Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/emailcommon/mail/Folder;

    return-object v2
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPersistentCallbacks()Lcom/android/email/mail/Store$PersistentDataCallbacks;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    return-object p0
.end method

.method public getPersistentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/email/mail/store/LocalStore;->getPersistentString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoredAttachmentCount()I
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeFlagsString(Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/emailcommon/mail/Flag;->values()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-eq v1, v6, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    if-eqz v4, :cond_1

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    const/4 v6, 0x0

    :goto_1
    return-object v6

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public removeFolder(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public renameFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public resetVisibleLimits(I)V
    .locals 4

    const/4 v3, 0x0

    iput p1, p0, Lcom/android/email/mail/store/LocalStore;->mVisibleLimitDefault:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "visible_limit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "folders"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public setPersistentString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/email/mail/store/LocalStore;->setPersistentString(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
