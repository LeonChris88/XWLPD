.class Lcom/android/email/activity/MessageCompose$15;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebTextSelectionControls;->getSelectionCursorRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/email/ExtendedScrollView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/email/ExtendedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/email/ExtendedScrollView;->smoothScrollBy(II)V

    :cond_1
    return-void

    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-nez v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebTextSelectionControls;->getSelectionRegionEndRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method
