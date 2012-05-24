.class Lcom/android/email/activity/MessageCompose$LoadMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMessageId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide p2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4000()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4100()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4000()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    if-nez v5, :cond_1

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    :goto_1
    return-object v6

    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    :cond_1
    iget-wide v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    :try_start_4
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    const-string v6, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodySourceKey(Landroid/content/Context;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v5, v6, v10

    aput-object v0, v6, v11

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :try_start_5
    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while loading message body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 17

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x0

    aget-object v9, p1, v11

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v11, 0x1

    aget-object v1, p1, v11

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v9, :cond_2

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v12, 0x7f080085

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v11}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0

    :cond_2
    const-string v11, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "com.android.email.intent.action.FORWARD"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "com.android.email.intent.action.EMAIL_DOC"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    :cond_3
    const-string v11, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$1702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v11, v11, 0x400

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$4202(Lcom/android/email/activity/MessageCompose;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_2
    invoke-static {v12, v11}, Lcom/android/email/activity/MessageCompose;->access$4302(Lcom/android/email/activity/MessageCompose;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v11, v11, 0x1000

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_3
    invoke-static {v12, v11}, Lcom/android/email/activity/MessageCompose;->access$4402(Lcom/android/email/activity/MessageCompose;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$1302(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$1202(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v11}, Lcom/android/email/activity/MessageCompose;->getIsSyncedDraftMessage()Z

    move-result v11

    if-eqz v11, :cond_16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4500(Lcom/android/email/activity/MessageCompose;)Z

    move-result v11

    if-eqz v11, :cond_16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v11, :cond_5

    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v11, :cond_c

    :cond_5
    const-string v11, "Compose >>"

    const-string v12, "this is an encrypted or signed draft message."

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v11, :cond_10

    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v11, :cond_6

    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v11

    sget-object v12, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v11, v12, :cond_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v12, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v14}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$4602(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Void;

    invoke-virtual {v11, v12}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4700(Lcom/android/email/activity/MessageCompose;)V

    goto/16 :goto_0

    :cond_c
    iget v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v12, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v14, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    invoke-static {v11, v12, v13, v14}, Lcom/android/email/activity/MessageCompose;->access$4800(Lcom/android/email/activity/MessageCompose;JI)Z

    move-result v11

    if-eqz v11, :cond_e

    :cond_d
    const-string v11, "Compose >>"

    const-string v12, "mFlagTruncated == FLAG_TRUNCATED_YES"

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4700(Lcom/android/email/activity/MessageCompose;)V

    goto/16 :goto_0

    :cond_e
    const-string v11, "Compose >>"

    const-string v12, "mFlagTruncated == FLAG_TRUNCATED_NO"

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v12, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    iget-object v10, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iget v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_f

    const-string v11, "Compose >>"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "message.mFlagLoaded = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Message.FLAG_LOADED_COMPLETE = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz v10, :cond_10

    const-string v11, "2.5"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    if-nez v11, :cond_10

    const-string v11, "Compose >>"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isEx2003 = true, Protocol Version = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Message Truncated = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4700(Lcom/android/email/activity/MessageCompose;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$4902(Lcom/android/email/activity/MessageCompose;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5002(Lcom/android/email/activity/MessageCompose;I)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5102(Lcom/android/email/activity/MessageCompose;I)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v12, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    iget-object v10, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v10, :cond_13

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-wide/high16 v13, 0x4004

    cmpl-double v11, v11, v13

    if-ltz v11, :cond_13

    move-object v2, v4

    array-length v7, v2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_13

    aget-object v3, v2, v6

    iget-object v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v11, :cond_11

    iget v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_12

    :cond_11
    iget v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_14

    :cond_12
    iget-object v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$4902(Lcom/android/email/activity/MessageCompose;Z)Z

    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v11

    if-eqz v11, :cond_16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v12, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;-><init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Long;

    const/4 v14, 0x0

    iget-wide v15, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5202(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const-string v11, "Compose >>"

    const-string v12, "pending loadmessagetask to load embedded images"

    invoke-static {v11, v12}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$5702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v12, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5, v9}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;-><init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;ZLcom/android/emailcommon/provider/EmailContent$Message;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Long;

    const/4 v14, 0x0

    iget-wide v15, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5802(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_17
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$6400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11, v1}, Lcom/android/email/activity/MessageCompose;->access$6500(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$6600(Lcom/android/email/activity/MessageCompose;)V

    if-eqz v9, :cond_18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Lcom/android/email/activity/MessageCompose;->processSourceMessageGuarded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$6702(Lcom/android/email/activity/MessageCompose;Z)Z

    :cond_18
    const-string v11, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "com.android.email.intent.action.REPLY_ALL"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "com.android.email.intent.action.FORWARD"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    :cond_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    if-eqz v11, :cond_1d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Lcom/android/email/activity/MessageCompose;->access$6802(Lcom/android/email/activity/MessageCompose;J)J

    :cond_1a
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$6800(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$6800(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/android/email/activity/MessageCompose;->access$6900(Lcom/android/email/activity/MessageCompose;J)V

    goto/16 :goto_0

    :cond_1b
    const-string v11, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "com.android.email.intent.action.REPLY_ALL"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "com.android.email.intent.action.MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    :cond_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$5702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    goto/16 :goto_5

    :cond_1d
    const-string v11, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    if-eqz v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v11, v12, v13}, Lcom/android/email/activity/MessageCompose;->access$6802(Lcom/android/email/activity/MessageCompose;J)J

    goto/16 :goto_6
.end method
