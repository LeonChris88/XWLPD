.class Lcom/android/email/activity/ThreePaneLayout$1;
.super Ljava/lang/Object;
.source "ThreePaneLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ThreePaneLayout;->controlRightSplitBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ThreePaneLayout;

.field final synthetic val$splitPoint:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/ThreePaneLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/ThreePaneLayout$1;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    iput p2, p0, Lcom/android/email/activity/ThreePaneLayout$1;->val$splitPoint:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout$1;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v2}, Lcom/android/email/activity/ThreePaneLayout;->access$000(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout$1;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v2}, Lcom/android/email/activity/ThreePaneLayout;->access$100(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout$1;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v2}, Lcom/android/email/activity/ThreePaneLayout;->access$000(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/email/activity/ThreePaneLayout$1;->val$splitPoint:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout$1;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v2}, Lcom/android/email/activity/ThreePaneLayout;->access$000(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout$1;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v2}, Lcom/android/email/activity/ThreePaneLayout;->access$100(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout$1;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/android/email/activity/ThreePaneLayout$1;->val$splitPoint:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout$1;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v2}, Lcom/android/email/activity/ThreePaneLayout;->access$100(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
