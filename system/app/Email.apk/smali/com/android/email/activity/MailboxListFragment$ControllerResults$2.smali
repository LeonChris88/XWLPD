.class Lcom/android/email/activity/MailboxListFragment$ControllerResults$2;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment$ControllerResults;->deactivateSncCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MailboxListFragment$ControllerResults;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment$ControllerResults;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults$2;->this$1:Lcom/android/email/activity/MailboxListFragment$ControllerResults;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MailboxListFragment"

    const-string v1, "deactivateSncCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults$2;->this$1:Lcom/android/email/activity/MailboxListFragment$ControllerResults;

    iget-object v0, v0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Snc deactivated from webportal"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults$2;->this$1:Lcom/android/email/activity/MailboxListFragment$ControllerResults;

    iget-object v0, v0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    return-void
.end method
