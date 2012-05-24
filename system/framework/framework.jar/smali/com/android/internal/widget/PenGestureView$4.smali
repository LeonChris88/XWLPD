.class Lcom/android/internal/widget/PenGestureView$4;
.super Ljava/lang/Object;
.source "PenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/PenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/PenGestureView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-static {v0}, Lcom/android/internal/widget/PenGestureView;->access$400(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PenGestureView;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PEN_GESTURE_PENMEMO_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/widget/PenGestureView;->access$502(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-static {v0}, Lcom/android/internal/widget/PenGestureView;->access$600(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-static {v1}, Lcom/android/internal/widget/PenGestureView;->access$500(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/widget/PenGestureView;->access$702(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-static {v0}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "application/vnd.diotek.papermemo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-static {v0}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-static {v0}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_secure_enabled"

    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-static {v2}, Lcom/android/internal/widget/PenGestureView;->access$800(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-static {v0}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_lockscreen_showing"

    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-static {v2}, Lcom/android/internal/widget/PenGestureView;->access$900(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "PenGesture"

    const-string v1, "Double tapped."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-static {v0}, Lcom/android/internal/widget/PenGestureView;->access$1000(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-static {v1}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
