.class Lcom/android/email/activity/MailboxList$MailboxListHandler;
.super Landroid/os/Handler;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1

    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$2100(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$2100(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$2100(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$2200(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    move v0, v2

    :goto_2
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$2200(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$2200(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$2200(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    const v6, 0x7f050007

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v4, v4, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v5, 0x32c8

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$2200(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$2200(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    const v6, 0x7f050008

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v5, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public progress(Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showErrorBanner(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
