.class Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;
.super Landroid/os/Handler;
.source "AccountSettingsOutOfOfficeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v2, 0x64

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$600(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$600(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08035b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$900(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080354

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0, v5}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$900(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08035a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    const v3, 0x7f080343

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$602(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800b4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080356

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
