.class public Lcom/android/email/activity/AccountFolderList;
.super Landroid/app/Activity;
.source "AccountFolderList.java"

# interfaces
.implements Lcom/android/email/activity/AccountFolderListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountFolderList$ControllerResults;
    }
.end annotation


# instance fields
.field private mControllerCallback:Lcom/android/email/Controller$Result;

.field private mListFragment:Lcom/android/email/activity/AccountFolderListFragment;

.field private mSelectedContextAccount:Lcom/android/emailcommon/provider/EmailContent$Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/AccountFolderList;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListFragment:Lcom/android/email/activity/AccountFolderListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/AccountFolderList;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountFolderList;->showProgressIcon(Z)V

    return-void
.end method

.method public static actionShowAccounts(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/AccountFolderList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private createRemoveAccountDialog()Landroid/app/Dialog;
    .locals 6

    move-object v0, p0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080145

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080146

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/AccountFolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/AccountFolderList$2;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/AccountFolderList$2;-><init>(Lcom/android/email/activity/AccountFolderList;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080043

    new-instance v3, Lcom/android/email/activity/AccountFolderList$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/AccountFolderList$1;-><init>(Lcom/android/email/activity/AccountFolderList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private onAddNewAccount()V
    .locals 0

    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    return-void
.end method

.method private showProgressIcon(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountFolderList;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method


# virtual methods
.method public onCompose(J)V
    .locals 3

    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide p1

    :cond_0
    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderList;->onAddNewAccount()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->requestWindowFeature(I)Z

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->setContentView(I)V

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/AccountFolderList$ControllerResults;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/AccountFolderList$ControllerResults;-><init>(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f100005

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AccountFolderListFragment;

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListFragment:Lcom/android/email/activity/AccountFolderListFragment;

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListFragment:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/AccountFolderListFragment;->bindActivityInfo(Lcom/android/email/activity/AccountFolderListFragment$Callback;)V

    if-eqz p1, :cond_0

    const-string v0, "com.android.email.selectedAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.email.selectedAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->setProgressBarIndeterminate(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderList;->createRemoveAccountDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDeleteAccount(J)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->showDialog(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onEditAccount(J)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings(Landroid/app/Activity;J)V

    return-void
.end method

.method public onOpenAccount(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/MessageList;->actionHandleAccount(Landroid/content/Context;JI)V

    return-void
.end method

.method public onOpenMailbox(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageList;->actionHandleMailbox(Landroid/content/Context;J)V

    return-void
.end method

.method public onOpenMailboxes(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MailboxList;->actionHandleAccount(Landroid/content/Context;J)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-wide/16 v1, -0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderList;->onAddNewAccount()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/AccountFolderList;->onRefresh(J)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/AccountFolderList;->onCompose(J)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/AccountFolderList;->onEditAccount(J)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f1002ae
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    const v1, 0x7f080146

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/AccountFolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onRefresh(J)V
    .locals 3

    const/4 v2, 0x1

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/email/activity/AccountFolderList;->showProgressIcon(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/Controller;->updateMailboxList(J)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/AccountFolderList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/AccountFolderList;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->finish()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_0

    const-string v0, "com.android.email.selectedAccount"

    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
