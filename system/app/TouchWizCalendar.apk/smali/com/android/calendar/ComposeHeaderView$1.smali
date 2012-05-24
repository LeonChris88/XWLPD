.class Lcom/android/calendar/ComposeHeaderView$1;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ComposeHeaderView;-><init>(Lcom/android/calendar/EditEvent;Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ComposeHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/ComposeHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v1, v4}, Lcom/android/calendar/ComposeHeaderView;->access$102(Lcom/android/calendar/ComposeHeaderView;Z)Z

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->resumeQuery()V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$400(Lcom/android/calendar/ComposeHeaderView;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$500(Lcom/android/calendar/ComposeHeaderView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$500(Lcom/android/calendar/ComposeHeaderView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$600(Lcom/android/calendar/ComposeHeaderView;)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$700(Lcom/android/calendar/ComposeHeaderView;)Lcom/android/calendar/ToBtnLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/ToBtnLayout;->requestLayout()V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->pauseQuery()V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$400(Lcom/android/calendar/ComposeHeaderView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v1, v4}, Lcom/android/calendar/ComposeHeaderView;->access$402(Lcom/android/calendar/ComposeHeaderView;Z)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/android/calendar/ComposeHeaderView;->access$800(Lcom/android/calendar/ComposeHeaderView;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$300(Lcom/android/calendar/ComposeHeaderView;)V

    goto :goto_0
.end method
