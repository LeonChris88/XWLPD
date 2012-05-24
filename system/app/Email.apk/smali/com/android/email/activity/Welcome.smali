.class public Lcom/android/email/activity/Welcome;
.super Landroid/app/Activity;
.source "Welcome.java"


# static fields
.field public static customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

.field public static fromWidget:Z

.field private static largeDisplayPortSize:I

.field private static largeDisplaySize:I

.field public static needFull:Z

.field private static xlargeDisplayPortSize:I

.field private static xlargeDisplaySize:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccountId:J

.field private mDebugPaneMode:I

.field private mHandler:Landroid/os/Handler;

.field private mMailboxId:J

.field private mMessageId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/email/activity/Welcome;->fromWidget:Z

    const/16 v0, 0x400

    sput v0, Lcom/android/email/activity/Welcome;->largeDisplaySize:I

    const/16 v0, 0x258

    sput v0, Lcom/android/email/activity/Welcome;->largeDisplayPortSize:I

    const/16 v0, 0x500

    sput v0, Lcom/android/email/activity/Welcome;->xlargeDisplaySize:I

    const/16 v0, 0x320

    sput v0, Lcom/android/email/activity/Welcome;->xlargeDisplayPortSize:I

    sput-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "Welcome"

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static actionOpenAccountInbox(Landroid/app/Activity;J)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionStart(Landroid/app/Activity;)V
    .locals 1

    const-class v0, Lcom/android/email/activity/Welcome;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static createOpenAccountInboxIntentFromShortcut(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FROM_SHORTCUT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static createOpenAccountMailboxIntent(Landroid/content/Context;JJ)Landroid/content/Intent;
    .locals 4

    const-wide/16 v2, -0x1

    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    cmp-long v1, p3, v2

    if-eqz v1, :cond_1

    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public static createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;
    .locals 3

    const-class v0, Lcom/android/email/activity/Welcome;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/Welcome;->fromWidget:Z

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private static getDebugPaneMode(Landroid/content/Intent;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "DEBUG_PANE_MODE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMailboxSelected()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

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

.method private isMessageSelected()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

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


# virtual methods
.method public InitCustomizePreference()V
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-void
.end method

.method public MainActivityLauncher()V
    .locals 15

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress!=\'snc@snc.snc\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "FROM_SHORTCUT"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f080270

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    :goto_1
    return-void

    :catch_0
    move-exception v11

    :try_start_1
    const-string v0, "Welcome"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/BadgeManager;->insertBadgeProvider(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    goto :goto_1

    :cond_4
    iget-wide v7, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v0, v7, v3

    if-nez v0, :cond_7

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v13, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "accountKey"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v1

    :goto_3
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageListXL;->actionOpenMessage(Landroid/app/Activity;JJJ)V

    goto :goto_2

    :catch_1
    move-exception v11

    :try_start_3
    const-string v0, "Welcome"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-wide v1, v7

    goto :goto_4

    :catchall_1
    move-exception v0

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->isValidId(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f080270

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->isMailboxSelected()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageListXL;->actionOpenMailbox(Landroid/app/Activity;JJ)V

    goto/16 :goto_2

    :cond_9
    invoke-static {p0, v1, v2}, Lcom/android/email/activity/MessageListXL;->actionOpenAccount(Landroid/app/Activity;J)V

    goto/16 :goto_2

    :cond_a
    move-wide v1, v7

    goto :goto_4

    :cond_b
    move-wide v1, v7

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x1

    const-wide/16 v2, -0x1

    const/4 v12, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/Welcome;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    sget-object v0, Lcom/android/email/activity/Welcome;->customer:Lcom/android/email/activity/setup/AccountSetupCustomer;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->isCombinedEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.seven.Z7.ACTION_EMAIL"

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    invoke-static {v12}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    sput-boolean v12, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    sput-boolean v12, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    sput-boolean v12, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    invoke-static {p0}, Lcom/android/email/activity/UpgradeAccounts;->doBulkUpgradeIfNecessary(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->InitCustomizePreference()V

    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->restoreAccountsIfNeeded(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/email/FolderProperties;->setInitInstance()V

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v0, "IS_FROM_COMPOSER"

    invoke-virtual {v9, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->ClearComposerIntent()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.LogProvider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/Welcome;->getDebugPaneMode(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/Welcome;->mDebugPaneMode:I

    const-string v0, "com.android.email.LogProvider"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Z7App"

    const-string v1, "LOG_VIEW_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v13, Lcom/android/email/activity/Welcome;->needFull:Z

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v13, [Ljava/lang/String;

    iget-wide v10, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "mailboxKey"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    const-string v0, "Z7App"

    const-string v1, "mMessageId : %d"

    new-array v2, v13, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Z7App"

    const-string v1, "mMailboxId : %d"

    new-array v2, v13, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->MainActivityLauncher()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
