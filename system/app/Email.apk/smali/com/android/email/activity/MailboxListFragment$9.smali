.class Lcom/android/email/activity/MailboxListFragment$9;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$9;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v0, p3}, Lcom/android/email/activity/MailboxListFragment;->access$1802(Lcom/android/email/activity/MailboxListFragment;I)I

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$9;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getServerId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$9;->this$0:Lcom/android/email/activity/MailboxListFragment;

    new-instance v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$9;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$9;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxListFragment;JLjava/lang/String;I)V

    invoke-static {v6, v0}, Lcom/android/email/activity/MailboxListFragment;->access$2002(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;)Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$9;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$2000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
