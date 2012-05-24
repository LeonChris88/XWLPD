.class public Lcom/android/email/activity/setup/AccountSetupIncoming;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# instance fields
.field mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

.field private mNextButton:Landroid/view/MenuItem;

.field mNextButtonEnabled:Z

.field private mPreviousButton:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 2

    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    invoke-static {p2}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(II)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->actionOutgoingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f100055

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onEnableProceedButtons(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButtonEnabled:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->onNext()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->onBackPressed()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100039 -> :sswitch_0
        0x7f1002c0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const v0, 0x7f1002c0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPreviousButton:Landroid/view/MenuItem;

    const v0, 0x7f100039

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 5

    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "AccountCheckSettingsFragment"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const-string v3, "back"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "Email >> AccountSetupIncoming"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
