.class Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "AccountFolderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountFolderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountFolderListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/AccountFolderListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/AccountFolderListFragment;Lcom/android/email/activity/AccountFolderListFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;-><init>(Lcom/android/email/activity/AccountFolderListFragment;)V

    return-void
.end method


# virtual methods
.method public deleteAccountCallback(Landroid/os/Bundle;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$600(Lcom/android/email/activity/AccountFolderListFragment;)V

    return-void
.end method

.method public deleteAccountFromWebCallback(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$300(Lcom/android/email/activity/AccountFolderListFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - account has been deleted from webportal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$600(Lcom/android/email/activity/AccountFolderListFragment;)V

    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 1

    const/16 v0, 0x64

    if-ne p6, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$600(Lcom/android/email/activity/AccountFolderListFragment;)V

    :cond_0
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 1

    const/16 v0, 0x64

    if-ne p6, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$600(Lcom/android/email/activity/AccountFolderListFragment;)V

    :cond_0
    return-void
.end method
