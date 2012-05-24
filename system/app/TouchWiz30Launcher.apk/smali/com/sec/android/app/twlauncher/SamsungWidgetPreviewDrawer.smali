.class public Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;
.super Landroid/view/ViewGroup;
.source "SamsungWidgetPreviewDrawer.java"


# instance fields
.field private SNAP_VELOCITY:I

.field private mCurrentScreen:I

.field private mDownX:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOrientation:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSnapToScreenDuration:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mOrientation:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x258

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    goto :goto_0
.end method

.method private snapToDestination()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWhichScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->postInvalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-le v0, v7, :cond_2

    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-gez v8, :cond_4

    add-int/lit8 v8, v0, -0x1

    iput v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    :cond_2
    :goto_1
    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    if-eq v8, v7, :cond_3

    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    move v5, v7

    :cond_3
    if-eqz v5, :cond_5

    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-ge v7, v0, :cond_0

    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getDrawingTime()J

    move-result-wide v8

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    :cond_4
    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-lt v8, v0, :cond_2

    iput v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getDrawingTime()J

    move-result-wide v3

    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    sub-int v2, v8, v9

    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    if-ltz v8, :cond_8

    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    if-ge v8, v0, :cond_8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v7, :cond_8

    if-lez v2, :cond_7

    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    add-int/lit8 v8, v0, -0x1

    if-ge v7, v8, :cond_6

    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_6
    :goto_2
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    :cond_7
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-lez v7, :cond_6

    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method getCurrentScreen()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    return v0
.end method

.method public getWhichScreen()I
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getMeasuredWidth()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v1

    iget v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    if-gez v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    if-gtz v0, :cond_1

    add-int/lit8 v4, v1, -0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    div-int v4, v5, v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v1, 0x1

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_1

    iget v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    if-eqz v10, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    iget v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    if-eqz v10, :cond_6

    :goto_2
    goto :goto_0

    :pswitch_0
    iget v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    sub-float v10, v3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v4, v10

    iget v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchSlop:I

    if-le v4, v2, :cond_4

    move v5, v1

    :goto_3
    if-le v7, v2, :cond_5

    move v8, v1

    :goto_4
    if-nez v5, :cond_3

    if-eqz v8, :cond_2

    :cond_3
    if-eqz v5, :cond_2

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto :goto_1

    :cond_4
    move v5, v9

    goto :goto_3

    :cond_5
    move v8, v9

    goto :goto_4

    :pswitch_1
    iput v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    iput v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mDownX:F

    iput v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto :goto_1

    :pswitch_2
    iput v9, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto :goto_1

    :cond_6
    move v1, v9

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v4, 0x4000

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eq v3, v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    const/16 v17, 0x1

    return v17

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mDownX:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v17, v11

    move/from16 v0, v17

    float-to-int v5, v0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v18

    mul-int v6, v17, v18

    if-gez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    neg-int v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v7, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    if-lez v17, :cond_3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->scrollBy(II)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->scrollBy(II)V

    goto/16 :goto_0

    :cond_4
    if-lez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v6, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v6, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->scrollBy(II)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v11, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    move/from16 v17, v0

    sub-float v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchSlop:I

    if-le v12, v8, :cond_7

    const/4 v13, 0x1

    :goto_1
    if-le v15, v8, :cond_8

    const/16 v16, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v17

    if-lez v17, :cond_1

    if-nez v13, :cond_6

    if-eqz v16, :cond_1

    :cond_6
    if-eqz v13, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto/16 :goto_0

    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    :cond_8
    const/16 v16, 0x0

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v10, v0, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    if-ltz v17, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    goto :goto_3

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToDestination()V

    goto :goto_3

    :pswitch_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllViews()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    return-void
.end method

.method snapToScreen(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(II)V

    return-void
.end method

.method snapToScreen(II)V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-eq p1, v0, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v8, v0, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v0

    mul-int v9, p1, v0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    sub-int v3, v9, v0

    if-gez p1, :cond_4

    add-int/lit8 p1, v7, -0x1

    :cond_1
    :goto_1
    iput p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    if-gez p2, :cond_2

    iget p2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->invalidate()V

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    return-void

    :cond_3
    move v6, v2

    goto :goto_0

    :cond_4
    if-lt p1, v7, :cond_1

    const/4 p1, 0x0

    goto :goto_1
.end method
