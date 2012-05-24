.class Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;",
        "[",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field bCheckedLoadAttachment:Z

.field bEnableShow:Z

.field htmlChanged:Z

.field info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

.field isAddingAttachment:Z

.field mLoadAttach:Z

.field numDisplayedAttachments:I

.field numProcessed:I

.field numPublished:I

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->htmlChanged:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bCheckedLoadAttachment:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bEnableShow:Z

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    aget-object v8, p1, v11

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setClickable(Z)V

    move-object v0, v2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v7, v8, v6}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-object v1, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-object v6, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-boolean v11, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-boolean v11, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->isLoaded:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v2, v6

    :goto_1
    return-object v2

    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-boolean v12, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->isLoaded:Z

    :cond_1
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-boolean v7, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->isLoaded:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4200(Lcom/android/email/activity/MessageViewFragmentBase;J)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    :cond_2
    new-array v7, v12, [Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    aput-object v8, v7, v11

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->publishProgress([Ljava/lang/Object;)V

    iget v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    iget v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    iget v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    add-int/lit8 v8, v8, 0x5

    if-le v7, v8, :cond_3

    const-wide/16 v7, 0x64

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v2, v6

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4700(Lcom/android/email/activity/MessageViewFragmentBase;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Email"

    const-string v1, "onPostExecute : LoadAttachmentTask is already is canceled!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    :goto_0
    invoke-virtual {v0, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDestoryStart:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mEmbeddedImageDownload:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4802(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->htmlChanged:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4802(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v1, "email://"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewForSeven;->startDownloadEmbeddedAttachments(JJ)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v1, v2, v9}, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4902(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Email"

    const-string v2, "onProgressUpdate : LoadAttachmentTask is already is canceled!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bCheckedLoadAttachment:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    :goto_1
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bCheckedLoadAttachment:Z

    :cond_1
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bEnableShow:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1, v2, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bEnableShow:Z

    :cond_2
    aget-object v1, p1, v5

    iget-object v0, v1, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    :goto_2
    const/4 v0, 0x0

    aput-object v6, p1, v5

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mFileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mMimeType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mContentId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mContentUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mMessageKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mLocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mEncoding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mContent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mFlags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mContentBytes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mAccountKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mVoiceMailAttOrder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mVoiceMailAttOrder:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mVoiceMailAttDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mVoiceMailAttDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment isInline:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    :cond_6
    :goto_3
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_13

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4500(Lcom/android/email/activity/MessageViewFragmentBase;I)V

    :goto_4
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4600(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    const/4 v0, 0x0

    aput-object v6, p1, v5

    throw v1

    :cond_7
    :try_start_2
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    :cond_8
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    if-nez v1, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    :cond_b
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v2, "@namo.co.kr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    :cond_c
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseInlineTag()Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    :cond_d
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    :cond_e
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v2, "@namo.co.kr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    :cond_f
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_10
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    :cond_11
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    :cond_12
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v2, "@namo.co.kr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    :cond_13
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4500(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
