.class public Lcom/android/calendar/DayLayout;
.super Landroid/widget/LinearLayout;
.source "DayLayout.java"

# interfaces
.implements Lcom/android/calendar/CalendarInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DayLayout$DayLayoutGestureListener;
    }
.end annotation


# instance fields
.field private mAlldayNum:I

.field private mBaseDate:Landroid/text/format/Time;

.field private mContext:Landroid/content/Context;

.field private mDayLayoutGestureDetector:Landroid/view/GestureDetector;

.field private mDayView:Lcom/android/calendar/DayView;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstJulianDay:I

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/calendar/DayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayLayout$1;-><init>(Lcom/android/calendar/DayLayout;)V

    iput-object v0, p0, Lcom/android/calendar/DayLayout;->mUpdateTZ:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Lcom/android/calendar/CalendarActivity;

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v0, p0, Lcom/android/calendar/DayLayout;->mEventLoader:Lcom/android/calendar/EventLoader;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/DayLayout;->setOrientation(I)V

    new-instance v1, Lcom/android/calendar/DayView;

    move-object v0, p1

    check-cast v0, Lcom/android/calendar/CalendarActivity;

    invoke-direct {v1, v0}, Lcom/android/calendar/DayView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    iput-object v1, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/DayLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/DayLayout$DayLayoutGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/DayLayout$DayLayoutGestureListener;-><init>(Lcom/android/calendar/DayLayout;Lcom/android/calendar/DayLayout$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/DayLayout;->mDayLayoutGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/DayLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/DayLayout;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mBaseDate:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/DayLayout;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayLayout;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method private doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int v0, v5, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int v1, v5, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v5}, Lcom/android/calendar/DayView;->isBriefMode()Z

    move-result v5

    if-nez v5, :cond_2

    sget v5, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v2, v5, :cond_2

    if-le v2, v3, :cond_2

    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v5, v0}, Lcom/android/calendar/DayView;->checkSwitchView(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/calendar/DayLayout;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v5, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v7}, Lcom/android/calendar/CalendarActivity;->getNextDay(Z)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/text/format/Time;->set(J)V

    :goto_1
    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v4, v6, v6}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

    move v5, v6

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v6}, Lcom/android/calendar/CalendarActivity;->getNextDay(Z)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/text/format/Time;->set(J)V

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->cleanup()V

    return-void
.end method

.method public clearScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayLayout;->mAlldayNum:I

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->clearScreen()V

    return-void
.end method

.method public getDayView()Lcom/android/calendar/DayView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    return-object v0
.end method

.method public getEventList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedTime()Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTimeInMillis()J
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method initDate(Landroid/text/format/Time;)V
    .locals 4

    iput-object p1, p0, Lcom/android/calendar/DayLayout;->mBaseDate:Landroid/text/format/Time;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v2, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayLayout;->mFirstJulianDay:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayLayoutGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

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
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayLayoutGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public reloadCompleted(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/DayLayout;->mEvents:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/calendar/DayLayout;->mFirstJulianDay:I

    iget v1, p0, Lcom/android/calendar/DayLayout;->mFirstJulianDay:I

    iget-object v2, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1, v2}, Lcom/android/calendar/Utils;->setAllDayEvents(Ljava/util/ArrayList;IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayLayout;->mAlldayNum:I

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->reloadEventAction(Ljava/util/ArrayList;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/DayLayout;->invalidate()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->computeEarliestStartHour()Z

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->scrollToEventHour()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->reloadEventActionForScroll(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public reloadEvents(Z)V
    .locals 8

    const/4 v1, 0x1

    new-instance v7, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    invoke-static {v7}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mEventLoader:Lcom/android/calendar/EventLoader;

    new-instance v5, Lcom/android/calendar/DayLayout$2;

    invoke-direct {v5, p0, v2, p1}, Lcom/android/calendar/DayLayout$2;-><init>(Lcom/android/calendar/DayLayout;Ljava/util/ArrayList;Z)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetFirstHour()V
    .locals 0

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->restoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/calendar/DayLayout;->initDate(Landroid/text/format/Time;)V

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->setSelectedDay(Landroid/text/format/Time;)V

    return-void
.end method

.method public setSelectionMode(I)V
    .locals 0

    return-void
.end method

.method public updateView()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->updateView()V

    return-void
.end method
