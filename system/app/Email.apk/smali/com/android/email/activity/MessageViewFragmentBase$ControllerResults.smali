.class Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerResults"
.end annotation


# instance fields
.field private mWaitForLoadMessageId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method private showAttachmentProgress(JI)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    if-ltz p3, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bStartDownload:Z

    :cond_0
    invoke-virtual {v1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    cmp-long v4, p4, v4

    if-nez v4, :cond_0

    if-nez p1, :cond_d

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->showAttachmentProgress(JI)V

    sparse-switch p8, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7600(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SMIME"

    const-string v5, "Smime attachment downloaded, starting decrypting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const/16 v15, 0x22

    const-string v4, "flags"

    iget v5, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4, v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-direct {v4, v5, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_3

    if-eqz v22, :cond_2

    const-string v4, "2.5"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7800(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v4, v4, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const/16 v15, 0x22

    const-string v4, "flags"

    iget v5, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4, v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7900(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7800(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v19

    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7800(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v10

    array-length v0, v10

    move/from16 v20, v0

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-wide v17, v10, v16

    cmp-long v4, v17, p6

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I

    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v7, 0x0

    move-wide/from16 v0, p4

    invoke-direct {v5, v6, v0, v1, v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3102(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5200(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v5

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v7, 0x0

    move-wide/from16 v0, p4

    invoke-direct {v5, v6, v0, v1, v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3102(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_8
    const-string v4, "loadAttachmentCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAttachmentCallback - case 200 : attachmentId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], mBodyImageDownloadCnt["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5200(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], mBodyImageCnt["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v23

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;

    move-object/from16 v5, p0

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;JJ)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "SMIME"

    const-string v5, "Smime attachment downloaded, starting decrypting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-direct {v4, v5, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$802(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v11, :cond_c

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7900(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x1

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8000(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v19

    if-eqz v19, :cond_9

    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x1

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8000(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    goto/16 :goto_0

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    const/16 v5, 0x63

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0802ff

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v11, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v14, v5}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v4

    invoke-interface {v4, v14}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v4, "ATTACHMENT_DOWNLOAD_CANCEL"

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v11

    if-nez v11, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v10

    array-length v0, v10

    move/from16 v20, v0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-wide v17, v10, v16

    cmp-long v4, v17, p6

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I

    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_12
    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$802(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/IOException;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0800b4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v4

    invoke-interface {v4, v14}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0800bd

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v11, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
    .end sparse-switch
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7400(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_6

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->isSecondLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator(Z)V

    :cond_4
    iput-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7500(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    iput-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->securityRequiredError()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->loadData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iput-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->networkError()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->loadData(Ljava/lang/String;)V

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator(Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 7

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    cmp-long v1, p4, v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_2

    :cond_1
    sparse-switch p6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageStarted()V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    goto :goto_0

    :sswitch_1
    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageFinished()V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    goto :goto_0

    :cond_3
    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0800b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageError(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 19

    const-string v2, "SMIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMoreCallback, start progress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messageId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_8

    sparse-switch p4, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget v2, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_1

    const-string v2, "IRM"

    const-string v3, "messageviewfragmentBase: irm remove start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->startIrmRemoval()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->startLoadMore()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    goto :goto_0

    :sswitch_1
    sget v2, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    sput v2, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "IRMRemovalFlag"

    sget v3, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_3

    const-string v2, "IRM"

    const-string v3, "messageviewfragmentBase: irm remove done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->finishIrmRemoval()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_5
    :try_start_0
    const-string v2, "Email"

    const-string v3, "Inside loadMoreCallback() : case 100"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->finishLoadMore()V

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    const-string v2, "LoadMoreDialog"

    invoke-virtual {v11, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v12

    if-eqz v12, :cond_6

    const-string v2, "Email"

    const-string v3, " case 100: LoadMoreDialog!=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v2, "isMimeLoaded"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "Message.ISMIMELOADED = "

    const-string v3, "isMimeLoaded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    if-eqz v14, :cond_0

    iget-boolean v2, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v2, :cond_7

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v2, v3, v14}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "Caught exception in loadmore case100"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/emailcommon/utility/DeviceAccessException;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->DeviceAccessError(I)V

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_e

    :cond_b
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_c

    const-string v2, "IRM"

    const-string v3, "messageviewfragment: network error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->networkError()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const v3, 0x50006

    if-ne v2, v3, :cond_11

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_f

    const-string v2, "IRM"

    const-string v3, "messageviewfragmentBase: irm remove error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->errorIrmRemoval()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_11
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v13

    :goto_2
    const/16 v16, 0x0

    if-eqz v13, :cond_15

    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_3
    if-eqz v16, :cond_12

    const-string v2, "2.5"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v2, "isMimeLoaded"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/high16 v2, 0x5

    if-eq v8, v2, :cond_13

    const/high16 v2, 0x7

    if-eq v8, v2, :cond_13

    const/high16 v2, 0x10

    if-eq v8, v2, :cond_13

    const/high16 v2, 0x4

    if-eq v8, v2, :cond_13

    const/high16 v2, 0x3

    if-ne v8, v2, :cond_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->errorLoadMore(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_14
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "loadMoreCallback : mMessage is null. Do nothing"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "loadMoreCallback : Can\'t retrieve account Info. Do nothing"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public refreshIRMTemplatesCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0

    return-void
.end method

.method public setWaitForLoadMessageId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 1

    const/16 v0, -0x20

    if-ne p6, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->networkError()V

    :cond_0
    return-void
.end method
