.class Lcom/android/calendar/YearView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "YearView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/YearView;-><init>(Lcom/android/calendar/MonthActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/YearView;


# direct methods
.method constructor <init>(Lcom/android/calendar/YearView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int v0, v7, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int v1, v7, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-static {v7}, Lcom/android/calendar/YearView;->access$100(Lcom/android/calendar/YearView;)Lcom/android/calendar/MonthActivity;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    sget v7, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v2, v7, :cond_0

    if-le v2, v3, :cond_0

    const-string v7, "YearView"

    const-string v8, "onFling"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/text/format/Time;

    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-static {v7}, Lcom/android/calendar/YearView;->access$100(Lcom/android/calendar/YearView;)Lcom/android/calendar/MonthActivity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_2

    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-static {v7}, Lcom/android/calendar/YearView;->access$200(Lcom/android/calendar/YearView;)Landroid/text/format/Time;

    move-result-object v7

    iget v7, v7, Landroid/text/format/Time;->year:I

    const/16 v8, 0x76e

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/calendar/YearView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    :goto_1
    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-static {v7}, Lcom/android/calendar/YearView;->access$100(Lcom/android/calendar/YearView;)Lcom/android/calendar/MonthActivity;

    move-result-object v7

    invoke-virtual {v7, v4, v6, v5}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    move v5, v6

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-static {v7}, Lcom/android/calendar/YearView;->access$200(Lcom/android/calendar/YearView;)Landroid/text/format/Time;

    move-result-object v7

    iget v7, v7, Landroid/text/format/Time;->year:I

    const/16 v8, 0x7f4

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-virtual {v7, v6}, Lcom/android/calendar/YearView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/calendar/YearView;->access$300(Lcom/android/calendar/YearView;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/calendar/YearView;->access$400(Lcom/android/calendar/YearView;I)I

    move-result v0

    if-eq v1, v5, :cond_0

    if-ne v0, v5, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-static {v3, v1}, Lcom/android/calendar/YearView;->access$502(Lcom/android/calendar/YearView;I)I

    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-static {v3, v0}, Lcom/android/calendar/YearView;->access$602(Lcom/android/calendar/YearView;I)I

    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-static {v3, v2}, Lcom/android/calendar/YearView;->access$702(Lcom/android/calendar/YearView;I)I

    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    iput-boolean v2, v3, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-virtual {v3}, Lcom/android/calendar/YearView;->invalidate()V

    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    iget-object v4, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-static {v4}, Lcom/android/calendar/YearView;->access$800(Lcom/android/calendar/YearView;)Lcom/android/calendar/YearView$SwitchToMonthView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/YearView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
