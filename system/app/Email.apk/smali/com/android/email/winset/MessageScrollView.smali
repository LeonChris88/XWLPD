.class public Lcom/android/email/winset/MessageScrollView;
.super Landroid/widget/ScrollView;
.source "MessageScrollView.java"


# instance fields
.field public final MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

.field private final TIME_BUTTON_AINIMATION:J

.field private final TIME_BUTTON_DISABLE:J

.field private mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mInMessageView:Z

.field private mIsBottom:Z

.field private mIsMessageTab:Z

.field private mIsScrollChange:Z

.field private mIsShowLinearlayoutToTheTop:Z

.field private mIsTouchDown:Z

.field private mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

.field private mMessageWebView:Lcom/android/email/activity/MessageWebView;

.field private mPrevScrollY:I

.field private mResetView:Z

.field private mStartX:F

.field private mStartY:F

.field private mToMessageTab:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_AINIMATION:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_DISABLE:J

    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    const-string v0, "MessageScrollView"

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_AINIMATION:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_DISABLE:J

    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    const-string v0, "MessageScrollView"

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_AINIMATION:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_DISABLE:J

    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    const-string v0, "MessageScrollView"

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->initialize()V

    return-void
.end method

.method private inMessageWebView(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getBottom()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private declared-synchronized removeMessages(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

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
.method public ShowToTheTopButton(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(ZZ)V

    return-void
.end method

.method public ShowToTheTopButton(ZZ)V
    .locals 7

    const-wide/16 v5, 0x15e

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsShowLinearlayoutToTheTop:Z

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    :cond_0
    if-ne p1, v1, :cond_3

    if-ne p2, v1, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v2, v0, v1}, Lcom/android/email/winset/MessageScrollView;->sendMessageDelayed(IJ)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/email/winset/MessageScrollView;->mIsShowLinearlayoutToTheTop:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ne p2, v1, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseAlwaysShowToTopButton()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v2, v0, v1}, Lcom/android/email/winset/MessageScrollView;->sendMessageDelayed(IJ)V

    goto :goto_1
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollExtent()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollExtent()I

    move-result v0

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollRange()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/winset/MessageScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/email/winset/MessageScrollView$1;-><init>(Lcom/android/email/winset/MessageScrollView;)V

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/winset/MessageScrollView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4, v3}, Lcom/android/email/activity/MessageWebView;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v4, v1

    aget v5, v3, v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/email/winset/MessageScrollView;->inMessageWebView(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    if-ne v3, v6, :cond_1

    iput-boolean v5, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    invoke-virtual {p0, v3, v4}, Lcom/android/email/winset/MessageScrollView;->scrollTo(II)V

    :goto_0
    iget-boolean v3, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    if-ne v3, v6, :cond_5

    if-nez p2, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    :goto_1
    iget-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollRange()I

    move-result v2

    sub-int v3, v2, v0

    if-ne v3, v1, :cond_4

    if-lt p2, p4, :cond_0

    iput-boolean v6, p0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    if-ne v3, v6, :cond_2

    if-lez p2, :cond_2

    invoke-virtual {p0, v5, v5}, Lcom/android/email/winset/MessageScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    goto :goto_0

    :cond_3
    iput-boolean v6, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    goto :goto_1

    :cond_4
    iput-boolean v5, p0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    goto :goto_2

    :cond_5
    iput p2, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v12, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v5

    const/4 v12, 0x2

    new-array v7, v12, [I

    iget-object v12, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v12, v7}, Lcom/android/email/activity/MessageWebView;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    const/4 v12, 0x1

    aget v12, v7, v12

    int-to-float v12, v12

    sub-float v2, v8, v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_0

    float-to-int v12, v1

    float-to-int v13, v2

    invoke-direct {p0, v12, v13}, Lcom/android/email/winset/MessageScrollView;->inMessageWebView(II)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    :cond_0
    iget-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    if-eqz v12, :cond_1

    invoke-virtual {v5, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v12, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v12, v5}, Lcom/android/email/activity/MessageWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/view/MotionEvent;->setLocation(FF)V

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    iget-object v12, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v12}, Lcom/android/email/activity/MessageWebView;->getIsSelectedCursor()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    :goto_1
    const/4 v12, 0x1

    return v12

    :pswitch_1
    iput v3, p0, Lcom/android/email/winset/MessageScrollView;->mStartX:F

    iput v4, p0, Lcom/android/email/winset/MessageScrollView;->mStartY:F

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsTouchDown:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    goto :goto_0

    :pswitch_2
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsTouchDown:Z

    iget-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    iget-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->getScrollY()I

    move-result v12

    if-lez v12, :cond_2

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    goto :goto_0

    :cond_3
    iget-object v12, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_2

    iget-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollExtent()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollOffset()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollRange()I

    move-result v11

    sub-int v12, v11, v9

    if-ne v12, v10, :cond_2

    iget v12, p0, Lcom/android/email/winset/MessageScrollView;->mStartY:F

    sub-float/2addr v12, v4

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resetMessageScrollView()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    invoke-virtual {p0, v1, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(ZZ)V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mStartY:F

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mStartX:F

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsTouchDown:Z

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsShowLinearlayoutToTheTop:Z

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    iput v1, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    return-void
.end method

.method public setIsMessageTab(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    invoke-virtual {p0, v1, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(ZZ)V

    :cond_0
    return-void
.end method

.method public setLinearlayoutToTheTop(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setMessageWebView(Lcom/android/email/activity/MessageWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    return-void
.end method

.method public setToMessageTab(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    :cond_0
    return-void
.end method
