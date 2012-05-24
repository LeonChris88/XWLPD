.class Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAttachmentAllTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;",
        "Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;",
        "[",
        "Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field bActiveNetwork:Z

.field checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

.field numProcessed:I

.field numPublished:I

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->doInBackground([Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 13

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08010e

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : ActiveNetwork return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v12

    const/4 v0, 0x0

    aget-object v0, p1, v0

    new-array v1, v12, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iput-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_9

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : cancel return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, v9, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v8

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1300(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    aput-object v9, v0, v1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->publishProgress([Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    iput v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachmentCount:I

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    add-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_5

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 v11, 0x0

    :goto_3
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    if-ge v11, v0, :cond_f

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : cancel2 return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aget-object v9, v0, v11

    if-eqz v9, :cond_d

    iget-boolean v0, v9, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    :cond_d
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/email/AttachmentInfo;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    const/16 v7, 0x20

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->loadAttachment(JJJI)V

    goto :goto_4

    :cond_f
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    goto/16 :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->onPostExecute([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 2

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onPostExecute : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V

    :cond_3
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onPostExecute : return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :cond_5
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onPostExecute : end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1102(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DownloadAttachmentAllTask"

    const-string v3, "DownloadAttachmentAllTask - onProgressUpdate : start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DownloadAttachmentAllTask"

    const-string v3, "DownloadAttachmentAllTask - onProgressUpdate : return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    aget-object v0, p1, v4

    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    :try_start_0
    iget-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v0, 0x0

    aput-object v5, p1, v4

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DownloadAttachmentAllTask"

    const-string v3, "DownloadAttachmentAllTask - onProgressUpdate : end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v0, 0x0

    aput-object v5, p1, v4

    throw v2
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method
