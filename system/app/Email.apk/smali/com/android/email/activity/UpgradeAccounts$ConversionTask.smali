.class Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
.super Landroid/os/AsyncTask;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

.field mAccountNum:I

.field final mContext:Landroid/content/Context;

.field final mPreferences:Lcom/android/email/Preferences;

.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iput p3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mPreferences:Lcom/android/email/Preferences;

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    return-void
.end method

.method private copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z
    .locals 9

    const v8, 0x7f08014c

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    :try_start_0
    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v5}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-boolean v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v5}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v5}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v5, v6, p2, p3}, Lcom/android/email/activity/UpgradeAccounts;->copyAccount(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v3, v5, p2, p3}, Lcom/android/email/activity/UpgradeAccounts;->deleteAccountStore(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v3}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v3

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const v3, 0x7fffffff

    invoke-virtual {p3, p2, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setProgress(II)V

    move v3, v4

    goto :goto_0

    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v5, v6, p2, p3, p4}, Lcom/android/email/activity/UpgradeAccounts;->copyAccountForUpdate(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "Email"

    const-string v6, "Return false..copyAccountForUpdate() "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v5}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v7, 0x7f08014c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while copying account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v5}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    iput-boolean v4, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v3, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while deleting account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15

    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1100()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_0
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1000()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    monitor-exit v11

    :goto_0
    return-object v10

    :cond_0
    const-string v10, "Email"

    const-string v12, "ConversionTask() start "

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v5

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "eas"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_7

    const/4 v9, 0x0

    :try_start_1
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const v12, 0x7fffffff

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setMaxProgress(II)V

    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const/4 v12, -0x1

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(II)V

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    invoke-virtual {v9}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v1

    const-string v10, "validate_result_code"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    const/4 v10, -0x1

    if-eq v7, v10, :cond_6

    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- resultCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v7, :sswitch_data_0

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "eas"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v12, v12, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->estimateWork(Landroid/content/Context;Lcom/android/email/Account;)I

    move-result v3

    const/4 v10, -0x1

    if-ne v3, v10, :cond_2

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    :cond_2
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setMaxProgress(II)V

    :cond_3
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-boolean v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-nez v10, :cond_4

    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Copy accounts   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v13, v13, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "pop3"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const-string v12, "pop3"

    invoke-direct {p0, v6, v10, v5, v12}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    :try_start_3
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v10, v12}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    :goto_3
    :try_start_4
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v10, 0x0

    goto/16 :goto_0

    :sswitch_0
    :try_start_5
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080114

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_6
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v10

    :sswitch_1
    :try_start_7
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080109

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->showCredentialsDialog(I)V

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z

    goto/16 :goto_1

    :sswitch_2
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    goto/16 :goto_1

    :sswitch_3
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080113

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080118

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    goto/16 :goto_1

    :sswitch_5
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080115

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    goto/16 :goto_1

    :sswitch_6
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080112

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_7
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08010d

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    :cond_7
    :try_start_8
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "imap"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "pop3"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_8
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy checking incoming "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v13, v13, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v9, 0x0

    :try_start_9
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const v12, 0x7fffffff

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setMaxProgress(II)V

    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const/4 v12, -0x1

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(II)V

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    invoke-virtual {v9}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_9

    const-string v10, "validate_result_code"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    :cond_9
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy resultCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, -0x1

    if-eq v7, v10, :cond_a

    packed-switch v7, :pswitch_data_0

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :goto_4
    :try_start_a
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy checking outgoing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v13, v13, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v12, v12, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/mail/Sender;->close()V

    invoke-virtual {v8}, Lcom/android/email/mail/Sender;->open()V

    invoke-virtual {v8}, Lcom/android/email/mail/Sender;->close()V

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    const-string v10, "Email"

    const-string v12, "ConversionTask()- Legacy checking outgoing OK!"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_3

    :goto_5
    const/4 v10, 0x0

    :try_start_c
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :pswitch_0
    :try_start_d
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080109

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->showCredentialsDialog(I)V

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_e
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy incoming Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    const/4 v10, 0x5

    if-ne v4, v10, :cond_b

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080109

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->showCredentialsDialog(I)V

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z

    :goto_6
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_4

    :cond_a
    :try_start_f
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    const-string v10, "Email"

    const-string v12, "ConversionTask()- Legacy checking incoming OK!"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v2

    :try_start_10
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy incoming Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception v2

    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy outgoing Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    goto/16 :goto_1

    :cond_d
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "imap"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const-string v12, "imap"

    invoke-direct {p0, v6, v10, v5, v12}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "eas"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const-string v12, "eas"

    invoke-direct {p0, v6, v10, v5, v12}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    :catch_4
    move-exception v2

    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while deleting account "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_6
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x10 -> :sswitch_0
        0x4d -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1200()Z

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z

    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$700(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$1400(Lcom/android/email/activity/UpgradeAccounts;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-virtual {v1}, Lcom/android/email/activity/UpgradeAccounts;->startConversion()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-virtual {v1}, Lcom/android/email/activity/UpgradeAccounts;->startConversion()V

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
