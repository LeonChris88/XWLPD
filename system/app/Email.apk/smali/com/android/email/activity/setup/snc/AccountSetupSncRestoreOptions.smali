.class public Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;
.super Landroid/app/ListActivity;
.source "AccountSetupSncRestoreOptions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;,
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;,
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mNextClick:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectedListItem:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mList:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mAccountId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->createProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->setDefaultAccount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getProfileResponse(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    return-void
.end method

.method public static actionDisplayAccounts(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ConfiguredAccounts"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private addExchangeAccount()V
    .locals 2

    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "Adding ExchangeAccount"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionRestoreExchangeAccount(Landroid/app/Activity;)V

    return-void
.end method

.method private createProgressDialog()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080580

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$2;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "Created Progress dialog"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getProfileResponse(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "AccountSetupSncRestoreOptions"

    const-string v4, "getProfileResponse"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    if-eqz p1, :cond_1

    const-string v3, "status_code"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "status_text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "AccountSetupSncRestoreOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfileResponse - resultCode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    sput-object p2, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    const-string v3, "AccountSetupSncRestoreOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exchange settings "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retrived from server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "AccountSetupSncRestoreOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfileResponse - resultCode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exchange settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retrived from server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->addExchangeAccount()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->finish()V

    return-void

    :cond_2
    const-string v3, "AccountSetupSncRestoreOptions"

    const-string v4, "No Exchange Account Backed up from the SNC Server: mAccount - -1"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "No Exchange settings backed up"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-static {p0, v8, v9}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->actionShowAccount(Landroid/app/Activity;J)V

    goto :goto_0

    :cond_3
    const-string v3, "AccountSetupSncRestoreOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfileResponse failure - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve Exchange Settings : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-static {p0, v8, v9}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->actionShowAccount(Landroid/app/Activity;J)V

    goto :goto_0
.end method

.method private setDefaultAccount()V
    .locals 8

    const/4 v7, 0x1

    const-string v4, "AccountSetupSncRestoreOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefaultAccount: Selected Item ::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mList:Ljava/util/List;

    iget v5, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAccountIdFromUserEndpointId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v4, v4, v1

    if-nez v4, :cond_0

    const-string v4, "AccountSetupSncRestoreOptions"

    const-string v5, "######Account is INVALID from SNC Module ########"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-wide v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mAccountId:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    const/4 v4, 0x6

    iput v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->setDefaultAccount()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v1, "AccountSetupSncRestoreOptions"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040028

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ConfiguredAccounts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mList:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v2, "AccountSetupSncRestoreOptions"

    const-string v3, "User Pressed Next"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v1, "Select an account"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    if-ne v2, v1, :cond_1

    const-string v1, "AccountSetupSncRestoreOptions"

    const-string v2, "User pressed the next button more than once"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mNextClick:Z

    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->createProgressDialog()V

    const/4 v2, 0x5

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v0

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/Controller;->getUserProfile(I)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->setDefaultAccount()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->setDefaultAccount()V

    sget-boolean v2, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    if-eq v2, v1, :cond_2

    sget-boolean v2, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    if-ne v2, v1, :cond_3

    :cond_2
    const-string v2, "AccountSetupSncRestoreOptions"

    const-string v3, "Going back to AccountSetupActivity, since its from SetupWizard"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->finish()V

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    if-ne v2, v1, :cond_4

    const-string v2, "AccountSetupSncRestoreOptions"

    const-string v3, "Going back to AccountSetupActivity, since its from account manager"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->finish()V

    goto :goto_1

    :cond_4
    const-string v2, "AccountSetupSncRestoreOptions"

    const-string v3, "User Pressed Add account"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionNewAccount(Landroid/app/Activity;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100039 -> :sswitch_0
        0x7f1002bf -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
