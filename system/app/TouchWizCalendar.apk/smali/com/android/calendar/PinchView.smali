.class public Lcom/android/calendar/PinchView;
.super Landroid/widget/LinearLayout;
.source "PinchView.java"


# instance fields
.field private mMode:I

.field private mMonthPinch:Z

.field private mParentActivity:Lcom/android/calendar/MonthActivity;

.field private mScaleBegan:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/calendar/PinchView;->mScaleBegan:Z

    iput-boolean v0, p0, Lcom/android/calendar/PinchView;->mMonthPinch:Z

    check-cast p1, Lcom/android/calendar/MonthActivity;

    iput-object p1, p0, Lcom/android/calendar/PinchView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/PinchView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/PinchView$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/PinchView$1;-><init>(Lcom/android/calendar/PinchView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/PinchView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/PinchView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/PinchView;->mScaleBegan:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/calendar/PinchView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/PinchView;->mMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/PinchView;)Lcom/android/calendar/MonthActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/PinchView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    return-object v0
.end method


# virtual methods
.method public isMonthPinch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/PinchView;->mMonthPinch:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "PinchView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/calendar/PinchView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/android/calendar/PinchView;->mScaleBegan:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "PinchView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/calendar/PinchView;->mScaleBegan:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/PinchView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/PinchView;->mMode:I

    return-void
.end method

.method public setMonthPinch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/PinchView;->mMonthPinch:Z

    return-void
.end method
