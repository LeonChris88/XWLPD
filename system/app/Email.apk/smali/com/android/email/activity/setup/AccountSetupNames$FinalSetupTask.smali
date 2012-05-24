.class Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinalSetupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupNames;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "displayName"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "senderName"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v2}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSecurityHold(Landroid/content/Context;J)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "AccountSetupNames"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception Occured!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-virtual {v1, v0, v4}, Lcom/android/email/activity/setup/AccountSetupNames;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupNames;->access$200(Lcom/android/email/activity/setup/AccountSetupNames;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupNames;->access$200(Lcom/android/email/activity/setup/AccountSetupNames;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupNames;->access$200(Lcom/android/email/activity/setup/AccountSetupNames;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSetupNames;->actionAccountToIM()V

    const-string v1, "Email"

    const-string v2, "actionAccountToIM "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupNames;->access$300(Lcom/android/email/activity/setup/AccountSetupNames;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
