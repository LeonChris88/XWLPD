.class Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageListFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public onComposeFromMessageListFragment()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1300(Lcom/android/email/activity/MessageListXL;)Z

    return-void
.end method

.method public onConversationMoveAlways([J[Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$1700(Lcom/android/email/activity/MessageListXL;[J[Ljava/lang/String;I)V

    return-void
.end method

.method public onEnterSelectionMode(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public onFollowUpViewShown()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->showFollowUpFlag()V

    return-void
.end method

.method public onForward(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    return-void
.end method

.method public onMailBoxList()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onMailBoxList()Z

    return-void
.end method

.method public onMailboxNotFound()V
    .locals 0

    return-void
.end method

.method public onMessageOpen(JJJI)V
    .locals 2

    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->clearSelection()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->clearSelection()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    sget v1, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    goto :goto_0
.end method

.method public onMoveMessages([J)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$1600(Lcom/android/email/activity/MessageListXL;[J)V

    return-void
.end method

.method public onRefreshFromMessageListFragment()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onRefreshFromFragment()Z

    return-void
.end method

.method public onReply(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    return-void
.end method

.method public onReplyAll(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    return-void
.end method

.method public onSearchFromMessageListFragment()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    return-void
.end method

.method public refreshAllAccount()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onRefresh()V

    return-void
.end method

.method public setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$1802(Lcom/android/email/activity/MessageListXL;Z)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p2}, Lcom/android/email/activity/MessageListXL;->access$1902(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListItem;)Lcom/android/email/activity/MessageListItem;

    return-void
.end method

.method public setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListSubTitleItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$2002(Lcom/android/email/activity/MessageListXL;Z)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p2}, Lcom/android/email/activity/MessageListXL;->access$2102(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListSubTitleItem;)Lcom/android/email/activity/MessageListSubTitleItem;

    return-void
.end method

.method public setTimeFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$2202(Lcom/android/email/activity/MessageListXL;Ljava/text/DateFormat;)Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p3}, Lcom/android/email/activity/MessageListXL;->access$2302(Lcom/android/email/activity/MessageListXL;Ljava/text/DateFormat;)Ljava/text/DateFormat;

    return-void
.end method
