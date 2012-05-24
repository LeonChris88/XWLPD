.class public Lcom/android/email/syncnconnect/utils/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# static fields
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

.field private static mContextForAccountManager:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/email/syncnconnect/utils/DatabaseUtils$2;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils$2;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->mContextForAccountManager:Landroid/content/Context;

    return-object v0
.end method

.method public static addAccountToAccountManager(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 3

    const-string v0, "DatabaseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccountToAccountManager is called :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->mContextForAccountManager:Landroid/content/Context;

    new-instance v0, Lcom/android/email/syncnconnect/utils/DatabaseUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils$1;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static checkRestoreFlowDone(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x0

    const-string v2, "snc_settings_preferences"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "snc_restore_flow_done"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRestoreFlowDone - ret - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "emailAddress=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v5

    const-string v6, "Account added from web"

    invoke-virtual {v5, v4, v6, v0, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    :goto_0
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    invoke-static {p0, p1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->addAccountToAccountManager(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    int-to-byte v5, v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    iget-boolean v6, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    int-to-byte v4, v4

    or-int/2addr v4, v5

    and-int/lit16 v3, v4, 0xff

    const-string v4, "isDefault"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "emailAddress"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "displayName"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "syncInterval"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "syncLookback"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "typeMsg"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "signature"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "accountType"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1, p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method public static createAccount(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)J
    .locals 20

    const-wide/16 v11, 0x0

    if-nez p1, :cond_0

    move-wide v13, v11

    :goto_0
    return-wide v13

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v19

    const-string v4, "DatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding Account in the Email Database with email address :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->findDuplicateAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "DatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account with ID :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v13, v11

    goto :goto_0

    :cond_1
    new-instance v16, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    const/16 v4, 0xf

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    const/4 v4, 0x6

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    const/4 v4, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/esp/ServiceProvider;->getSncProvider(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    const v4, 0x7f0801d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getAccountName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getAccountName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTypeMsg(I)V

    new-instance v2, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v3, 0x12c

    const/16 v4, 0x4ec

    const/16 v5, 0x7f

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getPassword(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :try_start_0
    new-instance v2, Ljava/net/URI;

    const-string v3, "snc+ssl+trustallcerts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/email/syncnconnect/utils/SncServerSettings;->IMAP_VIP:Ljava/lang/String;

    sget v6, Lcom/android/email/syncnconnect/utils/SncServerSettings;->IMAP_PORT:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smtp+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/email/syncnconnect/utils/SncServerSettings;->SMTP_AUTH_FLAGS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/email/syncnconnect/utils/SncServerSettings;->SMTP_VIP:Ljava/lang/String;

    const/16 v7, 0x24b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emailAddress=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    const-string v4, "DatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account Created with AccountId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v13, v11

    goto/16 :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v5}, Lcom/android/email/esp/ServiceProvider;->getDefaultAccountName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception v18

    const-string v4, "DatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Captured while configuring the account :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v13, v11

    goto/16 :goto_0
.end method

.method public static deleteAccount(Landroid/content/Context;Ljava/lang/String;)J
    .locals 17

    const-string v12, "DatabaseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Deleting Account from the Email Database with userEndpointId :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "compatibilityUuid=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v12, -0x1

    cmp-long v12, v2, v12

    if-nez v12, :cond_0

    const-string v12, "DatabaseUtils"

    const-string v13, "Invalid Account Id"

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    :goto_0
    return-wide v4

    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v12, "DatabaseUtils"

    const-string v13, "Account is Empty: Null"

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    goto :goto_0

    :cond_1
    sget-object v12, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "login=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/emailcommon/provider/EmailContent;->getIdListWhere(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[J

    move-result-object v8

    array-length v12, v8

    const/4 v13, 0x2

    if-gt v12, v13, :cond_4

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "hostAuthKeyRecv"

    const/4 v13, 0x0

    aget-wide v13, v8, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "hostAuthKeySend"

    const/4 v13, 0x1

    aget-wide v13, v8, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v12, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v6, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v10, v0, v12}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/email/mail/BaseSncStore;->delete()V

    invoke-static {v10}, Lcom/android/email/mail/BaseSncStore;->removeInstance(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {v9}, Lcom/android/email/mail/Sender;->removeInstance(Ljava/lang/String;)V

    :cond_3
    sget-object v12, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    invoke-static/range {p0 .. p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    :goto_2
    move-wide v4, v2

    goto/16 :goto_0

    :cond_4
    const-string v12, "DatabaseUtils"

    new-instance v13, Ljava/lang/Exception;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "account "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " has less than 2 HostAuth entries in HostAuth table"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v12, "DatabaseUtils"

    const-string v13, "Exception while deleting account"

    invoke-static {v12, v7, v13}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getAccountIdFromEmailId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emailAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAccountIdFromUserEndpointId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compatibilityUuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAllSncAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation

    const-string v0, "DatabaseUtils"

    const-string v1, "Into getAllSncAccounts"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "DatabaseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SNC Account :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getCachedEndpoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getCorporateEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getVerizonEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getOthersEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getCorporateEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    const-string v2, "Mail"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>()V

    const-string v2, "6"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointId(Ljava/lang/String;)V

    const-string v2, "Corporate"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointName(Ljava/lang/String;)V

    const-string v2, "Microsoft ActiveSync"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setSncServiceList(Ljava/util/List;)V

    return-object v1
.end method

.method public static getDeviceMDN(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v1, "snc_settings_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MDN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v1, "snc_settings_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AUTH_TOKEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEmailIdFromAccountId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v0, "DatabaseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Into getEmailIdFromAccountId for accountId :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const-wide/16 v4, -0x1

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    move-object v9, v8

    :goto_0
    return-object v9

    :cond_0
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "emailAddress"

    aput-object v0, v2, v10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmailAddress :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v9, v8

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 22

    const-string v19, "DatabaseUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Getting EndpointDetails for endpointId :: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    if-nez p1, :cond_0

    move-object v7, v6

    :goto_0
    return-object v7

    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    const-string v19, "sncAvailableAccounts.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v19, "sncEndpoint"

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    if-nez v17, :cond_1

    move-object v7, v6

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_1
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    const-string v19, "endpointId"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    new-instance v7, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v7}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointId(Ljava/lang/String;)V

    const-string v19, "provider"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setProvider(Ljava/lang/String;)V

    const-string v19, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointName(Ljava/lang/String;)V

    const-string v19, "sncServices"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    const-string v19, "sncService"

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    if-eqz v14, :cond_5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_2
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    invoke-interface {v14, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    new-instance v13, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v13}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    const-string v19, "serviceId"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    const-string v19, "isNotified"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setIsNotified(Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v12}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setSncServiceList(Ljava/util/List;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v6, v7

    :cond_3
    :goto_3
    move-object v7, v6

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v5

    :goto_4
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v5

    :goto_5
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v5

    :goto_6
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v5

    :goto_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v5

    move-object v6, v7

    goto :goto_7

    :catch_5
    move-exception v5

    move-object v6, v7

    goto :goto_6

    :catch_6
    move-exception v5

    move-object v6, v7

    goto :goto_5

    :catch_7
    move-exception v5

    move-object v6, v7

    goto :goto_4

    :cond_5
    move-object v6, v7

    goto :goto_3
.end method

.method public static getEndpointDetailsFromProviderName(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 12

    const/4 v4, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    const-string v11, "sncAvailableAccounts.xml"

    invoke-virtual {p0, v11}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v11, "sncEndpoint"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    if-nez v9, :cond_0

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v7, v11, :cond_1

    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    const-string v11, "provider"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v5, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v5}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v11, "endpointId"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointId(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setProvider(Ljava/lang/String;)V

    const-string v11, "name"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v5

    :cond_1
    :goto_2
    move-object v5, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_3
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    :goto_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_5
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v3

    :goto_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v3

    move-object v4, v5

    goto :goto_6

    :catch_5
    move-exception v3

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v3

    move-object v4, v5

    goto :goto_4

    :catch_7
    move-exception v3

    move-object v4, v5

    goto :goto_3
.end method

.method public static getOthersEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    const-string v2, "Mail"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>()V

    const-string v2, "8"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointId(Ljava/lang/String;)V

    const-string v2, "Others"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointName(Ljava/lang/String;)V

    const-string v2, "Others"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setSncServiceList(Ljava/util/List;)V

    return-object v1
.end method

.method private static getPassword(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v3, "snc_accounts_credentials"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static getSncEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEmailIdFromAccountId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->printSncEndpoint(Lcom/android/email/syncnconnect/utils/SncEndpoint;)V

    return-object v1
.end method

.method public static getSncHostAuth(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "protocol=? AND password!=?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "snc"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v5

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getSncUserEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEmailIdFromAccountId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->printSncUserEndpoint(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    return-object v1
.end method

.method public static getUserEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .locals 22

    const-string v19, "DatabaseUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Getting UserEndpointDetails for emailId :: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    if-nez p1, :cond_0

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    const-string v19, "sncUserAccounts.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v19, "sncUserEndpoint"

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    if-nez v15, :cond_1

    move-object/from16 v17, v16

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    invoke-interface {v15, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    const-string v19, "userName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    new-instance v17, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-direct/range {v17 .. v17}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v19, "userEndpointId"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserEndpointId(Ljava/lang/String;)V

    const-string v19, "endpointId"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setEndpointId(Ljava/lang/String;)V

    const-string v19, "provider"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setProvider(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserName(Ljava/lang/String;)V

    const-string v19, "displayOrder"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayOrder(Ljava/lang/String;)V

    const-string v19, "accountName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setAccountName(Ljava/lang/String;)V

    const-string v19, "displayName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayName(Ljava/lang/String;)V

    const-string v19, "defaultFlag"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDefaultFlag(Ljava/lang/String;)V

    const-string v19, "sncServices"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    const-string v19, "sncService"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    if-eqz v12, :cond_5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    new-instance v11, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v11}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    const-string v19, "serviceId"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    const-string v19, "isNotified"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setIsNotified(Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setSncServiceList(Ljava/util/List;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v16, v17

    :cond_3
    :goto_3
    move-object/from16 v17, v16

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v5

    :goto_4
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v5

    :goto_5
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v5

    :goto_6
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v5

    :goto_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v5

    move-object/from16 v16, v17

    goto :goto_7

    :catch_5
    move-exception v5

    move-object/from16 v16, v17

    goto :goto_6

    :catch_6
    move-exception v5

    move-object/from16 v16, v17

    goto :goto_5

    :catch_7
    move-exception v5

    move-object/from16 v16, v17

    goto :goto_4

    :cond_5
    move-object/from16 v16, v17

    goto :goto_3
.end method

.method public static getUserEndpointDetailsFromId(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .locals 21

    const/16 v16, 0x0

    if-nez p1, :cond_0

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    const-string v19, "sncUserAccounts.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v19, "sncUserEndpoint"

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    if-nez v15, :cond_1

    move-object/from16 v17, v16

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    invoke-interface {v15, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    const-string v19, "userEndpointId"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    new-instance v17, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-direct/range {v17 .. v17}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserEndpointId(Ljava/lang/String;)V

    const-string v19, "userName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserName(Ljava/lang/String;)V

    const-string v19, "endpointId"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setEndpointId(Ljava/lang/String;)V

    const-string v19, "provider"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setProvider(Ljava/lang/String;)V

    const-string v19, "displayOrder"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayOrder(Ljava/lang/String;)V

    const-string v19, "accountName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setAccountName(Ljava/lang/String;)V

    const-string v19, "displayName"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayName(Ljava/lang/String;)V

    const-string v19, "defaultFlag"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDefaultFlag(Ljava/lang/String;)V

    const-string v19, "sncServices"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    const-string v19, "sncService"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    if-eqz v12, :cond_5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    new-instance v11, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v11}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    const-string v19, "serviceId"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    const-string v19, "isNotified"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/email/syncnconnect/utils/SncService;->setIsNotified(Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setSncServiceList(Ljava/util/List;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v16, v17

    :cond_3
    :goto_3
    move-object/from16 v17, v16

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v5

    :goto_4
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v5

    :goto_5
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v5

    :goto_6
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v5

    :goto_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v5

    move-object/from16 v16, v17

    goto :goto_7

    :catch_5
    move-exception v5

    move-object/from16 v16, v17

    goto :goto_6

    :catch_6
    move-exception v5

    move-object/from16 v16, v17

    goto :goto_5

    :catch_7
    move-exception v5

    move-object/from16 v16, v17

    goto :goto_4

    :cond_5
    move-object/from16 v16, v17

    goto :goto_3
.end method

.method public static getUserEndpointId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v0, "DatabaseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Into getUserEndpointId for accountId :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const-wide/16 v4, -0x1

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    move-object v9, v8

    :goto_0
    return-object v9

    :cond_0
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "compatibilityUuid"

    aput-object v0, v2, v10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserEndpointId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v9, v8

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getVerizonEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    const-string v2, "Mail"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>()V

    const-string v2, "7"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointId(Ljava/lang/String;)V

    const-string v2, "Verizon.net"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointName(Ljava/lang/String;)V

    const-string v2, "Verizon"

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setSncServiceList(Ljava/util/List;)V

    return-object v1
.end method

.method public static isSncServicePresent(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static organizeEndpointList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    const/4 v0, 0x3

    invoke-static {p0, v3, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    invoke-static {p0, v2, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getCorporateEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getVerizonEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getOthersEndpoint()Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static printSncEndpoint(Lcom/android/email/syncnconnect/utils/SncEndpoint;)V
    .locals 5

    if-eqz p0, :cond_0

    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EndpointDetails ::\nEndpointId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nEndpointName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getEndpointName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nProviderName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncService;

    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nService :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static printSncUserEndpoint(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V
    .locals 5

    if-eqz p0, :cond_0

    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserEndpointDetails ::\nUserEndpointId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nEndpointId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nUserName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nProviderName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nDisplayOrder :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayOrder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nAccountName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nDisplayName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nDefaultFlag :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDefaultFlag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncService;

    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nService :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setRestoreFlowDone(Landroid/content/Context;Z)V
    .locals 5

    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into setRestoreFlowDone with value :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "snc_settings_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "snc_restore_flow_done"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSncTestServer(Landroid/content/Context;Z)V
    .locals 5

    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into setSncTestServer with value :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "snc_settings_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "snc_test_server"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static updateSncHostAuthEntries(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseUtils"

    const-string v2, "Into updateSncHostAuthEntries() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "password = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getIdListWhere(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v3, v1, v0

    const-string v5, "DatabaseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating password for id :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "password"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v5, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
