.class Lcom/android/email/activity/MessageListFragment$3;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->initScaleGestureDetector()V
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

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageListFragment;->access$402(Lcom/android/email/activity/MessageListFragment;Z)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$502(Lcom/android/email/activity/MessageListFragment;Z)Z

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$602(Lcom/android/email/activity/MessageListFragment;I)I

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$708(Lcom/android/email/activity/MessageListFragment;)I

    :goto_0
    const-string v0, "MessageListFragment"

    const-string v1, "Multi-touch inprogress"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$608(Lcom/android/email/activity/MessageListFragment;)I

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$702(Lcom/android/email/activity/MessageListFragment;I)I

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$402(Lcom/android/email/activity/MessageListFragment;Z)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$502(Lcom/android/email/activity/MessageListFragment;Z)Z

    const-string v0, "MessageListFragment"

    const-string v1, "Multi-touch start"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$400(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageListFragment;->access$502(Lcom/android/email/activity/MessageListFragment;Z)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageListFragment;->access$402(Lcom/android/email/activity/MessageListFragment;Z)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$600(Lcom/android/email/activity/MessageListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$700(Lcom/android/email/activity/MessageListFragment;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessagesAdapter;->expandOrShinkListItemAll(III)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageListFragment;->access$602(Lcom/android/email/activity/MessageListFragment;I)I

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageListFragment;->access$702(Lcom/android/email/activity/MessageListFragment;I)I

    :cond_0
    const-string v0, "MessageListFragment"

    const-string v1, "Multi-touch End"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
