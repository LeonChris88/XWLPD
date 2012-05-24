.class Lcom/sec/android/app/calculator/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;


# static fields
.field private static disText:Ljava/lang/String;


# instance fields
.field equal:I

.field historyCount:[I

.field mCheck:Z

.field mDisplay:Landroid/widget/EditText;

.field mDisplaySelectAll:Z

.field mDisplaySelectionE:I

.field mDisplaySelectionS:I

.field mEnd:I

.field mHandler:Lcom/sec/android/app/calculator/EventHandler;

.field mHisScreen:Landroid/widget/EditText;

.field mHistory:Lcom/sec/android/app/calculator/History;

.field mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

.field mStart:I

.field mdisCheck:Z

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/calculator/EventListener;->mCheck:Z

    iput-boolean v1, p0, Lcom/sec/android/app/calculator/EventListener;->mdisCheck:Z

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->historyCount:[I

    iput v1, p0, Lcom/sec/android/app/calculator/EventListener;->mStart:I

    iput v1, p0, Lcom/sec/android/app/calculator/EventListener;->mEnd:I

    iput-boolean v1, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectAll:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private clearSB()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private isSkippingBtn(I)Z
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_1
    const/4 v0, 0x1

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventListener;->clearBlocks()V

    move v1, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f05000b
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clearBlocks()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/calculator/EventListener;->mStart:I

    iput v1, p0, Lcom/sec/android/app/calculator/EventListener;->mEnd:I

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v2

    if-ne v2, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/calculator/EventListener;->isSkippingBtn(I)Z

    move-result v2

    if-ne v2, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/sec/android/app/calculator/EventListener;->mStart:I

    iget v3, p0, Lcom/sec/android/app/calculator/EventListener;->mEnd:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/calculator/EventListener;->mStart:I

    iget v4, p0, Lcom/sec/android/app/calculator/EventListener;->mEnd:I

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->getFrontText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/sec/android/app/calculator/Cmyfunc;->whereLastToken(Ljava/lang/String;Z)I

    move-result v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->isOpenedSignParenthesis()Z

    move-result v2

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->closeSignParenthesis()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/calculator/EventHandler;->insert(Ljava/lang/StringBuilder;)V

    :cond_3
    sparse-switch v0, :sswitch_data_0

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget v2, v2, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventListener;->clearBlocks()V

    invoke-direct {p0}, Lcom/sec/android/app/calculator/EventListener;->clearSB()V

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onEnter()V

    goto/16 :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onClear()V

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onBackspace()V

    goto/16 :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onParenthesis()V

    goto/16 :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onDecimal()V

    goto/16 :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onPlusMinus()V

    goto/16 :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onFraction()V

    goto/16 :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onAbs()V

    goto/16 :goto_1

    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_f
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_12
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_13
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "\u2212"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_14
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "\u00d7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_15
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "\u00f7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_16
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "\u221a("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_17
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_18
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_19
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "sin("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_1a
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "tan("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_1b
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "cos("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_1c
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "log("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_1d
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "ln("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_1e
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "e^("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_1f
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "^(2)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_20
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "^("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_21
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "\u03c0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_22
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x7f05000a
        :pswitch_1
        :pswitch_15
        :pswitch_14
        :pswitch_2
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_12
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1c
        :pswitch_1b
        :pswitch_1d
        :pswitch_1a
        :pswitch_6
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_7
        :pswitch_21
        :pswitch_22
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7f050004 -> :sswitch_0
        0x7f050005 -> :sswitch_0
        0x7f05001d -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeypressClick(C)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->insert(Ljava/lang/StringBuilder;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/calculator/EventHandler;->insertKeyBoard(C)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/calculator/EventListener;->clearSB()V

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->getmContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f05000d

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v2, v2, Lcom/sec/android/app/calculator/EventHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPanelClicked(Lcom/sec/android/widgetapp/calculator/Panel;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectAll:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->setAniEnd(Z)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isDisplayScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isHistoryScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->setOpenClick(Z)V

    goto :goto_0
.end method

.method public onPanelClosed(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventListener;->updateHistory()V

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onPanelClosedForConfig()V
    .locals 10

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/calculator/EventListener;->equal:I

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v6, v6, Lcom/sec/android/app/calculator/History;->mPos:I

    const/16 v8, 0xa

    if-ne v6, v8, :cond_0

    const/4 v5, 0x1

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6}, Lcom/sec/android/app/calculator/EventHandler;->isCheckResult()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v1, ""

    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v5

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v6, v6, Lcom/sec/android/app/calculator/History;->mPos:I

    if-ge v2, v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/calculator/History;->current(I)Lcom/sec/android/app/calculator/HistoryEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/calculator/HistoryEntry;->getBase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/calculator/History;->current(I)Lcom/sec/android/app/calculator/HistoryEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/calculator/HistoryEntry;->getEdited()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v6, v6, Lcom/sec/android/app/calculator/History;->mPos:I

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_4

    const-string v6, ""

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v6, p0, Lcom/sec/android/app/calculator/EventListener;->equal:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    iget v6, p0, Lcom/sec/android/app/calculator/EventListener;->equal:I

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_0

    :cond_4
    const-string v6, "\n\n"

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_8

    const-string v3, ""

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v8, v4}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    if-nez v0, :cond_7

    move v0, v7

    :cond_7
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_8
    const-string v3, "\n\n"

    goto :goto_3
.end method

.method public onPanelOpened(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    iget v1, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    iget v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v3, v6}, Lcom/sec/android/widgetapp/calculator/Panel;->setAniEnd(Z)V

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-le v1, v0, :cond_1

    move v1, v0

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-le v2, v0, :cond_3

    move v2, v0

    :cond_3
    if-eq v1, v2, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventHandler;->showCursor()V

    iget-boolean v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectAll:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/calculator/EventHandler;->setSelectingAll(Z)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/calculator/Panel;->setOpenClick(Z)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    new-instance v4, Lcom/sec/android/app/calculator/EventListener$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/calculator/EventListener$1;-><init>(Lcom/sec/android/app/calculator/EventListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method setHandler(Lcom/sec/android/app/calculator/EventHandler;Lcom/sec/android/widgetapp/calculator/Panel;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/sec/android/app/calculator/History;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iput-object p2, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    iput-object p5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iput-object p4, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->forceHideSoftInput(Z)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->forceHideSoftInput(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    iput v0, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    return-void
.end method

.method public updateHistory()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/calculator/EventListener;->disText:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/calculator/EventListener;->disText:Ljava/lang/String;

    const/16 v5, 0x3d

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/calculator/EventListener;->equal:I

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v5, v5, Lcom/sec/android/app/calculator/History;->mPos:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v4

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v5, v5, Lcom/sec/android/app/calculator/History;->mPos:I

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/calculator/History;->current(I)Lcom/sec/android/app/calculator/HistoryEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/calculator/HistoryEntry;->getBase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/calculator/History;->current(I)Lcom/sec/android/app/calculator/HistoryEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/calculator/HistoryEntry;->getEdited()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v5, v5, Lcom/sec/android/app/calculator/History;->mPos:I

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    const-string v5, ""

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v1, ""

    goto :goto_0

    :cond_2
    const-string v5, "\n\n"

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-boolean v5, v5, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-boolean v5, v5, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget v5, v5, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_7

    const-string v5, ""

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6, v3}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_7
    const-string v5, "\n\n"

    goto :goto_3
.end method
