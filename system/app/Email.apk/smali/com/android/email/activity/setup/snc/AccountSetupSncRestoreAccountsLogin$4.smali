.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$4;
.super Ljava/lang/Object;
.source "AccountSetupSncRestoreAccountsLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$4;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->setRestoreFlowDone(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$4;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$4;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->finish()V

    return-void
.end method
