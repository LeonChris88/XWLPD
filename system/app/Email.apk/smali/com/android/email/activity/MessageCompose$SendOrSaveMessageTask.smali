.class Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendOrSaveMessageTask"
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
.field private final attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field private final mSend:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 4

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Email"

    const-string v1, "Inhibiting send while monkey is in charge."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :cond_0
    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$7100(Lcom/android/email/activity/MessageCompose;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    invoke-static {p1, v1, v2, v0, v3}, Lcom/android/email/activity/MessageCompose;->access$7200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v18

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageCompose;->access$7300(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14, v10, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14, v15, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "textContent"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "htmlContent"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textReply"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "htmlReply"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "introText"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sourceMessageKey"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v17

    invoke-static {v1, v2, v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    :goto_0
    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$4500(Lcom/android/email/activity/MessageCompose;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$7400(Lcom/android/email/activity/MessageCompose;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v16, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    array-length v13, v7

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_8

    aget-object v8, v7, v12

    iget-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez v16, :cond_3

    iget v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    const/4 v11, 0x1

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting download of attachment #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v8, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$5400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    :try_start_1
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v9

    const-string v1, "flags"

    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "messageKey"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    :cond_7
    iget v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->getIsSyncedDraftMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v9

    const-string v1, "flags"

    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    if-eqz v1, :cond_a

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f08008e

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    :cond_9
    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "meeting_resonse"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$5400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/Controller;->sendMeetingEditedResponse(JJI)V

    :cond_a
    :goto_3
    const/4 v1, 0x0

    monitor-exit v18

    return-object v1

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$5400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/Controller;->sendMessage(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4102(Z)Z

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4000()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$7502(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;)Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$7600(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f0800c3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f0800b7

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
