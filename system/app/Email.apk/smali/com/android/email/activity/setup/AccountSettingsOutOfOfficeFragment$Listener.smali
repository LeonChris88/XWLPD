.class Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;
.super Lcom/android/email/Controller$Result;
.source "AccountSettingsOutOfOfficeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    const-string v2, "OoOSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inside OoOCallback result ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2, v6}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2302(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;I)I

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    if-ne v2, v7, :cond_4

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const/16 v2, 0x64

    if-ne p4, v2, :cond_7

    if-eqz p5, :cond_6

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_7
    if-nez p4, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0

    return-void
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .locals 0

    return-void
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0

    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V
    .locals 0

    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0

    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 0

    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 0

    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0

    return-void
.end method
