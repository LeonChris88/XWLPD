.class public Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;
.super Landroid/app/Activity;
.source "AccountSetupSncAccounts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;,
        Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ViewHolder;,
        Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ImageAdapter;
    }
.end annotation


# static fields
.field private static mProviderHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountId:J

.field private mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mTotalAccount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mProviderHash:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mProviderHash:Ljava/util/HashMap;

    return-object v0
.end method

.method public static actionShowAccount(Landroid/app/Activity;J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "accountID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private buildDefaultProviderInfo()V
    .locals 14

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    const-string v10, "AccountSetupSncAccounts"

    const-string v11, "buildDefaultProviderInfo"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    const-string v10, "AccountSetupSncAccounts"

    const-string v11, "FATAL: accountList is NULL - it should not happen"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v2, v1

    array-length v6, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v2, v4

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_1
    sget-object v10, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mProviderHash:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    sget-object v10, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mProviderHash:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;

    invoke-virtual {v9}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->getmType()I

    move-result v10

    invoke-static {v10}, Lcom/android/email/esp/ServiceProvider;->getProviderId(I)I

    move-result v10

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v11}, Lcom/android/email/esp/ServiceProvider;->getProviderId(I)I

    move-result v11

    if-ne v10, v11, :cond_3

    const-string v10, "AccountSetupSncAccounts"

    const-string v11, "Provider Found in mProviderHash"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    :cond_2
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    const-string v10, "AccountSetupSncAccounts"

    const-string v11, "Provider Already Added"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;

    iget v10, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v10}, Lcom/android/email/esp/ServiceProvider;->getProviderCheckImageResourceId(I)I

    move-result v10

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v11}, Lcom/android/email/esp/ServiceProvider;->getAccountProviderName(I)Ljava/lang/String;

    move-result-object v11

    iget v12, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v12}, Lcom/android/email/esp/ServiceProvider;->getProviderId(I)I

    move-result v12

    iget v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;-><init>(ILjava/lang/String;II)V

    sget-object v10, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mProviderHash:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const-string v2, "AccountSetupSncAccounts"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040020

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "accountID"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mAccountId:J

    const-string v2, "AccountSetupSncAccounts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mAccountId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mTotalAccount:I

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    array-length v2, v2

    iput v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mTotalAccount:I

    :cond_1
    sget-object v2, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mProviderHash:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->buildDefaultProviderInfo()V

    const v2, 0x7f1000ac

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setTranscriptMode(I)V

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ImageAdapter;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ImageAdapter;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;Landroid/content/Context;[Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "AccountSetupSncAccounts"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    sget-boolean v1, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    if-eq v1, v0, :cond_0

    sget-boolean v1, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    if-ne v1, v0, :cond_1

    :cond_0
    const-string v1, "AccountSetupSncAccounts"

    const-string v2, "Going back to AccountSetupActivity, since its from SetupWizard"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    :goto_1
    invoke-static {p0}, Lcom/android/email/activity/utils/ProgressTracker;->showDPMIfNeeded(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->finish()V

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    if-ne v1, v0, :cond_2

    const-string v1, "AccountSetupSncAccounts"

    const-string v2, "Going back to AccountSetupActivity, since its from account manager"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->finish()V

    goto :goto_1

    :cond_2
    const-string v1, "AccountSetupSncAccounts"

    const-string v2, "User pressed Add Account"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionNewAccount(Landroid/app/Activity;)V

    goto :goto_1

    :sswitch_1
    const-string v1, "AccountSetupSncAccounts"

    const-string v2, "User pressed Done With Account"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    if-eq v1, v0, :cond_3

    sget-boolean v1, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    if-ne v1, v0, :cond_4

    :cond_3
    const-string v1, "AccountSetupSncAccounts"

    const-string v2, "Going back to AccountSetupActivity, since its from SetupWizard"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    :goto_2
    invoke-static {p0}, Lcom/android/email/activity/utils/ProgressTracker;->showDPMIfNeeded(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->finish()V

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    if-ne v1, v0, :cond_5

    const-string v1, "AccountSetupSncAccounts"

    const-string v2, "Going back to AccountSetupActivity, since its from account manager"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->finish()V

    goto :goto_2

    :cond_5
    iget-wide v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mAccountId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountSetupDone(Landroid/app/Activity;J)V

    const-string v1, "AccountSetupSncAccounts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Goinng to MessageList screen: mAccountId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10002a -> :sswitch_1
        0x7f1002bf -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "AccountSetupSncAccounts"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "AccountSetupSncAccounts"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
