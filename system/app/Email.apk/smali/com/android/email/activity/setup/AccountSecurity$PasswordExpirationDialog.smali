.class public Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
.super Landroid/app/DialogFragment;
.source "AccountSecurity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordExpirationDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    .locals 3

    new-instance v1, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "expired"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSecurity;

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSecurity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "expired"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v6, 0x7f080123

    :goto_0
    if-eqz v4, :cond_1

    const v2, 0x7f080122

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x1010355

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f080042

    invoke-virtual {v1, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f080043

    invoke-virtual {v1, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    :cond_0
    const v6, 0x7f080120

    goto :goto_0

    :cond_1
    const v2, 0x7f080121

    goto :goto_1
.end method
