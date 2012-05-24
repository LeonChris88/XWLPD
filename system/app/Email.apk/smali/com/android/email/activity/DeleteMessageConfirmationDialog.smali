.class public Lcom/android/email/activity/DeleteMessageConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "DeleteMessageConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private getCallback()Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;

    move-object v0, v1

    goto :goto_0
.end method

.method public static newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/DeleteMessageConfirmationDialog;
    .locals 3

    new-instance v1, Lcom/android/email/activity/DeleteMessageConfirmationDialog;

    invoke-direct {v1}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "count_messages"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->getCallback()Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;->onDeleteMessageConfirmationDialogOkPressed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "count_messages"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0008

    invoke-virtual {v3, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080042

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080043

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
