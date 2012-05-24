.class Lcom/android/email/activity/MessageCompose$26$1;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$26;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/widget/LinearLayout;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$26;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$26;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$26$1;->this$1:Lcom/android/email/activity/MessageCompose$26;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$26$1;->doInBackground([Landroid/widget/LinearLayout;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/widget/LinearLayout;)Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x0

    aget-object v3, p1, v6

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    new-array v0, v1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v6

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aput-object v3, v0, v2

    const-string v3, "com.android.email.intent.action.FORWARD"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$26$1;->this$1:Lcom/android/email/activity/MessageCompose$26;

    iget-object v4, v4, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$26$1;->this$1:Lcom/android/email/activity/MessageCompose$26;

    iget-object v4, v4, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    aget-object v3, v0, v2

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$26$1;->this$1:Lcom/android/email/activity/MessageCompose$26;

    iget-object v3, v3, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$5400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v3

    aget-object v4, v0, v2

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Controller;->deleteAttachment(J)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$26$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->this$1:Lcom/android/email/activity/MessageCompose$26;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$9600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->this$1:Lcom/android/email/activity/MessageCompose$26;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$2800(Lcom/android/email/activity/MessageCompose;Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->this$1:Lcom/android/email/activity/MessageCompose$26;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$9700(Lcom/android/email/activity/MessageCompose;Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->this$1:Lcom/android/email/activity/MessageCompose$26;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$8202(Lcom/android/email/activity/MessageCompose;I)I

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->this$1:Lcom/android/email/activity/MessageCompose$26;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$9802(Lcom/android/email/activity/MessageCompose;I)I

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$26$1;->this$1:Lcom/android/email/activity/MessageCompose$26;

    iget-object v1, v1, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$26$1;->this$1:Lcom/android/email/activity/MessageCompose$26;

    iget-object v1, v1, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f080343

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$26$1;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
