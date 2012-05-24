.class Lcom/android/email/activity/MailboxListFragment$5;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v4, -0x1

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$502(I)I

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4, v8}, Lcom/android/email/activity/MailboxListFragment;->access$302(Lcom/android/email/activity/MailboxListFragment;Z)Z

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f080035

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v6, 0x7f080502

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/activity/MailboxListFragment;->access$900(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$1000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "eas"

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/email/Controller;->deleteFolder(J)Landroid/os/AsyncTask;

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v6}, Lcom/android/email/activity/MailboxListFragment;->access$1200(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v5}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v6}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v6

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/MailboxListFragment;->access$1302(Lcom/android/email/activity/MailboxListFragment;J)J

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1300(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/email/activity/MailboxListFragment;->setSelectedMailbox(JZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$1000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "imap"

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxesAdapter;->getDeleteMode()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxesAdapter;->getSelectedSet()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4, v1}, Lcom/android/email/activity/MailboxListFragment;->access$1500(Lcom/android/email/activity/MailboxListFragment;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v5}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v6}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v6

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/MailboxListFragment;->access$1302(Lcom/android/email/activity/MailboxListFragment;J)J

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1300(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/email/activity/MailboxListFragment;->setSelectedMailbox(JZ)V

    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/email/activity/MailboxesAdapter;->setDeleteMode(Z)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/MailboxListFragment;->access$1600(Lcom/android/email/activity/MailboxListFragment;J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v5}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v6}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v6

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/MailboxListFragment;->access$1302(Lcom/android/email/activity/MailboxListFragment;J)J

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1300(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/email/activity/MailboxListFragment;->setSelectedMailbox(JZ)V

    goto/16 :goto_0
.end method
