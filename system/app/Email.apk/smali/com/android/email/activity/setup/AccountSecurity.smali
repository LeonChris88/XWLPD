.class public Lcom/android/email/activity/setup/AccountSecurity;
.super Landroid/app/Activity;
.source "AccountSecurity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;,
        Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mTriedAddAdministrator:Z

.field private mTriedSetEncryption:Z

.field private mTriedSetExtEncryption:Z

.field private mTriedSetPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetExtEncryption:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    return-void
.end method

.method public static actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v0, "EXPIRED"

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v1

    :cond_0
    const-string v0, "EXPIRING"

    goto :goto_0
.end method

.method public static actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "SHOW_DIALOG"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V
    .locals 1

    new-instance v0, Lcom/android/email/activity/setup/AccountSecurity$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/email/activity/setup/AccountSecurity$1;-><init>(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/email/SecurityPolicy;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method private tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v10, 0x1

    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "android.app.extra.ADD_EXPLANATION"

    const v6, 0x7f08011d

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x2400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v10}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v8}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    invoke-virtual {v4, v8}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/service/PolicySet;)I

    move-result v1

    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    if-eqz v5, :cond_4

    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    :cond_4
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v6}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_5
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    if-eqz v5, :cond_6

    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    :cond_6
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-virtual {p0, v2, v5}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetExtEncryption:Z

    if-eqz v5, :cond_8

    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0

    :cond_8
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetExtEncryption:Z

    new-instance v3, Landroid/dirEncryption/DirEncryptionManager;

    invoke-direct {v3, p0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x7

    invoke-virtual {v3, v6, v7, v5}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v7}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_9
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v9, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v4, v9, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v9, "SHOW_DIALOG"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "EXPIRING"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, "EXPIRED"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Lcom/android/email/SecurityPolicy;->clearNotification(J)V

    cmp-long v9, v0, v11

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v9

    iput-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v9, "password_expiration"

    invoke-virtual {v3, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->newInstance(Ljava/lang/String;Z)Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    move-result-object v2

    const-string v9, "password_expiration"

    invoke-virtual {v2, v3, v9}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v9, :cond_6

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v9, "security_needed"

    invoke-virtual {v3, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;

    move-result-object v2

    const-string v9, "security_needed"

    invoke-virtual {v2, v3, v9}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v9}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0
.end method
