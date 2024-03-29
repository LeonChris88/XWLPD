.class public Lcom/sec/android/app/camera/widget/TwTickerView;
.super Landroid/widget/TextView;
.source "TwTickerView.java"


# static fields
.field public static final DEFAULT_FONT_SIZE:I = 0x12

.field public static final DELAY:I = 0x190

.field public static final START_TICKER:I = 0x0

.field public static final STOP_TICKER:I = 0x1


# instance fields
.field private mIndex:I

.field private mMessagesInHandler:Z

.field private mText:Ljava/lang/String;

.field private mTextLength:I

.field private mTickerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    new-instance v0, Lcom/sec/android/app/camera/widget/TwTickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTickerView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    new-instance v0, Lcom/sec/android/app/camera/widget/TwTickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTickerView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    new-instance v0, Lcom/sec/android/app/camera/widget/TwTickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTickerView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwTickerView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/widget/TwTickerView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    return p1
.end method

.method static synthetic access$008(Lcom/sec/android/app/camera/widget/TwTickerView;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwTickerView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTextLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/TwTickerView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/widget/TwTickerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    return p1
.end method


# virtual methods
.method public clearText()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwTickerView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startTicker(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTickerView;->stopTicker()V

    const/high16 v0, 0x4190

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/widget/TwTickerView;->startTicker(Ljava/lang/String;F)V

    return-void
.end method

.method public startTicker(Ljava/lang/String;F)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mText:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwTickerView;->setTextSize(F)V

    const/high16 v0, 0x4000

    const/high16 v1, -0x100

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/sec/android/app/camera/widget/TwTickerView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwTickerView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTickerView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTickerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput v3, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTextLength:I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public stopTicker()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    :cond_0
    return-void
.end method
