.class public Lcom/android/email/AccountBackupRestore;
.super Ljava/lang/Object;
.source "AccountBackupRestore.java"


# static fields
.field private static ctx:Landroid/content/Context;

.field static mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static sBackupsChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/AccountBackupRestore;->ctx:Landroid/content/Context;

    new-instance v0, Lcom/android/email/AccountBackupRestore$1;

    invoke-direct {v0}, Lcom/android/email/AccountBackupRestore$1;-><init>()V

    sput-object v0, Lcom/android/email/AccountBackupRestore;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/email/AccountBackupRestore;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public static backupAccounts(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Email"

    const-string v1, "backupAccounts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/email/AccountBackupRestore;->doBackupAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)V

    return-void
.end method

.method static declared-synchronized doBackupAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)V
    .locals 10

    const-class v6, Lcom/android/email/AccountBackupRestore;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v7

    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_1

    :goto_1
    monitor-exit v6

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "typeMsg=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :goto_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backing up account:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p0, v0}, Lcom/android/email/LegacyConversions;->makeLegacyAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/email/Account;

    move-result-object v2

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Landroid/accounts/Account;

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    :cond_3
    const-string v4, "com.android.calendar"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    :cond_4
    const-string v4, "com.android.email.provider"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    :cond_5
    const-string v4, "tasks"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v3, v3, 0x9

    iput v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    :cond_6
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/Account;->setSyncScheduleData(Ljava/lang/String;)V

    :cond_7
    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_8

    iget v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    :cond_8
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_9

    iget v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    :cond_9
    iget v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    invoke-virtual {v2, p1}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_a
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method

.method static declared-synchronized doRestoreAccounts(Landroid/content/Context;Lcom/android/email/Preferences;Z)Z
    .locals 24

    const-class v23, Lcom/android/email/AccountBackupRestore;

    monitor-enter v23

    const/16 v20, 0x0

    const/16 v19, 0x0

    :try_start_0
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "typeMsg=0"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v9}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    if-lez v16, :cond_0

    const/4 v3, 0x0

    :goto_0
    monitor-exit v23

    return v3

    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v12

    array-length v3, v12

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    sput-object p0, Lcom/android/email/AccountBackupRestore;->ctx:Landroid/content/Context;

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Restoring Email Accounts, found "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v9, v12

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v12

    array-length v15, v10

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v15, :cond_10

    aget-object v11, v10, v13

    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restoring account:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/email/LegacyConversions;->makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    :cond_4
    const-string v3, "snc"

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v14, 0x1

    :goto_3
    if-eqz v14, :cond_5

    invoke-virtual {v11}, Lcom/android/email/Account;->getSyncScheduleData()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_a

    const-string v3, "_"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    new-instance v2, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/4 v3, 0x0

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x2

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x3

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, 0x4

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x5

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    :cond_5
    :goto_4
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_6

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    :cond_6
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_c

    const/4 v5, 0x1

    :goto_5
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    const/4 v7, 0x1

    :goto_6
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_e

    const/4 v6, 0x1

    :goto_7
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x9

    if-eqz v3, :cond_f

    const/4 v8, 0x1

    :cond_7
    :goto_8
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    if-nez p2, :cond_8

    sget-object v9, Lcom/android/email/AccountBackupRestore;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    move-object/from16 v3, p0

    move-object/from16 v4, v22

    invoke-static/range {v3 .. v9}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZLandroid/accounts/AccountManagerCallback;)V

    :cond_8
    move-object/from16 v0, v22

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v3}, Lcom/android/email/esp/ServiceProvider;->getProviderId(I)I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    const/16 v20, 0x1

    move-object/from16 v19, v22

    goto/16 :goto_2

    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x1e0

    const/16 v5, 0x3fc

    const/16 v6, 0x3e

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v3

    monitor-exit v23

    throw v3

    :cond_b
    :try_start_2
    new-instance v3, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x12c

    const/16 v5, 0x4ec

    const/16 v6, 0x7f

    const/4 v7, -0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    goto/16 :goto_4

    :cond_c
    const/4 v5, 0x0

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    goto :goto_7

    :cond_f
    const/4 v8, 0x0

    goto :goto_8

    :cond_10
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_11

    new-instance v18, Lcom/android/email/adapter/SncAdapter;

    invoke-direct/range {v18 .. v18}, Lcom/android/email/adapter/SncAdapter;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/adapter/SncAdapter;->initProtocol()V

    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/email/adapter/SncAdapter;->addBackupAccount(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_11
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static declared-synchronized restoreAccountsIfNeeded(Landroid/content/Context;)V
    .locals 9

    const-class v6, Lcom/android/email/AccountBackupRestore;

    monitor-enter v6

    :try_start_0
    sget-boolean v5, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    :goto_0
    monitor-exit v6

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    const-string v3, "/data/data/com.android.email/shared_prefs"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_1

    const-string v5, "AccountBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {p0, v5, v7}, Lcom/android/email/AccountBackupRestore;->doRestoreAccounts(Landroid/content/Context;Lcom/android/email/Preferences;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v5, "Email"

    const-string v7, "Register services after restoring accounts"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v5

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    :cond_2
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
