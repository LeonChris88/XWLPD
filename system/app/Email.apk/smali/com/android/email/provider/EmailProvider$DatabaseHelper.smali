.class Lcom/android/email/provider/EmailProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    const/4 v0, 0x0

    const/16 v1, 0x7d6

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " add column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alter table Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alter table Message_Updates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alter table Message_Deletes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception adding - Message.TABLE_NAME. tmp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception adding - Message.UPDATED_TABLE_NAME. tmp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception adding - Message.DELETED_TABLE_NAME. tmp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private onUpdgradeMailboxInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v3, 0x0

    const-string v8, "_id=? AND ( type =? OR type =? OR type =? OR type =? OR type =? OR type =? OR type =?)"

    const-string v1, "Account"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "peakSchedule"

    aput-object v0, v2, v12

    const/4 v0, 0x2

    const-string v4, "offPeakSchedule"

    aput-object v4, v2, v0

    const-string v0, "syncInterval"

    aput-object v0, v2, v11

    const-string v0, "syncLookback"

    aput-object v0, v2, v9

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "peakSyncSchedule"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "offpeakSyncSchedule"

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "syncInterval"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "SyncIntervalReference"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "syncLookback"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "syncInterval"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "SyncIntervalReference"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "syncLookback"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "Mailbox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accountKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    const/4 v0, 0x2

    const/16 v5, 0x42

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0x41

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    const/16 v0, 0x43

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v0, 0x5

    const/16 v5, 0x45

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x7

    const/16 v5, 0x44

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "Mailbox"

    invoke-virtual {p1, v0, v2, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto/16 :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProvider database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createDocumentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHistoryAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createIRMTemplateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9

    const/4 v7, 0x5

    const/16 v3, 0x7d0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "select count(*) from sqlite_master where type=\'table\' and name=\'EmailAddressCache\'"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-ge p2, v7, :cond_2

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object v3, v0, v4

    iget-object v5, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5, v3, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db adding recent-address-cache"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    :try_start_1
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-static {v0, p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->access$000(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_1
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from under v5"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    if-ne p2, v7, :cond_2a

    :try_start_2
    const-string v0, "alter table Message add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Message_Updates add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Message_Deletes add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    const/4 v0, 0x6

    :goto_4
    const/4 v5, 0x6

    if-ne v0, v5, :cond_3

    const-string v0, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x7

    :cond_3
    const/4 v5, 0x7

    if-ne v0, v5, :cond_4

    :try_start_3
    const-string v0, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    const/16 v0, 0x8

    :cond_4
    const/16 v5, 0x8

    if-ne v0, v5, :cond_5

    :try_start_4
    const-string v0, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column signature text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    const/16 v0, 0x9

    :cond_5
    const/16 v5, 0x9

    if-ne v0, v5, :cond_6

    :try_start_5
    const-string v0, "alter table Message add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Message_Updates add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Message_Deletes add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_7
    const/16 v0, 0xa

    :cond_6
    const/16 v5, 0xa

    if-ne v0, v5, :cond_7

    :try_start_6
    const-string v0, "alter table Attachment add column content text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_8
    const/16 v0, 0xb

    :cond_7
    const/16 v5, 0xb

    if-ne v0, v5, :cond_8

    :try_start_7
    const-string v0, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_9
    const/16 v0, 0xc

    :cond_8
    const/16 v5, 0xc

    if-ne v0, v5, :cond_9

    :try_start_8
    const-string v0, "alter table Mailbox add column messageCount integer not null default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_a
    const/16 v0, 0xd

    :cond_9
    const/16 v5, 0xd

    if-ne v0, v5, :cond_a

    :try_start_9
    const-string v0, "alter table Message add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    :goto_b
    const/16 v0, 0xe

    :cond_a
    const/16 v5, 0xe

    if-ne v0, v5, :cond_b

    :try_start_a
    const-string v0, "alter table Message_Deletes add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Message_Updates add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_a

    :goto_c
    const/16 v0, 0xf

    :cond_b
    const/16 v5, 0xf

    if-ne v0, v5, :cond_c

    :try_start_b
    const-string v0, "alter table Attachment add column accountKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_b

    :goto_d
    const/16 v0, 0x10

    :cond_c
    const/16 v5, 0x10

    if-ne v0, v5, :cond_d

    :try_start_c
    const-string v0, "alter table Mailbox add column parentKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_c

    :goto_e
    const/16 v0, 0x11

    :cond_d
    const/16 v5, 0x11

    if-ne v0, v5, :cond_e

    :try_start_d
    const-string v0, "alter table Message add column threadId integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Message_Updates add column threadId integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Message_Deletes add column threadId integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Message add column threadName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Message_Updates add column threadName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Message_Deletes add column threadName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "importance"

    const-string v5, "integer default 1"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "istruncated"

    const-string v5, "integer default 0"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flagMoved"

    const-string v5, "integer default 0"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dstMailboxKey"

    const-string v5, "integer default -1"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flagStatus"

    const-string v5, "integer default 0"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alter table Account add column emailsize integer default 3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column policyKey integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column peakDays integer default 62;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column peakStartMinute integer default 480;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column peakEndMinute integer default 1020;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column peakSchedule integer default -2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column offPeakSchedule integer default -2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column roamingSchedule integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column calendarSyncLookback integer default 4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Mailbox add column flagChanged integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Mailbox add column dstMailboxId text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Mailbox add column newDisplayName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-static {v0, p1}, Lcom/android/email/provider/EmailProvider;->access$100(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_d

    :goto_f
    const/16 v0, 0x12

    :cond_e
    :try_start_e
    const-string v5, "select name from sqlite_master where type=\'table\' and name = \'Account_CB\'"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    move-result v5

    if-lez v5, :cond_f

    move v4, v1

    :cond_f
    if-eqz v2, :cond_29

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v4

    :goto_10
    const/16 v4, 0x3e8

    if-gt v0, v4, :cond_28

    if-nez v2, :cond_10

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    move v2, v1

    :cond_10
    :try_start_f
    const-string v0, "EmailProvider"

    const-string v4, "onUpgrade insert cb table"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "delete from account where _id in (select accountKey from account_cb where typeMsg = 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    :goto_11
    const/16 v0, 0x3e9

    move v8, v2

    move v2, v0

    move v0, v8

    :goto_12
    const/16 v4, 0x3e9

    if-ne v2, v4, :cond_11

    :try_start_10
    const-string v2, "EmailProvider"

    const-string v4, "alter table mailbox_cb"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "alter table Mailbox_CB add column syncFlag integer;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    :goto_13
    const/16 v2, 0x3ea

    :cond_11
    const/16 v4, 0x3ea

    if-ne v2, v4, :cond_12

    if-eqz v0, :cond_23

    :try_start_11
    const-string v4, "EmailProvider"

    const-string v5, "oldVersion == 1002"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, " create table account_temp as select * from account_cb "

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1, v2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    const-string v2, " insert into Account_CB (_id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit)select _id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit from account_temp "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/EmailProvider;->resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v2, "drop table account_temp"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    :goto_14
    const/16 v2, 0x3eb

    :cond_12
    const/16 v4, 0x3eb

    if-ne v2, v4, :cond_27

    const-string v4, "EmailProvider"

    const-string v5, "oldVersion == 1003"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_24

    :try_start_12
    const-string v1, " create table account_temp as select * from account_cb "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1, v2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    const-string v1, " insert into Account_CB (_id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit)select _id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit from account_temp "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/EmailProvider;->resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v1, "drop table account_temp"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_69

    move v1, v0

    :goto_15
    const/16 v0, 0x3ec

    move v2, v1

    move v1, v0

    :goto_16
    const/16 v0, 0x3ec

    if-ne v1, v0, :cond_13

    :try_start_13
    const-string v0, "isMimeLoaded"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_13} :catch_15

    :goto_17
    :try_start_14
    const-string v0, "smimeFlags"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "encryptionAlgorithm"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lastVerb"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lastVerbTime"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "umCallerId"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "umUserNotes"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "conversationId"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "conversationIndex"

    const-string v1, "blob"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "followupflag"

    const-string v1, "blob"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "messageType"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "messageDirty"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alter table Account add column smimeOwnCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column smimeOptionsFlags integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column smimeSignAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column smimeEncryptionAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column conversationMode integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Account add column textPreview integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Attachment add column vmAttOrder integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Attachment add column vmAttDuration integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_14} :catch_16

    :goto_18
    const/16 v1, 0x3ed

    :cond_13
    const/16 v0, 0x3ed

    if-ne v1, v0, :cond_14

    :try_start_15
    const-string v0, "alter table Account add column deviceInfoSent integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_15} :catch_17

    :goto_19
    :try_start_16
    const-string v0, "alter table Account add column deviceBlockedType integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_16 .. :try_end_16} :catch_18

    :goto_1a
    const/16 v1, 0x3ee

    :cond_14
    const/16 v0, 0x3ee

    if-ne v1, v0, :cond_15

    :try_start_17
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_17 .. :try_end_17} :catch_19

    :goto_1b
    :try_start_18
    const-string v0, "accountSchema"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "update Message set accountSchema= (SELECT HostAuth.protocol from HostAuth where HostAuth.accountKey = Message.accountKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "mailboxType"

    const-string v1, "integer default -1"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "update Message set mailboxType= (SELECT Mailbox.type from Mailbox where Mailbox._id = Message.mailboxKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_18} :catch_1a

    :goto_1c
    :try_start_19
    const-string v0, "alter table Account add column conflict integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "update Account set conflict= 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/database/SQLException; {:try_start_19 .. :try_end_19} :catch_1b

    :goto_1d
    const/16 v1, 0x3ef

    :cond_15
    const/16 v0, 0x3ef

    if-ne v1, v0, :cond_16

    :try_start_1a
    const-string v0, "alter table Attachment add column isInline integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/database/SQLException; {:try_start_1a .. :try_end_1a} :catch_1c

    :goto_1e
    const/16 v1, 0x3f0

    :cond_16
    const/16 v0, 0x3f0

    if-ne v1, v0, :cond_17

    :try_start_1b
    const-string v0, "alter table Account add column IRMTemplateTimeStamp text ;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_1b} :catch_1d

    :goto_1f
    :try_start_1c
    const-string v0, "IRMTemplateId"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/database/SQLException; {:try_start_1c .. :try_end_1c} :catch_1e

    :goto_20
    :try_start_1d
    const-string v0, "IRMContentExpiryDate"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/database/SQLException; {:try_start_1d .. :try_end_1d} :catch_1f

    :goto_21
    :try_start_1e
    const-string v0, "IRMContentOwner"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/database/SQLException; {:try_start_1e .. :try_end_1e} :catch_20

    :goto_22
    :try_start_1f
    const-string v0, "IRMLicenseFlag"

    const-string v1, "integer default -1"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/database/SQLException; {:try_start_1f .. :try_end_1f} :catch_21

    :goto_23
    :try_start_20
    const-string v0, "IRMOwner"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/database/SQLException; {:try_start_20 .. :try_end_20} :catch_22

    :goto_24
    :try_start_21
    const-string v0, "IRMRemovalFlag"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/database/SQLException; {:try_start_21 .. :try_end_21} :catch_23

    :goto_25
    const/16 v1, 0x3f1

    :cond_17
    const/16 v0, 0x3f1

    if-ne v1, v0, :cond_18

    :try_start_22
    const-string v0, "alter table Account add column cbaCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/database/SQLException; {:try_start_22 .. :try_end_22} :catch_24

    :goto_26
    const/16 v1, 0x3f2

    :cond_18
    const/16 v0, 0x3f2

    if-ne v1, v0, :cond_19

    :try_start_23
    const-string v0, "alter table Account add column messageFormat integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/database/SQLException; {:try_start_23 .. :try_end_23} :catch_25

    :goto_27
    const/16 v1, 0x3f3

    :cond_19
    const/16 v0, 0x3f3

    if-ne v1, v0, :cond_1a

    :try_start_24
    const-string v0, "alter table Account add column accountType integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/database/SQLException; {:try_start_24 .. :try_end_24} :catch_26

    :goto_28
    const/16 v1, 0x3f4

    :cond_1a
    const/16 v0, 0x3f4

    if-ne v1, v0, :cond_1b

    const-string v0, "IRMTemplateName"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IRMTemplateDescription"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3f5

    :cond_1b
    if-ge v1, v3, :cond_26

    :try_start_25
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHistoryAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_25
    .catch Landroid/database/SQLException; {:try_start_25 .. :try_end_25} :catch_27

    :goto_29
    :try_start_26
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_26
    .catch Landroid/database/SQLException; {:try_start_26 .. :try_end_26} :catch_28

    :goto_2a
    :try_start_27
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-static {v0, p1}, Lcom/android/email/provider/EmailProvider;->access$100(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_27
    .catch Landroid/database/SQLException; {:try_start_27 .. :try_end_27} :catch_29

    :goto_2b
    :try_start_28
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->updatePasswordModeFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_28
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_28} :catch_2a

    :goto_2c
    :try_start_29
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_29
    .catch Landroid/database/SQLException; {:try_start_29 .. :try_end_29} :catch_2b

    :goto_2d
    :try_start_2a
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2a
    .catch Landroid/database/SQLException; {:try_start_2a .. :try_end_2a} :catch_2c

    :goto_2e
    :try_start_2b
    const-string v0, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/database/SQLException; {:try_start_2b .. :try_end_2b} :catch_2d

    :goto_2f
    :try_start_2c
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->convertAccountFlagsFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2c
    .catch Landroid/database/SQLException; {:try_start_2c .. :try_end_2c} :catch_2e

    :goto_30
    :try_start_2d
    const-string v0, "create trigger account_delete_policy before delete on Account begin delete from Policies where account_id=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/database/SQLException; {:try_start_2d .. :try_end_2d} :catch_2f

    :goto_31
    :try_start_2e
    const-string v0, "alter table Account add column signature text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/database/SQLException; {:try_start_2e .. :try_end_2e} :catch_30

    :goto_32
    :try_start_2f
    const-string v0, "alter table Account add column textPreview integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2f
    .catch Landroid/database/SQLException; {:try_start_2f .. :try_end_2f} :catch_31

    :goto_33
    :try_start_30
    const-string v0, "alter table Account add column emailsize integer default 3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/database/SQLException; {:try_start_30 .. :try_end_30} :catch_32

    :goto_34
    :try_start_31
    const-string v0, "alter table Account add column conflict integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "update Account set conflict= 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/database/SQLException; {:try_start_31 .. :try_end_31} :catch_33

    :goto_35
    :try_start_32
    const-string v0, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/database/SQLException; {:try_start_32 .. :try_end_32} :catch_34

    :goto_36
    :try_start_33
    const-string v0, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/database/SQLException; {:try_start_33 .. :try_end_33} :catch_35

    :goto_37
    :try_start_34
    const-string v0, "alter table Account add column calendarSyncLookback integer default 4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/database/SQLException; {:try_start_34 .. :try_end_34} :catch_36

    :goto_38
    :try_start_35
    const-string v0, "alter table Account add column peakDays integer default 62;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/database/SQLException; {:try_start_35 .. :try_end_35} :catch_37

    :goto_39
    :try_start_36
    const-string v0, "alter table Account add column peakStartMinute integer default 480;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/database/SQLException; {:try_start_36 .. :try_end_36} :catch_38

    :goto_3a
    :try_start_37
    const-string v0, "alter table Account add column peakEndMinute integer default 1020;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/database/SQLException; {:try_start_37 .. :try_end_37} :catch_39

    :goto_3b
    :try_start_38
    const-string v0, "alter table Account add column peakSchedule integer default -2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/database/SQLException; {:try_start_38 .. :try_end_38} :catch_3a

    :goto_3c
    :try_start_39
    const-string v0, "alter table Account add column offPeakSchedule integer default -2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/database/SQLException; {:try_start_39 .. :try_end_39} :catch_3b

    :goto_3d
    :try_start_3a
    const-string v0, "alter table Account add column roamingSchedule integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/database/SQLException; {:try_start_3a .. :try_end_3a} :catch_3c

    :goto_3e
    :try_start_3b
    const-string v0, "alter table Account add column smimeOwnCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/database/SQLException; {:try_start_3b .. :try_end_3b} :catch_3d

    :goto_3f
    :try_start_3c
    const-string v0, "alter table Account add column smimeOptionsFlags integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/database/SQLException; {:try_start_3c .. :try_end_3c} :catch_3e

    :goto_40
    :try_start_3d
    const-string v0, "alter table Account add column smimeSignAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/database/SQLException; {:try_start_3d .. :try_end_3d} :catch_3f

    :goto_41
    :try_start_3e
    const-string v0, "alter table Account add column smimeEncryptionAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/database/SQLException; {:try_start_3e .. :try_end_3e} :catch_40

    :goto_42
    :try_start_3f
    const-string v0, "alter table Account add column conversationMode integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/database/SQLException; {:try_start_3f .. :try_end_3f} :catch_41

    :goto_43
    :try_start_40
    const-string v0, "alter table Account add column deviceInfoSent integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/database/SQLException; {:try_start_40 .. :try_end_40} :catch_42

    :goto_44
    :try_start_41
    const-string v0, "alter table Account add column deviceBlockedType integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/database/SQLException; {:try_start_41 .. :try_end_41} :catch_43

    :goto_45
    :try_start_42
    const-string v0, "alter table Account add column policyKey integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_42
    .catch Landroid/database/SQLException; {:try_start_42 .. :try_end_42} :catch_44

    :goto_46
    :try_start_43
    const-string v0, "alter table Account add column IRMTemplateTimeStamp text ;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_43
    .catch Landroid/database/SQLException; {:try_start_43 .. :try_end_43} :catch_45

    :goto_47
    :try_start_44
    const-string v0, "alter table Account add column cbaCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_44
    .catch Landroid/database/SQLException; {:try_start_44 .. :try_end_44} :catch_46

    :goto_48
    :try_start_45
    const-string v0, "alter table Account add column easLocalChange integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/database/SQLException; {:try_start_45 .. :try_end_45} :catch_47

    :goto_49
    :try_start_46
    const-string v0, "alter table Account add column messageFormat integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_46
    .catch Landroid/database/SQLException; {:try_start_46 .. :try_end_46} :catch_48

    :goto_4a
    :try_start_47
    const-string v0, "alter table Account add column accountType integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/database/SQLException; {:try_start_47 .. :try_end_47} :catch_49

    :goto_4b
    :try_start_48
    const-string v0, "alter table Mailbox add column messageCount integer not null default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_48
    .catch Landroid/database/SQLException; {:try_start_48 .. :try_end_48} :catch_4a

    :goto_4c
    :try_start_49
    const-string v0, "alter table Mailbox add column parentKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_49
    .catch Landroid/database/SQLException; {:try_start_49 .. :try_end_49} :catch_4b

    :goto_4d
    :try_start_4a
    const-string v0, "alter table Mailbox add column flagChanged integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4a
    .catch Landroid/database/SQLException; {:try_start_4a .. :try_end_4a} :catch_4c

    :goto_4e
    :try_start_4b
    const-string v0, "alter table Mailbox add column newDisplayName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4b
    .catch Landroid/database/SQLException; {:try_start_4b .. :try_end_4b} :catch_4d

    :goto_4f
    :try_start_4c
    const-string v0, "alter table Mailbox add column flagNoSelect integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/database/SQLException; {:try_start_4c .. :try_end_4c} :catch_4e

    :goto_50
    :try_start_4d
    const-string v0, "alter table Mailbox add column lastTouchedTime integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/database/SQLException; {:try_start_4d .. :try_end_4d} :catch_4f

    :goto_51
    :try_start_4e
    const-string v0, "alter table Mailbox add column dstMailboxId text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/database/SQLException; {:try_start_4e .. :try_end_4e} :catch_50

    :goto_52
    :try_start_4f
    const-string v0, "EmailProvider"

    const-string v4, "Adding new MessageColumns... "

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "snippet"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EasLocalDeleteFlag"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EasLocalReadFlag"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "importance"

    const-string v4, "integer default 1"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "meetingInfo"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flagMoved"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dstMailboxKey"

    const-string v4, "integer default -1"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flagStatus"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "istruncated"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isMimeLoaded"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "smimeFlags"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "encryptionAlgorithm"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lastVerb"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lastVerbTime"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "umCallerId"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "umUserNotes"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "conversationId"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "conversationIndex"

    const-string v4, "blob"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "followupflag"

    const-string v4, "blob"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "messageType"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "messageDirty"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "threadId"

    const-string v4, "integer"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "threadName"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IRMTemplateId"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IRMContentExpiryDate"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IRMContentOwner"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IRMLicenseFlag"

    const-string v4, "integer default -1"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IRMOwner"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IRMRemovalFlag"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IRMTemplateDescription"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IRMTemplateName"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IRMTemplateDescription"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flagReply"

    const-string v4, "integer"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "originalId"

    const-string v4, "integer"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/database/SQLException; {:try_start_4f .. :try_end_4f} :catch_51

    :goto_53
    :try_start_50
    const-string v0, "accountSchema"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "update Message set accountSchema= (SELECT HostAuth.protocol from HostAuth where HostAuth.accountKey = Message.accountKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_50
    .catch Landroid/database/SQLException; {:try_start_50 .. :try_end_50} :catch_52

    :goto_54
    :try_start_51
    const-string v0, "mailboxType"

    const-string v4, "integer default -1"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "update Message set mailboxType= (SELECT Mailbox.type from Mailbox where Mailbox._id = Message.mailboxKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_51
    .catch Landroid/database/SQLException; {:try_start_51 .. :try_end_51} :catch_53

    :goto_55
    :try_start_52
    const-string v0, "alter table Attachment add column content text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/database/SQLException; {:try_start_52 .. :try_end_52} :catch_54

    :goto_56
    :try_start_53
    const-string v0, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_53
    .catch Landroid/database/SQLException; {:try_start_53 .. :try_end_53} :catch_55

    :goto_57
    :try_start_54
    const-string v0, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_54
    .catch Landroid/database/SQLException; {:try_start_54 .. :try_end_54} :catch_56

    :goto_58
    :try_start_55
    const-string v0, "alter table Attachment add column accountKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/database/SQLException; {:try_start_55 .. :try_end_55} :catch_57

    :goto_59
    :try_start_56
    const-string v0, "alter table Attachment add column vmAttOrder integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/database/SQLException; {:try_start_56 .. :try_end_56} :catch_58

    :goto_5a
    :try_start_57
    const-string v0, "alter table Attachment add column vmAttDuration integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/database/SQLException; {:try_start_57 .. :try_end_57} :catch_59

    :goto_5b
    :try_start_58
    const-string v0, "alter table Attachment add column isInline integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_58
    .catch Landroid/database/SQLException; {:try_start_58 .. :try_end_58} :catch_5a

    :goto_5c
    if-eqz v2, :cond_25

    :try_start_59
    const-string v0, "EmailProvider"

    const-string v2, "oldVersion < 2000alter table mailbox_cb"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "alter table Mailbox_CB add column syncFlag integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_5b

    :goto_5d
    :try_start_5a
    const-string v0, "EmailProvider"

    const-string v2, "oldVersion < 2000"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " create table account_temp as select * from account_cb "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_5d

    :goto_5e
    :try_start_5b
    invoke-static {p1, v1, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    const-string v0, " insert into Account_CB (_id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit)select _id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit from account_temp "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "drop table account_temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_5c

    :goto_5f
    move v0, v3

    :goto_60
    if-ne v0, v3, :cond_1c

    :try_start_5c
    const-string v0, "alter table Account add column forwardWithFiles integer default 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5c
    .catch Landroid/database/SQLException; {:try_start_5c .. :try_end_5c} :catch_5f

    :goto_61
    :try_start_5d
    const-string v0, "alter table Account add column autoDownload integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/database/SQLException; {:try_start_5d .. :try_end_5d} :catch_60

    :goto_62
    :try_start_5e
    const-string v0, "alter table Account add column recentMessages integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5e
    .catch Landroid/database/SQLException; {:try_start_5e .. :try_end_5e} :catch_61

    :goto_63
    :try_start_5f
    const-string v0, "alter table Account add column showImage integer default 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5f
    .catch Landroid/database/SQLException; {:try_start_5f .. :try_end_5f} :catch_62

    :goto_64
    :try_start_60
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->enableEmailSyncFromGB(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    :try_end_60
    .catch Landroid/database/SQLException; {:try_start_60 .. :try_end_60} :catch_63

    :goto_65
    const/16 v0, 0x7d1

    :cond_1c
    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_1d

    :try_start_61
    const-string v0, "alter table Account add column autoRetryTimes integer default 3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_61
    .catch Landroid/database/SQLException; {:try_start_61 .. :try_end_61} :catch_64

    :goto_66
    const/16 v0, 0x7d2

    :cond_1d
    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_1e

    :try_start_62
    const-string v0, "retrySendTimes"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Landroid/database/SQLException; {:try_start_62 .. :try_end_62} :catch_65

    :goto_67
    const/16 v0, 0x7d3

    :cond_1e
    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_1f

    :try_start_63
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createDocumentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_63
    .catch Landroid/database/SQLException; {:try_start_63 .. :try_end_63} :catch_66

    :goto_68
    const/16 v0, 0x7d4

    :cond_1f
    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_20

    :try_start_64
    const-string v0, "alter table Mailbox add column offpeakSyncSchedule integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table Mailbox add column peakSyncSchedule integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_64
    .catch Landroid/database/SQLException; {:try_start_64 .. :try_end_64} :catch_67

    :goto_69
    const/16 v0, 0x7d5

    :cond_20
    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_21

    :try_start_65
    const-string v0, "alter table Mailbox add column SyncIntervalReference integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->onUpdgradeMailboxInit(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_65
    .catch Landroid/database/SQLException; {:try_start_65 .. :try_end_65} :catch_68

    :goto_6a
    const/16 v0, 0x7d6

    :cond_21
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade complete to new version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v5, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v5 to v6"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_3
    move-exception v0

    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 7 to 8 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_4
    move-exception v0

    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 8 to 9 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_5
    move-exception v0

    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 9 to 10 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_6
    move-exception v0

    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 10 to 11 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :catch_7
    move-exception v0

    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 11 to 12 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catch_8
    move-exception v0

    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 12 to 13 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catch_9
    move-exception v0

    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 13 to 14 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catch_a
    move-exception v0

    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 14 to 15 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :catch_b
    move-exception v0

    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 15 to 16 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :catch_c
    move-exception v0

    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 16 to 17 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :catch_d
    move-exception v0

    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 17 to 18 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catch_e
    move-exception v5

    if-eqz v2, :cond_29

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v4

    goto/16 :goto_10

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_22

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_22
    throw v0

    :catch_f
    move-exception v0

    const-string v4, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :catch_10
    move-exception v2

    const-string v4, "EmailProvider"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_23
    :try_start_66
    const-string v2, "EmailProvider"

    const-string v4, "oldVersion == 1002 create table cb"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_12

    :try_start_67
    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_11

    move v0, v1

    goto/16 :goto_14

    :catch_11
    move-exception v0

    :try_start_68
    const-string v2, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1002 e =>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_6a

    move v0, v1

    goto/16 :goto_14

    :catch_12
    move-exception v2

    :goto_6b
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1002=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_24
    :try_start_69
    const-string v2, "EmailProvider"

    const-string v4, "oldVersion == 1003 create table"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_69

    :try_start_6a
    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_13

    goto/16 :goto_15

    :catch_13
    move-exception v0

    :try_start_6b
    const-string v2, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1003 e =>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_14

    goto/16 :goto_15

    :catch_14
    move-exception v0

    :goto_6c
    const-string v2, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1003=>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :catch_15
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v4, "Maybe this field is already added at previous DB version. "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    :catch_16
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1004 to 1005 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :catch_17
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1005 to 1006 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :catch_18
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1005 to 1006 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :catch_19
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1006 to 1007 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :catch_1a
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1006 to 1007 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :catch_1b
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1007 to 1008 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :catch_1c
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1007 to 1008 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    :catch_1d
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    :catch_1e
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    :catch_1f
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    :catch_20
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    :catch_21
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    :catch_22
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    :catch_23
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    :catch_24
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1009 to 1010 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :catch_25
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1010 to 1011 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :catch_26
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1011 to 1012 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :catch_27
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - createHistoryAccountTable(db) "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    :catch_28
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - createQuickResponseTable(db) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :catch_29
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - createFollowupFlagsTable(db)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    :catch_2a
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version -  updatePasswordModeFromGB(db)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto/16 :goto_2c

    :catch_2b
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - createCertificateCacheTable(db)"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    :catch_2c
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - createRecipientInformationTable(db)"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    :catch_2d
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - TRIGGER_MAILBOX_DELETE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    :catch_2e
    move-exception v0

    const-string v0, "EmailProvider"

    const-string v4, "Caught exception upgrading EmailProvider.db to 2000 version -  convertAccountFlagsFromGB(db)"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    :catch_2f
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - deleting policies"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :catch_30
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SIGNATURE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :catch_31
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.TEXT_PREVIEW_SIZE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    :catch_32
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.EMAIL_SIZE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    :catch_33
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Account.CONFLICT_RESOLUTION "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    :catch_34
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SECURITY_FLAGS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    :catch_35
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SECURITY_SYNC_KEY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    :catch_36
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.CALENDAR_SYNC_LOOKBACK"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    :catch_37
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_DAYS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    :catch_38
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_START_MINUTE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    :catch_39
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_END_MINUTE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    :catch_3a
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_SCHEDULE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    :catch_3b
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.OFF_PEAK_SCHEDULE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    :catch_3c
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.ROAMING_SCHEDULE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    :catch_3d
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OWN_CERTIFICATE_ALIAS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    :catch_3e
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OPTIONS_FLAGS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    :catch_3f
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OPTIONS_SIGN_ALGORITHM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    :catch_40
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OPTIONS_ENCRYPTION_ALGORITHM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    :catch_41
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.CONVERSATION_MODE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    :catch_42
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.DEVICE_INFO_SENT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    :catch_43
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.DEVICE_BLOCK_TYPE"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_45

    :catch_44
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.POLICY_KEY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    :catch_45
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.IRM_TEMPLATE_TIME_STAMP "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_47

    :catch_46
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.CBA_CERTIFICATE_ALIAS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    :catch_47
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.EAS_LOCAL_CHANGE_SETTING "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    :catch_48
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.MESSAGE_FORMAT  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    :catch_49
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.ACCOUNT_TYPE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    :catch_4a
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Mailbox.MESSAGE_COUNT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    :catch_4b
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Mailbox.PARENT_KEY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    :catch_4c
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.FLAG_CHANGED "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4e

    :catch_4d
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.NEW_DISPLAY_NAME "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    :catch_4e
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.FLAG_NOSELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    :catch_4f
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.LAST_TOUCHED_TIME "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    :catch_50
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.DST_MAILBOX_ID "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_52

    :catch_51
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Adding new MessageColumns "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    :catch_52
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Message.ACCOUNT_SCHEMA "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    :catch_53
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Message.MAILBOX_TYPE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    :catch_54
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.CONTENT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    :catch_55
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.FLAGS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    :catch_56
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.CONTENT_BYTES "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    :catch_57
    move-exception v0

    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Attachment.ACCOUNT_KEY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    :catch_58
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.VOICEMAIL_ATT_ORDER"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    :catch_59
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.VOICEMAIL_ATT_DURATION"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    :catch_5a
    move-exception v0

    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.ISINLINE "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    :catch_5b
    move-exception v0

    :try_start_6c
    const-string v2, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_5c

    goto/16 :goto_5d

    :catch_5c
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldVersion < 2000=>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f

    :catch_5d
    move-exception v0

    :try_start_6d
    const-string v2, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    :cond_25
    const-string v0, "EmailProvider"

    const-string v1, "oldVersion < 2000 create table cb"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_5c

    :try_start_6e
    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_5e

    goto/16 :goto_5f

    :catch_5e
    move-exception v0

    :try_start_6f
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldVersion < 2000 e =>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_5c

    goto/16 :goto_5f

    :catch_5f
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61

    :catch_60
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62

    :catch_61
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_63

    :catch_62
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    :catch_63
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception enabling Sync Email from GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65

    :catch_64
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2001 to 2002 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_66

    :catch_65
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2002 to 2003 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_67

    :catch_66
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2003 to 2004 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_68

    :catch_67
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2004 to 2005 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_69

    :catch_68
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2004 to 2005 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6a

    :catch_69
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto/16 :goto_6c

    :catch_6a
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto/16 :goto_6b

    :cond_26
    move v0, v1

    goto/16 :goto_60

    :cond_27
    move v1, v2

    move v2, v0

    goto/16 :goto_16

    :cond_28
    move v8, v2

    move v2, v0

    move v0, v8

    goto/16 :goto_12

    :cond_29
    move v2, v4

    goto/16 :goto_10

    :cond_2a
    move v0, p2

    goto/16 :goto_4
.end method
