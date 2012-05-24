.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckingDialog"
.end annotation


# instance fields
.field private final EXTRA_PROGRESS_STRING:Ljava/lang/String;

.field private mProgressString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-string v0, "CheckProgressDialog.Progress"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->EXTRA_PROGRESS_STRING:Ljava/lang/String;

    return-void
.end method

.method private getProgressString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const v0, 0x7f0800d1

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0800d2

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0800d3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    .locals 1

    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v3, "CheckProgressDialog.Progress"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetRequestCode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const v3, 0x1010355

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIconAttribute(I)V

    const v3, 0x7f0800d4

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, -0x2

    const v4, 0x7f080043

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "CheckProgressDialog.Progress"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateProgress(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
