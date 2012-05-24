.class Lcom/android/calendar/PinchView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PinchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/PinchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/PinchView;


# direct methods
.method constructor <init>(Lcom/android/calendar/PinchView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-static {v0, v2}, Lcom/android/calendar/PinchView;->access$002(Lcom/android/calendar/PinchView;Z)Z

    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-static {v0}, Lcom/android/calendar/PinchView;->access$100(Lcom/android/calendar/PinchView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-static {v1}, Lcom/android/calendar/PinchView;->access$200(Lcom/android/calendar/PinchView;)Lcom/android/calendar/MonthActivity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/PinchView;->setMonthPinch(Z)V

    :cond_0
    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    const/high16 v2, 0x3f80

    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/PinchView;->access$002(Lcom/android/calendar/PinchView;Z)Z

    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-static {v0}, Lcom/android/calendar/PinchView;->access$100(Lcom/android/calendar/PinchView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-static {v1}, Lcom/android/calendar/PinchView;->access$200(Lcom/android/calendar/PinchView;)Lcom/android/calendar/MonthActivity;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-static {v0}, Lcom/android/calendar/PinchView;->access$200(Lcom/android/calendar/PinchView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->switchMode()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-static {v0}, Lcom/android/calendar/PinchView;->access$200(Lcom/android/calendar/PinchView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->switchMode()V

    goto :goto_0
.end method
