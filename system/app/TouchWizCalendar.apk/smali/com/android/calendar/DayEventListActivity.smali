.class public Lcom/android/calendar/DayEventListActivity;
.super Landroid/app/Activity;
.source "DayEventListActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/android/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DayEventListActivity$DateListener;,
        Lcom/android/calendar/DayEventListActivity$DateChangeListener;,
        Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;
    }
.end annotation


# instance fields
.field private fromDay:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDatePicker:Landroid/app/Dialog;

.field mEventLoader:Lcom/android/calendar/EventLoader;

.field mGestureDetector:Landroid/view/GestureDetector;

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field mSelectedDay:Landroid/text/format/Time;

.field private mSwitchContainer:Landroid/widget/LinearLayout;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    new-instance v0, Lcom/android/calendar/DayEventListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayEventListActivity$1;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/calendar/DayEventListActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/DayEventListActivity$2;-><init>(Lcom/android/calendar/DayEventListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/DayEventListActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/DayEventListActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/DayEventListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method private initView()V
    .locals 9

    const v7, 0x7f0f0035

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ViewSwitcher;

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    iget-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0f0036

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    const v7, 0x7f0f0002

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    const v7, 0x7f0f0006

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v7, Lcom/android/calendar/DayEventListActivity$3;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$3;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0f0004

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lcom/android/calendar/DayEventListActivity$4;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$4;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0f0003

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v7, Lcom/android/calendar/DayEventListActivity$5;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$5;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0f0005

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setSelected(Z)V

    new-instance v7, Lcom/android/calendar/DayEventListActivity$6;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$6;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v7, 0x7f0f0031

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v7, Lcom/android/calendar/DayEventListActivity$7;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$7;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0f0030

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v7, Lcom/android/calendar/DayEventListActivity$8;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$8;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0f0034

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v7, Lcom/android/calendar/DayEventListActivity$9;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$9;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method eventsChanged(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->clearCachedEvents()V

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayEventListView;->reloadEvents(I)V

    return-void
.end method

.method public getAllDay()Z
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    iget-boolean v1, v0, Lcom/android/calendar/DayEventListView;->mSelectionAllDay:Z

    return v1
.end method

.method public getEndMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFirstJulianDay()I
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getSelectionDay()I

    move-result v1

    return v1
.end method

.method public getLastJulianDay()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNextDay(Z)J
    .locals 4

    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayEventListView;->getNextDay(Z)Landroid/text/format/Time;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    return-wide v2
.end method

.method public getNextView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSelectedTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTimeInMillis()J
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getSelectedTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public getStartMillis()J
    .locals 4

    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayEventListView;

    new-instance v0, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    invoke-static {v0}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    return-wide v2
.end method

.method public goTo(Landroid/text/format/Time;ZZ)V
    .locals 5

    const v4, 0x7f0f0036

    invoke-static {p1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v1, p1}, Lcom/android/calendar/DayEventListView;->setSelectedDay(Landroid/text/format/Time;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/calendar/DayEventListView;->reloadEvents(I)V

    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    invoke-virtual {v1}, Lcom/android/calendar/DayEventListView;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public goToToday()V
    .locals 4

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayEventListView;->setSelectedDay(Landroid/text/format/Time;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayEventListView;->reloadEvents(I)V

    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 6

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Lcom/android/calendar/DayEventListView;->setSelectedDay(Landroid/text/format/Time;)V

    const v2, 0x7f0f0076

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    const-string v4, "date"

    const-wide/16 v5, -0x1

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v4, "allday"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/text/format/Time;

    const-string v4, "UTC"

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0, v3, v7, v7}, Lcom/android/calendar/DayEventListActivity;->goTo(Landroid/text/format/Time;ZZ)V

    :cond_0
    return-void

    :cond_1
    new-instance v3, Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 5

    const v4, 0x7f040005

    const v3, 0x7f040004

    iget v0, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-class v0, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->finish()V

    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/DayEventListActivity;->overridePendingTransition(II)V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-class v0, Lcom/android/calendar/WeekActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->finish()V

    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/DayEventListActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0f0036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v2}, Lcom/android/calendar/DayEventListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {v2}, Lcom/android/calendar/DayEventListView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    const v3, 0x7f030014

    invoke-virtual {p0, v3}, Lcom/android/calendar/DayEventListActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/calendar/DayEventListActivity;->initView()V

    invoke-virtual {p0, v0}, Lcom/android/calendar/DayEventListActivity;->eventsChanged(I)V

    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/calendar/DayEventListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    invoke-static {v3, p1, v1}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "preferences_day_view"

    sget-object v8, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/android/calendar/Utils;->CHECK_ACCOUNT:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.google"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.android.exchange"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v7, v3

    array-length v8, v1

    add-int/2addr v7, v8

    array-length v8, v2

    add-int v0, v7, v8

    if-nez v0, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "authorities"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "com.android.calendar"

    aput-object v9, v8, v10

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/calendar/DayEventListActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->finish()V

    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    const-wide/32 v8, 0x400000

    invoke-virtual {v7, v8, v9}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mContentResolver:Landroid/content/ContentResolver;

    const v7, 0x7f040002

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    const v7, 0x7f040003

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    const v7, 0x7f040004

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    const v7, 0x7f040005

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    new-instance v7, Landroid/view/GestureDetector;

    new-instance v8, Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;

    invoke-direct {v8, p0}, Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-direct {v7, p0, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v7, Lcom/android/calendar/EventLoader;

    invoke-direct {v7, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    const v7, 0x7f030014

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->setContentView(I)V

    new-instance v7, Landroid/text/format/Time;

    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/calendar/Utils;->timeFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/text/format/Time;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "startDayfromWhere"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    invoke-direct {p0}, Lcom/android/calendar/DayEventListActivity;->initView()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v6, Landroid/text/format/Time;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTime()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Landroid/text/format/Time;->set(J)V

    new-instance v0, Lcom/android/calendar/TwDatePickerDialog;

    new-instance v2, Lcom/android/calendar/DayEventListActivity$DateListener;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/DayEventListActivity$DateListener;-><init>(Lcom/android/calendar/DayEventListActivity;Lcom/android/calendar/DayEventListActivity$1;)V

    iget v3, v6, Landroid/text/format/Time;->year:I

    iget v4, v6, Landroid/text/format/Time;->month:I

    iget v5, v6, Landroid/text/format/Time;->monthDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    iget v2, v6, Landroid/text/format/Time;->year:I

    iget v3, v6, Landroid/text/format/Time;->month:I

    iget v4, v6, Landroid/text/format/Time;->monthDay:I

    new-instance v5, Lcom/android/calendar/DayEventListActivity$DateChangeListener;

    invoke-direct {v5, p0}, Lcom/android/calendar/DayEventListActivity$DateChangeListener;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    new-instance v2, Lcom/android/calendar/DayEventListActivity$10;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayEventListActivity$10;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    new-instance v0, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0, v0, v5, v5}, Lcom/android/calendar/DayEventListActivity;->goTo(Landroid/text/format/Time;ZZ)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :pswitch_0
    const/16 v1, 0x101

    invoke-virtual {p0, v1}, Lcom/android/calendar/DayEventListActivity;->showDialog(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    const v3, 0x7f0f0036

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/calendar/DayEventListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    check-cast p2, Landroid/app/DatePickerDialog;

    iget v1, v0, Landroid/text/format/Time;->year:I

    iget v2, v0, Landroid/text/format/Time;->month:I

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p2, v1, v2, v3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayEventListView;

    new-instance v0, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v1, v0}, Lcom/android/calendar/DayEventListView;->setSelectedDay(Landroid/text/format/Time;)V

    const-string v2, "startDayfromWhere"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 10

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v6, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0f0036

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v1}, Lcom/android/calendar/DayEventListView;->updateTitle()V

    :cond_0
    iget-object v6, p0, Lcom/android/calendar/DayEventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v6}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/calendar/DayEventListActivity;->eventsChanged(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/calendar/DayEventListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/android/calendar/DayEventListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/calendar/DayEventListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/calendar/DayEventListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "preferences_day_view"

    sget-object v7, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v3, v6, v7

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v3, v6, v7}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_restore_time"

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "startDayfromWhere"

    iget v1, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
