.class Lcom/android/email/activity/MessageViewFragmentBase$6;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->onCancelDownloadAllAttachment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;",
        "Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$6;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$6;->doInBackground([Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Ljava/lang/Void;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    aget-object v6, p1, v11

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$6;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v6, v6, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v12

    :cond_1
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v10}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$6;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v6, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    :goto_1
    aget-object v6, p1, v11

    iget v6, v6, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachmentCount:I

    if-ge v4, v6, :cond_9

    aget-object v6, p1, v11

    iget-object v6, v6, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aget-object v1, v6, v4

    if-eqz v1, :cond_3

    iget-wide v6, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    iget-wide v6, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/service/AttachmentDownloadService;->isInProgressQueuedAttachment(J)Z

    move-result v6

    if-ne v6, v10, :cond_4

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v6

    if-eqz v6, :cond_3

    new-array v6, v10, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aput-object v1, v6, v11

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$6;->publishProgress([Ljava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-wide v6, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/service/AttachmentDownloadService;->cancelQueuedAttachment(J)Z

    move-result v6

    if-ne v6, v10, :cond_6

    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "DownloadAttachmentAllTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCancelDownloadAllAttachment - cancelQueuedAttachment : OK, attachment ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-array v6, v10, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aput-object v1, v6, v11

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$6;->publishProgress([Ljava/lang/Object;)V

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, -0x21

    and-int/lit8 v5, v6, -0x3

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "flags"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_2

    :cond_6
    iget-boolean v6, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-ne v6, v10, :cond_7

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_7

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, -0x21

    or-int/lit8 v5, v6, 0x40

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "flags"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "DownloadAttachmentAllTask"

    const-string v7, "onCancelDownloadAllAttachment - attachment.update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "DownloadAttachmentAllTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCancelDownloadAllAttachment - cancelQueuedAttachment : Fail, attachment ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-array v6, v10, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aput-object v1, v6, v11

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$6;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$6;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v6, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$700(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$6;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$802(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 4

    const/4 v3, 0x0

    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    aget-object v1, p1, v3

    iget-object v0, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    aget-object v1, p1, v3

    iget-boolean v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$6;->onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method
