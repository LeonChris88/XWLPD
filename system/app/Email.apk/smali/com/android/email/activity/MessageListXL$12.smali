.class Lcom/android/email/activity/MessageListXL$12;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->setLayoutAnim_slideSideToSide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4700(Lcom/android/email/activity/MessageListXL;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$5000(Lcom/android/email/activity/MessageListXL;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->clearFocus()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$5100(Lcom/android/email/activity/MessageListXL;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListXL;->access$4702(Lcom/android/email/activity/MessageListXL;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListXL;->access$4702(Lcom/android/email/activity/MessageListXL;Z)Z

    return-void
.end method
