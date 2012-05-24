.class public Lcom/android/email/DebugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private changeDbPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    invoke-static {p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "DebugReceiver"

    const-string v6, "Failed to restore account in updatePasswordToDatabase(), aborting"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "password"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const-string v5, "DebugReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changed password for Account : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const-string v5, "DebugReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changed password for Account : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableAllDebug(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    invoke-direct {p0, p1}, Lcom/android/email/DebugReceiver;->dumpDebugState(Landroid/content/Context;)V

    return-void
.end method

.method private dumpAll(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DebugReceiver"

    const-string v1, "**********************************************************"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/email/DebugReceiver;->dumpDebugState(Landroid/content/Context;)V

    const-string v0, "DebugReceiver"

    const-string v1, "**********************************************************"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/email/DebugReceiver;->dumpMemoryState(Landroid/content/Context;)V

    const-string v0, "DebugReceiver"

    const-string v1, "**********************************************************"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0}, Lcom/android/email/MessagingController;->dumpStatus()V

    const-string v0, "DebugReceiver"

    const-string v1, "**********************************************************"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/utils/SncServerSettings;->dumpStatus()V

    const-string v0, "DebugReceiver"

    const-string v1, "**********************************************************"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DebugReceiver"

    const-string v1, "*********************** END ******************************"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dumpDebugState(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/email/DebugReceiver;->dumpVersion(Landroid/content/Context;)V

    const-string v0, "DebugReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  [Email.DEBUG] set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DebugReceiver"

    const-string v1, "  [EAS] ????"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dumpIdleState(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0}, Lcom/android/email/MessagingController;->dumpIdleStatus()V

    return-void
.end method

.method private dumpMemoryState(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/DebugReceiver;->dumpVersion(Landroid/content/Context;)V

    return-void
.end method

.method private dumpVersion(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DebugReceiver"

    const-string v1, "P8-LTE - Developement Version"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private enableAllDebug(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DebugReceiver"

    const-string v1, "WARNING! WARNING!! WARNING!!! -- Enabling all debug, will affect performance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    invoke-direct {p0, p1}, Lcom/android/email/DebugReceiver;->enableLegacyLogging(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/email/DebugReceiver;->dumpDebugState(Landroid/content/Context;)V

    return-void
.end method

.method private enableLegacyLogging(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/EmailLog;->DEBUG_LEGACY_TRANSPORT:Z

    const-string v0, "DebugReceiver"

    const-string v1, "[Legacy] Debuging for parser and userlog enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showDebugScreen(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/Debug;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dumpAccounts(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v6, "DebugReceiver"

    const-string v7, "No Accounts Found"

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v2, v1

    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    const-string v6, "DebugReceiver"

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->dumpAccountInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    const-string v6, "DebugReceiver"

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->dumpHostAuthInfo(Lcom/android/emailcommon/provider/EmailContent$HostAuth;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    const-string v6, "DebugReceiver"

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->dumpHostAuthInfo(Lcom/android/emailcommon/provider/EmailContent$HostAuth;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "DebugReceiver"

    const-string v7, " ### ### ###"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    const/4 v13, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "debugControl"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_0
    if-nez v13, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "DebugReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.android.email.DEBUG received | debugControl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "enableEmailDebug"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "DebugReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Email.DEBUG changed from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    goto :goto_0

    :cond_3
    const-string v3, "disableEmailDebug"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "DebugReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Email.DEBUG changed from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    goto :goto_0

    :cond_4
    const-string v3, "dumpDebugState"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/android/email/DebugReceiver;->dumpDebugState(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "dumpAll"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/android/email/DebugReceiver;->dumpAll(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "dumpVersion"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/android/email/DebugReceiver;->dumpVersion(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "dumpMemoryState"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/email/DebugReceiver;->dumpMemoryState(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "dumpLegacyState"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v3}, Lcom/android/email/MessagingController;->dumpStatus()V

    goto/16 :goto_0

    :cond_9
    const-string v3, "dumpIdleState"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/android/email/DebugReceiver;->dumpIdleState(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "dumpMailServiceState"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "enableAllDebug"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/android/email/DebugReceiver;->enableAllDebug(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "disableAllDebug"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/android/email/DebugReceiver;->disableAllDebug(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "showDebugScreen"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/android/email/DebugReceiver;->showDebugScreen(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "dumpAccount"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p1}, Lcom/android/email/DebugReceiver;->dumpAccounts(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "dumpSncState"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/android/email/syncnconnect/utils/SncServerSettings;->dumpStatus()V

    goto/16 :goto_0

    :cond_f
    const-string v3, "addSncAccount"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x5

    const/16 v5, 0x9

    invoke-static {v3, v5}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/email/syncnconnect/utils/SncService;

    const-string v5, "1"

    const-string v6, "Mail"

    invoke-direct {v3, v5, v6}, Lcom/android/email/syncnconnect/utils/SncService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v3

    const-string v5, "Google"

    const-string v6, "hanifa.android@gmail.com"

    const-string v7, "Nokia2100"

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/Controller;->addUserAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_10
    const-string v3, "delSncAccount"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object v12, v11

    array-length v0, v12

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    aget-object v10, v12, v16

    iget-wide v5, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static/range {p1 .. p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v3

    iget-wide v5, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v5, v6}, Lcom/android/email/Controller;->deleteAccount(J)V

    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_12
    const-string v3, "changeHttptimeout"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "Httptimeoutvalue"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_2
    const-string v3, "DebugReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User given Http timeout value - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit16 v3, v9, 0x3e8

    sput v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_CONNECTION_TIMEOUT:I

    goto/16 :goto_0

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-string v3, "DebugReceiver"

    const-string v5, "Number format exception"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_13
    const-string v3, "changePassword"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "emailAddress"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_14

    const-string v3, "DebugReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled or invalid emailAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "password"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/android/email/DebugReceiver;->changeDbPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string v3, "dumpControllerStats"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/android/email/Controller$ControllerStats;->dump()V

    goto/16 :goto_0

    :cond_16
    const-string v3, "DebugReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled or invalid debugControl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
