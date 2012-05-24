.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/emailcommon/mail/MessagingException;",
        ">;"
    }
.end annotation


# instance fields
.field final mCheckEmail:Ljava/lang/String;

.field final mCheckPassword:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field final mMode:I

.field final mSenderUri:Ljava/lang/String;

.field final mStoreHost:Ljava/lang/String;

.field final mStoreUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mSenderUri:Ljava/lang/String;

    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 19

    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_1

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin auto-discover for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getDomain()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/mail/Store;->autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v14

    if-nez v14, :cond_2

    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountCheckTask MessagingException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "autodiscover_error_code"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAutoDiscoverCount()I

    move-result v11

    if-nez v11, :cond_3

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setAutoDiscoverCount(I)V

    const/4 v2, -0x1

    if-eq v9, v2, :cond_4

    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x1

    if-ne v2, v11, :cond_4

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setAutoDiscoverCount(I)V

    :cond_4
    const/4 v2, 0x5

    if-eq v9, v2, :cond_5

    const/4 v2, 0x1

    if-ne v9, v2, :cond_6

    :cond_5
    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, -0x1

    if-eq v9, v2, :cond_7

    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "autodiscover_host_auth"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v12, v2, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_9
    const-string v2, "Email"

    const-string v3, "Begin check of incoming email settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v7

    const/4 v15, 0x0

    if-eqz v7, :cond_a

    const-string v2, "validate_result_code"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v2, "validate_protocol_version"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iput-object v13, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    :cond_a
    const/4 v2, 0x7

    if-ne v15, v2, :cond_b

    const-string v2, "validate_policy_set"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/service/PolicySet;

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setPolicySet(Lcom/android/emailcommon/service/PolicySet;)V

    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v12, v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x8

    if-ne v15, v2, :cond_c

    const-string v2, "validate_unsupported_policies"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v12, v15, v2, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const/4 v2, -0x1

    if-eq v15, v2, :cond_d

    const-string v2, "validate_error_message"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v12, v15, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_e
    const-string v2, "Email"

    const-string v3, "Begin check of outgoing email settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mSenderUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/Sender;->close()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/Sender;->open()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/Sender;->close()V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    :cond_1
    const/4 v10, 0x6

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/4 v8, 0x0

    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string v14, "MAX"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "DTM"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TNL"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TMZ"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TMU"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TPL"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "COS"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TMS"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TRG"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "MBM"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "TMT"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    :cond_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    if-nez v8, :cond_c

    const v6, 0x7f08010e

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-virtual {v14, v10, v6, v8, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0

    :sswitch_0
    const v6, 0x7f0803b9

    const/4 v10, 0x7

    goto :goto_1

    :sswitch_1
    check-cast p1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    const/4 v14, 0x1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAutoDiscoverCount()I

    move-result v15

    if-eq v14, v15, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    const/16 v10, 0x8

    goto :goto_1

    :cond_5
    const v6, 0x7f0803b9

    const/4 v10, 0x7

    goto :goto_1

    :sswitch_2
    const/4 v10, 0x5

    goto :goto_1

    :sswitch_3
    if-nez v8, :cond_6

    const v6, 0x7f08010b

    :goto_2
    goto :goto_1

    :cond_6
    const v6, 0x7f08010c

    goto :goto_2

    :sswitch_4
    if-eqz v8, :cond_7

    const-string v14, ""

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_7
    const v6, 0x7f080109

    :goto_3
    goto :goto_1

    :cond_8
    const v6, 0x7f08010a

    goto :goto_3

    :sswitch_5
    const v6, 0x7f08010d

    goto :goto_1

    :sswitch_6
    const v6, 0x7f080113

    goto :goto_1

    :sswitch_7
    const v6, 0x7f080110

    goto :goto_1

    :sswitch_8
    const v6, 0x7f080111

    goto :goto_1

    :sswitch_9
    const v6, 0x7f080118

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionData()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    move-object v13, v14

    check-cast v13, [Ljava/lang/String;

    if-nez v13, :cond_9

    const-string v14, "AccountCheckSettingsFragment"

    const-string v15, "No data for unsupported policies?"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    move-object v1, v13

    array-length v7, v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_b

    aget-object v9, v1, v5

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    const-string v14, ", "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :sswitch_a
    const v6, 0x7f080115

    goto/16 :goto_1

    :sswitch_b
    const v6, 0x7f080112

    goto/16 :goto_1

    :sswitch_c
    const v6, 0x7f080114

    goto/16 :goto_1

    :sswitch_d
    const v6, 0x7f0803cf

    goto/16 :goto_1

    :cond_c
    const v6, 0x7f08010f

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_b
        0x5 -> :sswitch_4
        0x7 -> :sswitch_2
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xe -> :sswitch_d
        0x10 -> :sswitch_c
        0x4a -> :sswitch_3
        0x4b -> :sswitch_0
        0x4c -> :sswitch_1
        0x4d -> :sswitch_5
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
