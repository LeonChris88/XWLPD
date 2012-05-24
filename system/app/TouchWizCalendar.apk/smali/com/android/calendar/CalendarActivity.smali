.class public Lcom/android/calendar/CalendarActivity;
.super Landroid/app/Activity;
.source "CalendarActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarActivity$DateListener;,
        Lcom/android/calendar/CalendarActivity$DateChangeListener;,
        Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;
    }
.end annotation


# static fields
.field private static final CALENDARS_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected KEY_FLAG:Z

.field mBodyContainer:Landroid/widget/FrameLayout;

.field public mCalendarIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDatePicker:Landroid/app/Dialog;

.field mEventLoader:Lcom/android/calendar/EventLoader;

.field private mHandler:Landroid/os/Handler;

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSwitching:Z

.field private mObserver:Landroid/database/ContentObserver;

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field private mQuickAddDialog:Landroid/app/AlertDialog;

.field mSelectedDay:Landroid/text/format/Time;

.field mStartDay:I

.field mSwitchContainer:Landroid/widget/LinearLayout;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/calendar/CalendarActivity;->mIsSwitching:Z

    iput-boolean v1, p0, Lcom/android/calendar/CalendarActivity;->KEY_FLAG:Z

    new-instance v0, Lcom/android/calendar/CalendarActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarActivity$1;-><init>(Lcom/android/calendar/CalendarActivity;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/calendar/CalendarActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarActivity$2;-><init>(Lcom/android/calendar/CalendarActivity;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/calendar/CalendarActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/CalendarActivity$3;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/calendar/CalendarActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/CalendarActivity$4;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mCalendarObserver:Landroid/database/ContentObserver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mCalendarIcons:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/CalendarActivity;->loadCalendarTypeIcon()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/CalendarActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarActivity;->hideQuickAddDialog(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/CalendarActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/CalendarActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calendar/CalendarActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    return-object v0
.end method

.method private hideQuickAddDialog(Landroid/view/View;)V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/16 v1, 0x102

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->removeDialog(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private loadCalendarTypeIcon()V
    .locals 8

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/content/ContentResolver;)V

    const/4 v1, 0x0

    sget-object v4, Lcom/android/calendar/CalendarActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method eventsChanged()V
    .locals 2

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/calendar/CalendarInterface;->reloadEvents(Z)V

    return-void
.end method

.method public getAllDay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getCurrentCalendarView()Lcom/android/calendar/CalendarView;
    .locals 3

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/calendar/DayLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/calendar/DayLayout;

    invoke-virtual {v1}, Lcom/android/calendar/DayLayout;->getDayView()Lcom/android/calendar/DayView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/android/calendar/CalendarView;

    goto :goto_0
.end method

.method public getEndMillis()J
    .locals 6

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    iget v5, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v4, v5

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    return-wide v4
.end method

.method public getFirstJulianDay()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getFirstJulianDay()I

    move-result v1

    return v1
.end method

.method public getLastJulianDay()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getLastJulianDay()I

    move-result v1

    return v1
.end method

.method public getNextCalendarView()Lcom/android/calendar/CalendarView;
    .locals 3

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/calendar/DayLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/calendar/DayLayout;

    invoke-virtual {v1}, Lcom/android/calendar/DayLayout;->getDayView()Lcom/android/calendar/DayView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/android/calendar/CalendarView;

    goto :goto_0
.end method

.method public getNextDay(Z)J
    .locals 3

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->getNextDay(Z)Landroid/text/format/Time;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedDayInMillis()J
    .locals 3

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectedTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getSelectedTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTimeInMillis()J
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    invoke-interface {v0}, Lcom/android/calendar/CalendarInterface;->getSelectedTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public getStartMillis()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    invoke-static {v1}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    return-wide v2
.end method

.method public goTo(Landroid/text/format/Time;ZZ)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/calendar/CalendarActivity;->mIsSwitching:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v1

    if-eqz p2, :cond_2

    iget-object v3, v1, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v3, p1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->releaseBriefMode()V

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/CalendarInterface;

    invoke-interface {v2}, Lcom/android/calendar/CalendarInterface;->resetFirstHour()V

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/calendar/CalendarInterface;->setSelectionMode(I)V

    invoke-interface {v2, p1}, Lcom/android/calendar/CalendarInterface;->setSelectedDay(Landroid/text/format/Time;)V

    invoke-interface {v2, p3}, Lcom/android/calendar/CalendarInterface;->reloadEvents(Z)V

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public goToToday()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v1

    iget v4, v1, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v4, v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    const-string v5, "date"

    const-wide/16 v6, -0x1

    invoke-virtual {p3, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v5, "allday"

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v4, Landroid/text/format/Time;

    const-string v5, "UTC"

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4, v2, v3}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0, v4, v8, v8}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->scrollToEventHour()V

    :cond_0
    return-void

    :cond_1
    new-instance v4, Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    invoke-interface {v0}, Lcom/android/calendar/CalendarInterface;->clearScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/CalendarActivity;->mIsSwitching:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarActivity;->mIsSwitching:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    invoke-static {v1, p1, v0}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const-wide/32 v3, 0x400000

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/calendar/CalendarActivity;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    const v2, 0x7f040003

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v2, 0x7f040004

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    const v2, 0x7f040005

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lcom/android/calendar/EventLoader;

    invoke-direct {v2, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preferences_first_day_of_week"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/CalendarActivity;->mStartDay:I

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/calendar/CalendarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/android/calendar/CalendarActivity;->loadCalendarTypeIcon()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 18

    packed-switch p1, :pswitch_data_0

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarActivity;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v15

    new-instance v1, Lcom/android/calendar/TwDatePickerDialog;

    new-instance v3, Lcom/android/calendar/CalendarActivity$DateListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/CalendarActivity$DateListener;-><init>(Lcom/android/calendar/CalendarActivity;)V

    iget v4, v15, Landroid/text/format/Time;->year:I

    iget v5, v15, Landroid/text/format/Time;->month:I

    iget v6, v15, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v1}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    iget v5, v15, Landroid/text/format/Time;->year:I

    iget v6, v15, Landroid/text/format/Time;->month:I

    iget v7, v15, Landroid/text/format/Time;->monthDay:I

    new-instance v17, Lcom/android/calendar/CalendarActivity$DateChangeListener;

    invoke-direct/range {v17 .. v18}, Lcom/android/calendar/CalendarActivity$DateChangeListener;-><init>(Lcom/android/calendar/CalendarActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v5, v6, v7, v0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    new-instance v5, Lcom/android/calendar/CalendarActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/calendar/CalendarActivity$11;-><init>(Lcom/android/calendar/CalendarActivity;)V

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v13

    const/4 v10, 0x1

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v10, v10, 0x80

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v10, v2}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/CalendarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const v2, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v12, Lcom/android/calendar/Utils$LengthFilter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/calendar/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v12, v2, v5

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0034

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v2 .. v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f0a0084

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f0a0076

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto/16 :goto_0

    :cond_0
    or-int/lit8 v10, v10, 0x40

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
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

.method protected onDestroy()V
    .locals 2

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    invoke-interface {v0}, Lcom/android/calendar/CalendarInterface;->cleanup()V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    invoke-interface {v0}, Lcom/android/calendar/CalendarInterface;->cleanup()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
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

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0, v0, v5, v5}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

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

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->showDialog(I)V

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
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->releaseBriefMode()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 12

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v7

    check-cast p2, Landroid/app/DatePickerDialog;

    iget v9, v7, Landroid/text/format/Time;->year:I

    iget v10, v7, Landroid/text/format/Time;->month:I

    iget v11, v7, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p2, v9, v10, v11}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    :pswitch_1
    const v9, 0x7f0f0010

    invoke-virtual {p2, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    new-instance v9, Lcom/android/calendar/CalendarActivity$6;

    invoke-direct {v9, p0, v4}, Lcom/android/calendar/CalendarActivity$6;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/widget/EditText;)V

    const-wide/16 v10, 0x32

    invoke-virtual {v4, v9, v10, v11}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    check-cast p2, Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v5

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    or-int/lit16 v1, v1, 0x80

    :goto_1
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v5, v6, v1, v9}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v9, Lcom/android/calendar/CalendarActivity$7;

    invoke-direct {v9, p0, v4}, Lcom/android/calendar/CalendarActivity$7;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    const/4 v10, -0x2

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v9, Lcom/android/calendar/CalendarActivity$8;

    invoke-direct {v9, p0, v4}, Lcom/android/calendar/CalendarActivity$8;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/calendar/CalendarActivity$9;

    invoke-direct {v10, p0, v4}, Lcom/android/calendar/CalendarActivity$9;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/widget/EditText;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/calendar/CalendarActivity$10;

    invoke-direct {v10, p0, v4}, Lcom/android/calendar/CalendarActivity$10;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/widget/EditText;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_0
    or-int/lit8 v1, v1, 0x40

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
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

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/CalendarInterface;

    new-instance v0, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    invoke-interface {v1, v0}, Lcom/android/calendar/CalendarInterface;->setSelectedDay(Landroid/text/format/Time;)V

    invoke-interface {v1, p1}, Lcom/android/calendar/CalendarInterface;->restoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->updateView()V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->eventsChanged()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/CalendarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "key_restore_time"

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getSelectedTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    invoke-interface {v0, p1}, Lcom/android/calendar/CalendarInterface;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/16 v0, 0x102

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarActivity;->removeDialog(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public switchViews(Z)Landroid/view/View;
    .locals 21

    if-eqz p1, :cond_0

    const/high16 v4, 0x3f80

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/high16 v11, -0x4080

    :goto_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v9, v19

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v17, 0x190

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    move-wide/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v7}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/calendar/CalendarView;->releaseBriefMode()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/calendar/CalendarInterface;

    invoke-interface/range {v20 .. v20}, Lcom/android/calendar/CalendarInterface;->cleanup()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/calendar/CalendarActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/calendar/CalendarActivity$5;-><init>(Lcom/android/calendar/CalendarActivity;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x0

    return-object v3

    :cond_0
    const/high16 v4, -0x4080

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/high16 v11, 0x3f80

    goto :goto_0
.end method

.method updateView()V
    .locals 6

    iget v1, p0, Lcom/android/calendar/CalendarActivity;->mStartDay:I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "preferences_first_day_of_week"

    const-string v5, "2"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/CalendarActivity;->mStartDay:I

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/CalendarInterface;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/CalendarInterface;

    invoke-interface {v3}, Lcom/android/calendar/CalendarInterface;->updateView()V

    invoke-interface {v2}, Lcom/android/calendar/CalendarInterface;->updateView()V

    return-void
.end method
