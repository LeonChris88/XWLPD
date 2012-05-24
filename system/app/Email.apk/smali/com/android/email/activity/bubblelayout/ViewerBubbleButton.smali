.class public Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;
.super Landroid/widget/Button;
.source "ViewerBubbleButton.java"


# instance fields
.field private mData:Lcom/android/email/activity/bubblelayout/BubbleData;

.field private mExpectedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-direct {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->initButton()V

    return-void
.end method

.method private initButton()V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v3, 0x7f02025d

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setBackgroundResource(I)V

    const/high16 v3, 0x41c0

    invoke-virtual {p0, v5, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setTextColor(I)V

    invoke-virtual {p0, v6, v5, v6, v5}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setPadding(IIII)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setSingleLine(Z)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x2e

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 v3, 0x12c

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setMaxWidth(I)V

    const/4 v3, 0x4

    invoke-virtual {v1, v5, v3, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    return-object v0
.end method

.method public getExpectedWidth()I
    .locals 4

    const/16 v3, 0x12c

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    :cond_0
    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    if-le v0, v3, :cond_1

    iput v3, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    :cond_1
    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->mExpectedWidth:I

    return v0
.end method
