.class Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/activity/MailboxListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxListFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public onAccountSelected(J)V
    .locals 9

    const-wide/16 v3, -0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v1, p1

    move-wide v5, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1100(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method

.method public onCurrentMailboxUpdated(JLjava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1000(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/email/activity/AccountSelectorAdapter;->setMailboxName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1000(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/email/activity/AccountSelectorAdapter;->setUnreadCount(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/email/activity/MessageListFragment;->setTotalCountFromMailbox(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1000(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onMailboxSelected(JJLjava/lang/String;II)V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    move-wide v1, p3

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$900(Lcom/android/email/activity/MessageListXL;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1000(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/android/email/activity/AccountSelectorAdapter;->setUnreadCount(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/android/email/activity/MessageListFragment;->setTotalCountFromMailbox(I)V

    return-void
.end method

.method public setAllMailboxCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$1202(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->checkAvailableMailboxToMove()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$1202(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->checkAvailableMailboxToMove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$1202(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public setTotalCountFromMailbox(IZ)V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListFragment;->setTotalCountFromMailbox(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    const-wide/16 v1, -0x2

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    :cond_0
    return-void
.end method
