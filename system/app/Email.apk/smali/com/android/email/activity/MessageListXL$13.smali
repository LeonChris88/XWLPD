.class Lcom/android/email/activity/MessageListXL$13;
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

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListXL;->access$4702(Lcom/android/email/activity/MessageListXL;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x10001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
