.class public Lcom/android/email/activity/MessageWebView;
.super Landroid/webkit/WebView;
.source "MessageWebView.java"


# instance fields
.field private final CHANGE_MIN_VALUE:I

.field public final MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

.field private final TIME_MESSAGE_DELAY:J

.field private mCurScale:F

.field private mEmailWebViewContentHeight:I

.field private mHandler:Landroid/os/Handler;

.field private mInvScale:F

.field private mIsSelectedCursor:Z

.field private mIsTouchDown:Z

.field private mPinchZoomEndScale:F

.field private mPinchZoomStartScale:F

.field private mPrevHeight:I

.field private mScrollMain:Landroid/widget/ScrollView;

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    iput-boolean v3, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->CHANGE_MIN_VALUE:I

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->TIME_MESSAGE_DELAY:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    const-string v0, "MessageWebView"

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    iput-boolean v3, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->CHANGE_MIN_VALUE:I

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->TIME_MESSAGE_DELAY:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    const-string v0, "MessageWebView"

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    iput-boolean v3, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->CHANGE_MIN_VALUE:I

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->TIME_MESSAGE_DELAY:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    const-string v0, "MessageWebView"

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->initialize()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    iput-boolean v3, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->CHANGE_MIN_VALUE:I

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->TIME_MESSAGE_DELAY:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    const-string v0, "MessageWebView"

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    iput-boolean v3, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->CHANGE_MIN_VALUE:I

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->TIME_MESSAGE_DELAY:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    const-string v0, "MessageWebView"

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageWebView;)F
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/MessageWebView;F)F
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageWebView;)F
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageWebView;F)F
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/email/activity/MessageWebView;F)F
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageWebView;)F
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/MessageWebView;F)F
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    return p1
.end method

.method private isSelectedCursor(FF)Z
    .locals 8

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v2

    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_0

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    const/high16 v6, 0x3f80

    div-float/2addr v6, v2

    iput v6, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    :cond_0
    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mScrollX:I

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mScrollY:I

    add-int/2addr v6, v5

    int-to-float v6, v6

    iget v7, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageWebView;->isSelectionHandleSelected(II)Z

    move-result v3

    return v3
.end method

.method private declared-synchronized removeMessages(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessageDelayed(IJ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected computeVerticalScrollRange()I
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public getIsSelectedCursor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    return v0
.end method

.method public getcomputeHorizontalScrollExtent()I
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public getcomputeHorizontalScrollOffset()I
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public getcomputeHorizontalScrollRange()I
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 2

    iget-object v1, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/email/activity/MessageWebView$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageWebView$1;-><init>(Lcom/android/email/activity/MessageWebView;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    :cond_0
    move-object v0, p0

    new-instance v1, Lcom/android/email/activity/MessageWebView$2;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageWebView$2;-><init>(Lcom/android/email/activity/MessageWebView;Lcom/android/email/activity/MessageWebView;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    return-void
.end method

.method public onScaleChangeWebView()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getContentHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v3

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    iget v5, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    :goto_0
    const/16 v4, 0xbe

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v4, "MessageWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScaleChangeWebView() - contentHeight ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mEmailWebViewContentHeight ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] scale ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mPinchZoomStartScale ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v1, :cond_1

    const-string v4, "MessageWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScaleChangeWebView() - prev ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] new ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const-wide/16 v4, 0x3c

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageWebView;->setSizeChangeWebView(J)V

    iget v4, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    iput v4, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    return-void

    :cond_0
    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    goto/16 :goto_0

    :cond_1
    const-string v4, "MessageWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScaleChangeWebView() - cur ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onScrollChangeWebView()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollRange()I

    move-result v3

    const/16 v4, 0xbe

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v1, :cond_1

    const-string v3, "MessageWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScrollChangeWebView() - prev ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] new ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "MessageWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScrollChangeWebView() - cur ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public onSizeChangeWebView()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollRange()I

    move-result v6

    const/16 v7, 0xbe

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    sub-int v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v1, :cond_1

    const-string v6, "MessageWebView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSizeChangeWebView() - prev ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] new ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->setSizeChangeWebView()V

    const-string v6, "MessageWebView"

    const-string v7, "onSizeChangeWebView() - bChange false -> recheck"

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollExtent()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollOffset()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollRange()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getScrollY()I

    move-result v6

    if-nez v6, :cond_3

    sub-int v6, v5, v3

    if-ne v6, v4, :cond_3

    const-string v6, "MessageWebView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSizeChangeWebView() - cur ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->setSizeChangeWebView()V

    const-string v6, "MessageWebView"

    const-string v7, "onSizeChangeWebView() - bChange false -> recheck"

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    iget v1, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "MessageWebView"

    const-string v1, "onSizeChanged() - call setSizeChangeWebView()"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->setSizeChangeWebView()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-boolean v6, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    if-ne v6, v7, :cond_1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    return v7

    :pswitch_1
    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mStartX:F

    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mStartY:F

    iput-boolean v7, p0, Lcom/android/email/activity/MessageWebView;->mIsTouchDown:Z

    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mStartY:F

    invoke-virtual {p1, v1, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageWebView;->isSelectedCursor(FF)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :pswitch_2
    iget-boolean v6, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    if-ne v6, v7, :cond_0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/email/activity/MessageWebView;->mIsTouchDown:Z

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mStartY:F

    invoke-virtual {p1, v1, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    :cond_1
    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mStartY:F

    invoke-virtual {p1, v1, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resetMessageWebView()V
    .locals 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mStartY:F

    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mStartX:F

    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    iput-boolean v0, p0, Lcom/android/email/activity/MessageWebView;->mIsTouchDown:Z

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    iput-boolean v0, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    return-void
.end method

.method public setEmailWebViewContentHeight(I)V
    .locals 2

    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    return-void
.end method

.method public setInitScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    return-void
.end method

.method public setScaleChangeWebView()V
    .locals 2

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageWebView;->setScaleChangeWebView(J)V

    return-void
.end method

.method public setScaleChangeWebView(J)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageWebView;->removeMessages(I)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/email/activity/MessageWebView;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public setScrollViewMain(Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageWebView;->mScrollMain:Landroid/widget/ScrollView;

    return-void
.end method

.method public setSizeChangeWebView()V
    .locals 2

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageWebView;->setSizeChangeWebView(J)V

    return-void
.end method

.method public setSizeChangeWebView(J)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageWebView;->removeMessages(I)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/email/activity/MessageWebView;->sendMessageDelayed(IJ)V

    return-void
.end method
