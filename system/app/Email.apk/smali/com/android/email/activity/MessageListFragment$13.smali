.class Lcom/android/email/activity/MessageListFragment$13;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5200(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2, p2}, Lcom/android/email/activity/MessageListFragment;->access$4902(Lcom/android/email/activity/MessageListFragment;I)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$ListViewPos;

    move-result-object v2

    iput p2, v2, Lcom/android/email/activity/MessageListFragment$ListViewPos;->mPos:I

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$ListViewPos;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/android/email/activity/MessageListFragment$ListViewPos;->mTop:I

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5400(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq p2, v5, :cond_1

    if-nez p2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5500(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5100(Lcom/android/email/activity/MessageListFragment;)I

    move-result v2

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2, v4}, Lcom/android/email/activity/MessageListFragment;->setSelection(I)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    add-int/lit8 v2, p4, -0x20

    if-ge v2, p2, :cond_4

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5800(Lcom/android/email/activity/MessageListFragment;)I

    move-result v2

    if-ge v2, p2, :cond_6

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2, v5}, Lcom/android/email/activity/MessageListFragment;->access$5902(Lcom/android/email/activity/MessageListFragment;Z)Z

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2, p2}, Lcom/android/email/activity/MessageListFragment;->access$5802(Lcom/android/email/activity/MessageListFragment;I)I

    if-ge p2, v4, :cond_7

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string v2, "MessageListFragment"

    const-string v3, "U1"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5600(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    const-string v2, "MessageListFragment"

    const-string v3, "U2"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v2, v2, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5500(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "MessageListFragment"

    const-string v3, "U3"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    const-string v2, "MessageListFragment"

    const-string v3, "U5"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->onRelease()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5800(Lcom/android/email/activity/MessageListFragment;)I

    move-result v2

    if-eq v2, p2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2, v6}, Lcom/android/email/activity/MessageListFragment;->access$5902(Lcom/android/email/activity/MessageListFragment;Z)Z

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$6000(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$6100(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5000(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    const-string v2, "MessageListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScroll() last = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , total = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5900(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-eq v2, v5, :cond_8

    add-int/lit8 v2, p4, -0x1

    if-ne v0, v2, :cond_4

    :cond_8
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2, v6}, Lcom/android/email/activity/MessageListFragment;->access$5902(Lcom/android/email/activity/MessageListFragment;Z)Z

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->onFlickUp()V

    const-string v2, "scroll"

    const-string v3, "onFlickUp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, p2}, Lcom/android/email/activity/MessageListFragment;->access$5102(Lcom/android/email/activity/MessageListFragment;I)I

    return-void
.end method
