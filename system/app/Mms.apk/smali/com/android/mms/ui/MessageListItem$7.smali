.class Lcom/android/mms/ui/MessageListItem$7;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spannable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast v0, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    if-ne v3, v1, :cond_4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v1, v5

    add-int v5, v2, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    int-to-float v1, v4

    invoke-virtual {v6, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v1, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    if-eqz v1, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    const/4 v10, 0x0

    aget-object v10, v1, v10

    invoke-interface {v0, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, 0x0

    aget-object v1, v1, v11

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v0, v9, v2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v10, v11}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v7, v12}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    if-lt v10, v9, :cond_3

    iget v6, v12, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    sub-int v9, v10, v9

    invoke-interface {v1, v7, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v6

    iput v1, v12, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v1, v6

    iput v1, v12, Landroid/graphics/Rect;->right:I

    :goto_1
    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Landroid/text/Spanned;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {v1, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    if-eqz v1, :cond_5

    array-length v4, v1

    if-lez v4, :cond_5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageListItem;->access$1602(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/ui/MessageListItem;->access$1502(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v10, v11, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->access$1900()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->access$2000()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    iget v1, v12, Landroid/graphics/Rect;->left:I

    sub-int v6, v9, v10

    sub-int v7, v11, v10

    invoke-interface {v2, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v1, v6

    iput v1, v12, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    if-ne v3, v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1600(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageListItem;->access$2100(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageListItem;->access$1502(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0
.end method
