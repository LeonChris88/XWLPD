.class Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmimeHandlerTask"
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
.field private mContinueSmimeHandling:Z

.field private mDownloadedAttachmentId:J

.field private mMessageToProcess:Lcom/android/emailcommon/provider/EmailContent$Message;

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;J)V
    .locals 2

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mContinueSmimeHandling:Z

    iput-wide p2, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mDownloadedAttachmentId:J

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$12200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$12300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->isActiveResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$12200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$12300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->addResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 2

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mMessageToProcess:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mMessageToProcess:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$5400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/email/SMIMEHelperUtils;->getSMIMEUtils(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/email/Controller;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/email/activity/MessageCompose;->access$12202(Lcom/android/email/activity/MessageCompose;Lcom/android/email/SMIMEHelperUtils;)Lcom/android/email/SMIMEHelperUtils;

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$12200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$12300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->isActiveResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$12200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$12300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->addResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mContinueSmimeHandling:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$12200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mDownloadedAttachmentId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$12400(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$8800(Lcom/android/email/activity/MessageCompose;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/SMIMEHelperUtils;->continueHandlingSmimeMessage(JJZ)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$12200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mMessageToProcess:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->handleSmimeMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$12200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$12300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->removeResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V

    return-void
.end method
