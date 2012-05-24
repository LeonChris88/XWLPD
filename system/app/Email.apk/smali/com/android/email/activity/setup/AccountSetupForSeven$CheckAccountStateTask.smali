.class Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAccountStateTask"
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
.field private mAccountId:J

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->mAccountId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1800()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->mAccountId:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v1, v0, v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1900(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
