.class Lcom/android/email/activity/MessageCompose$MessageComposeListener;
.super Lcom/android/email/Controller$Result;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageComposeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$MessageComposeListener;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method public refreshIRMTemplatesCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x64

    if-ne p4, v0, :cond_3

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$11402(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$11600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$11402(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$11600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    goto/16 :goto_0
.end method
