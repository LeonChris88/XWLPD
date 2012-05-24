.class public Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmimeAlertDialogFragment"
.end annotation


# instance fields
.field public mAlwaysDecryptOrVerifyMails:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->mAlwaysDecryptOrVerifyMails:Z

    return-void
.end method

.method public static newInstance(II)Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;
    .locals 3

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    invoke-direct {v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "DialogType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method getOwner()Lcom/android/email/activity/MessageViewFragmentBase;
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    const-string v8, "NULL"

    const-string v9, "Inside onCreateDialog:"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DialogType"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v8, "NULL"

    const-string v9, "Inside default:"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    return-object v7

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v8, 0x7f040057

    invoke-virtual {v2, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f100135

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f100136

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080042

    new-instance v10, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;

    invoke-direct {v10, p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080043

    new-instance v10, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$1;

    invoke-direct {v10, p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    new-instance v8, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/16 v7, 0xc

    if-ne v1, v7, :cond_0

    const v3, 0x7f0804e0

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :cond_0
    const v3, 0x7f0804df

    goto :goto_1

    :pswitch_3
    const-string v7, "NULL"

    const-string v8, "Inside MAIL_LOAD_MORE_DIALOG:"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    new-instance v8, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08032a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    new-instance v8, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$3;

    invoke-direct {v8, p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$3;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;)V

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
