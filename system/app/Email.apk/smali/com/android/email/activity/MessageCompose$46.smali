.class Lcom/android/email/activity/MessageCompose$46;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field result:I

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$46;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageCompose$46;->result:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 13

    const/4 v10, 0x0

    const/4 v12, 0x0

    new-instance v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$46;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v3, v9, v10}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v10, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean v12, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$46;->this$0:Lcom/android/email/activity/MessageCompose;

    aget-object v10, p1, v12

    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$7000(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v9

    iput-object v9, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    const/4 v5, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$46;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v9}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v10, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    const/16 v8, 0x27

    const/16 v1, 0x27

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v8, v7, :cond_0

    move v8, v7

    :cond_0
    if-le v1, v6, :cond_1

    move v1, v6

    :cond_1
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$46;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_0
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    aput-object v3, v9, v12

    invoke-virtual {p0, v9}, Lcom/android/email/activity/MessageCompose$46;->publishProgress([Ljava/lang/Object;)V

    iget v9, p0, Lcom/android/email/activity/MessageCompose$46;->result:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9

    :catch_0
    move-exception v0

    const-string v9, "Compose >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: doInBackground(),File not found \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x8

    iput v9, p0, Lcom/android/email/activity/MessageCompose$46;->result:I

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v9, "Compose >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: doInBackground().Thumnail Out of Memory \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v9, "Compose >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: doInBackground().Illegal Argument \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$46;->doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$46;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$46;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$46;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v1, p0, Lcom/android/email/activity/MessageCompose$46;->result:I

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$6300(Lcom/android/email/activity/MessageCompose;I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$46;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$46;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$46;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$46;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$46;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f080504

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$46;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$46;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$46;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lcom/android/email/activity/MessageCompose$46;->result:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$46;->this$0:Lcom/android/email/activity/MessageCompose;

    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aget-object v3, p1, v5

    iget-object v3, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    aget-object v4, p1, v5

    iget-boolean v4, v4, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/email/activity/MessageCompose;->access$6200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageCompose$46;->result:I

    aget-object v0, p1, v5

    iput-object v6, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aput-object v6, p1, v5

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$46;->onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
