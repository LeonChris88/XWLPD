.class public Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;
.super Landroid/app/ListActivity;
.source "AccountSetupSncRestoreAccounts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;,
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;
    }
.end annotation


# instance fields
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

.field private mSncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mSncList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mSncList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mSncList:Ljava/util/List;

    return-object p1
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

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ConfiguredAccounts"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v1, "AccountSetupSncRestoreAccounts"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ConfiguredAccounts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mList:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

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
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const-string v1, "AccountSetupSncRestoreAccounts"

    const-string v2, "User pressed Skip"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->setRestoreFlowDone(Landroid/content/Context;Z)V

    sget-boolean v1, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    if-eq v1, v0, :cond_0

    sget-boolean v1, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    if-ne v1, v0, :cond_1

    :cond_0
    const-string v1, "AccountSetupSncRestoreAccounts"

    const-string v2, "Going back to AccountSetupActivity, since its from SetupWizard"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->finish()V

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    if-ne v1, v0, :cond_2

    const-string v1, "AccountSetupSncRestoreAccounts"

    const-string v2, "Going back to AccountSetupActivity, since its from account manager"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->finish()V

    goto :goto_1

    :cond_2
    const-string v1, "AccountSetupSncRestoreAccounts"

    const-string v2, "Going back to AccountSetupActivity screen"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionNewAccount(Landroid/app/Activity;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f1002c4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "AccountSetupSncRestoreAccounts"

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

    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
