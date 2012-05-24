.class Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadEmbeddedAttachmentsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5202(Lcom/android/email/activity/MessageViewFragmentBase;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5102(Lcom/android/email/activity/MessageViewFragmentBase;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p1

    array-length v3, v0

    new-array v3, v3, [J

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5302(Lcom/android/email/activity/MessageViewFragmentBase;[J)[J

    move-object/from16 v14, p1

    array-length v0, v14

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    aget-object v15, v14, v17

    const-string v2, "MessageViewFragmentBase >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mEmbeddedImageDownload:Z

    const-string v2, "MessageViewFragmentBase >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content id2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v3, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v16

    if-eqz v16, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v2

    iget-wide v3, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v11}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ControllerResultUiThreadWrapper;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v3

    iget-wide v4, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5108(Lcom/android/email/activity/MessageViewFragmentBase;)I

    :cond_1
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseInlineTag()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mEmbeddedImageDownload:Z

    const-string v2, "MessageViewFragmentBase >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content id2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v3, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v16

    if-eqz v16, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v2

    iget-wide v3, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v11}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ControllerResultUiThreadWrapper;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v3

    iget-wide v4, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5108(Lcom/android/email/activity/MessageViewFragmentBase;)I

    goto/16 :goto_1

    :cond_4
    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mEmbeddedImageDownload:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v3, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v16

    if-eqz v16, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v2

    iget-wide v3, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v11}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ControllerResultUiThreadWrapper;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v3

    iget-wide v4, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5108(Lcom/android/email/activity/MessageViewFragmentBase;)I

    goto/16 :goto_1

    :cond_6
    return-void
.end method
