.class Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentTaskFromUri"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field result:I

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 23

    move-object/from16 v9, p1

    array-length v0, v9

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    aget-object v21, v9, v13

    new-instance v15, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v4, 0x0

    invoke-direct {v15, v3, v4}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    :try_start_0
    const-string v3, "com.quickoffice.mx.samsung"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/activity/MessageCompose;->access$7000(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    iput-object v3, v15, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v20, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, v15, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/activity/MessageCompose;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v15, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    const/16 v22, 0x27

    const/16 v12, 0x27

    if-eqz v10, :cond_1

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v3, v10

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v22

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    move/from16 v22, v19

    :cond_2
    move/from16 v0, v18

    if-le v12, v0, :cond_3

    move/from16 v12, v18

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    move/from16 v0, v22

    invoke-static {v3, v2, v0, v12}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v20

    :cond_4
    :goto_1
    :try_start_2
    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/16 v20, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->publishProgress([Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v11

    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: doInBackground(),File not found \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/16 v20, 0x0

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v17

    :try_start_3
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: doInBackground().Thumnail Out of Memory \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/16 v20, 0x0

    goto :goto_1

    :catch_3
    move-exception v14

    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: doInBackground().Illegal Argument \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$6300(Lcom/android/email/activity/MessageCompose;I)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f080190

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aget-object v3, p1, v4

    iget-object v3, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v4, v3, v4}, Lcom/android/email/activity/MessageCompose;->access$6200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I

    :cond_0
    const/4 v0, 0x0

    aput-object v0, p1, v4

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
