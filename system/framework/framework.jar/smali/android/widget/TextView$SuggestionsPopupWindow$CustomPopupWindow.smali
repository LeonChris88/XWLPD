.class Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;
.super Landroid/widget/PopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomPopupWindow"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$SuggestionsPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/TextView$SuggestionsPopupWindow;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$PositionListener;->removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V

    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v1, v1, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-static {v1}, Landroid/widget/TextView$SuggestionsPopupWindow;->access$3100(Landroid/widget/TextView$SuggestionsPopupWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->show()V

    :cond_0
    return-void
.end method
