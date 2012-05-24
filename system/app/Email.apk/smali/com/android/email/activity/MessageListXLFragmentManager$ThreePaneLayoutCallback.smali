.class Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"

# interfaces
.implements Lcom/android/email/activity/ThreePaneLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXLFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreePaneLayoutCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXLFragmentManager;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V

    return-void
.end method


# virtual methods
.method public makeMessageView()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$1000(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$1100()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Z7App"

    const-string v2, "can not open email when MessageId is -1"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLookChanged(Z)V
    .locals 8

    const/4 v7, 0x3

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLookChanged visiblePanes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v7, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setActionBarCustomForMessageList()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListFragment;->setListBackgroundColor(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$800(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MailboxListFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MailboxListFragment;->setDeleteMode(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$900(Lcom/android/email/activity/MessageListXLFragmentManager;)I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v1

    if-eq v1, v7, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$400(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$900(Lcom/android/email/activity/MessageListXLFragmentManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->setFragmentWidth(I)V

    return-void

    :cond_2
    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListFragment;->setListBackgroundColor(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListFragment;->setListBackgroundColor(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$1000(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$1000(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto/16 :goto_0

    :cond_6
    if-ne v0, v5, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListFragment;->setListBackgroundColor(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setActionBarCustomForMessageList()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$800(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MailboxListFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MailboxListFragment;->setDeleteMode(Z)V

    goto/16 :goto_0
.end method

.method public onLookChangedAfterAni()V
    .locals 0

    return-void
.end method

.method public onVisiblePanesChanged(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$400(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$500(Lcom/android/email/activity/MessageListXLFragmentManager;)V

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onFragmentSetHasOptionMenu()V

    return-void
.end method

.method public setLeftSplitType(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListXL;->setLeftSplitType(I)V

    return-void
.end method

.method public setRightSplitType(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListXL;->setRightSplitType(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/activity/MessageListXL;->setRightSplitToPreference(I)V

    return-void
.end method
