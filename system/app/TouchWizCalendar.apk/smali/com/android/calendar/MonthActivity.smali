.class public Lcom/android/calendar/MonthActivity;
.super Landroid/app/Activity;
.source "MonthActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/android/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/MonthActivity$DateListener;,
        Lcom/android/calendar/MonthActivity$DateChangeListener;,
        Lcom/android/calendar/MonthActivity$EventAdapter;
    }
.end annotation


# instance fields
.field private final VIEW_MODE:Ljava/lang/String;

.field animateUpDown:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDatePicker:Landroid/app/Dialog;

.field private mEventAdapter:Lcom/android/calendar/MonthActivity$EventAdapter;

.field private mEventList:Landroid/widget/ListView;

.field private mEventListNoItem:Landroid/widget/TextView;

.field mEventLoader:Lcom/android/calendar/EventLoader;

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

.field private mInAnimationBackward:Landroid/view/animation/Animation;

.field private mInAnimationForward:Landroid/view/animation/Animation;

.field private mInAnimationFuture:Landroid/view/animation/Animation;

.field private mInAnimationPast:Landroid/view/animation/Animation;

.field private mInFiveWeekAni:Landroid/view/animation/TranslateAnimation;

.field private mInSixWeekAni:Landroid/view/animation/TranslateAnimation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsSwitching:Z

.field private mMonthPinchView:Lcom/android/calendar/PinchView;

.field private mMonthSaturdayColor:I

.field private mMonthSundayColor:I

.field private mMonthSwitcher:Landroid/widget/ViewSwitcher;

.field private mMonthWeekDayColor:I

.field private mNextMonthArrow:Landroid/widget/Button;

.field private mNextYearArrow:Landroid/widget/Button;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOutAnimationBackward:Landroid/view/animation/Animation;

.field private mOutAnimationForward:Landroid/view/animation/Animation;

.field private mOutAnimationFuture:Landroid/view/animation/Animation;

.field private mOutAnimationPast:Landroid/view/animation/Animation;

.field private mOutFiveWeekAni:Landroid/view/animation/TranslateAnimation;

.field private mOutSixWeekAni:Landroid/view/animation/TranslateAnimation;

.field private mPrevMonthArrow:Landroid/widget/Button;

.field private mPrevYearArrow:Landroid/widget/Button;

.field private mQuickAddDialog:Landroid/app/AlertDialog;

.field private mStartDay:I

.field private mSwitchContainer:Landroid/widget/LinearLayout;

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTime:Landroid/text/format/Time;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mViewMode:I

.field private mYearPinchView:Lcom/android/calendar/PinchView;

.field private mYearSwitcher:Landroid/widget/ViewSwitcher;

.field private mZoomEnterMonth:Landroid/view/animation/Animation;

.field private mZoomEnterYear:Landroid/view/animation/Animation;

.field private mZoomExitMonth:Landroid/view/animation/Animation;

.field private mZoomExitYear:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "view_mode"

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->VIEW_MODE:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    iput-boolean v1, p0, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    iput v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSundayColor:I

    iput v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSaturdayColor:I

    iput v1, p0, Lcom/android/calendar/MonthActivity;->mMonthWeekDayColor:I

    new-instance v0, Lcom/android/calendar/MonthActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthActivity$1;-><init>(Lcom/android/calendar/MonthActivity;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/calendar/MonthActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthActivity$2;-><init>(Lcom/android/calendar/MonthActivity;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/calendar/MonthActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/MonthActivity$3;-><init>(Lcom/android/calendar/MonthActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/MonthActivity;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/MonthActivity;Landroid/text/format/Time;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/MonthActivity;->setTitle(Landroid/text/format/Time;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/calendar/MonthActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/calendar/MonthActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calendar/MonthActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/MonthActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/MonthActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/MonthActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/MonthActivity;)Lcom/android/calendar/PinchView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/MonthActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/MonthActivity;->hideQuickAddDialog(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/MonthActivity;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/MonthActivity;->saveQuickAddEvent(JLjava/lang/String;)V

    return-void
.end method

.method private arrangeEventList(Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/MonthView;

    invoke-virtual {v7}, Lcom/android/calendar/MonthView;->getEventList()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    const/4 v7, -0x1

    if-eq p2, v7, :cond_1

    iget v7, v2, Lcom/android/calendar/Event;->startDay:I

    if-gt v7, p2, :cond_0

    iget v7, v2, Lcom/android/calendar/Event;->endDay:I

    if-lt v7, p2, :cond_0

    :cond_1
    iget-boolean v7, v2, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v7, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1, p0}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method private getStartTime()Landroid/text/format/Time;
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    invoke-interface {v0}, Lcom/android/calendar/MonthInterface;->getTime()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget v2, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    iput v2, v1, Landroid/text/format/Time;->month:I

    :cond_0
    iput v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v1}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    return-object v1
.end method

.method private hideQuickAddDialog(Landroid/view/View;)V
    .locals 3

    const/16 v0, 0x102

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->removeDialog(I)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private saveQuickAddEvent(JLjava/lang/String;)V
    .locals 7

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, p1

    sub-long v2, v0, p1

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v2, "eventTimezone"

    const-string v3, "UTC"

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    invoke-virtual {v6, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "description"

    const-string v3, ""

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "allDay"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "dtstart"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "dtend"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "hasAttendeeData"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0}, Lcom/android/calendar/Utils;->getCalendarsConditions(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v0, "_id=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "calendar_id"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>EVENT_CREATED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " </GATE-M>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const v0, 0x7f0a00fa

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const-string v0, "calendar_id"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private setBodyView()V
    .locals 9

    const/4 v7, 0x0

    const/4 v1, 0x1

    const v6, 0x7f0f0002

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    const v6, 0x7f0f0006

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v6, Lcom/android/calendar/MonthActivity$4;

    invoke-direct {v6, p0}, Lcom/android/calendar/MonthActivity$4;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0f0005

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v6, Lcom/android/calendar/MonthActivity$5;

    invoke-direct {v6, p0}, Lcom/android/calendar/MonthActivity$5;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0f0004

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->clearFocus()V

    new-instance v6, Lcom/android/calendar/MonthActivity$6;

    invoke-direct {v6, p0}, Lcom/android/calendar/MonthActivity$6;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0f0003

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setSelected(Z)V

    new-instance v6, Lcom/android/calendar/MonthActivity$7;

    invoke-direct {v6, p0}, Lcom/android/calendar/MonthActivity$7;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v6, 0x7f0f009e

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    new-instance v8, Lcom/android/calendar/MonthActivity$8;

    invoke-direct {v8, p0}, Lcom/android/calendar/MonthActivity$8;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0f00a1

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    new-instance v8, Lcom/android/calendar/MonthActivity$9;

    invoke-direct {v8, p0}, Lcom/android/calendar/MonthActivity$9;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0f00b2

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mPrevYearArrow:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mPrevYearArrow:Landroid/widget/Button;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mPrevYearArrow:Landroid/widget/Button;

    new-instance v8, Lcom/android/calendar/MonthActivity$10;

    invoke-direct {v8, p0}, Lcom/android/calendar/MonthActivity$10;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v6, 0x7f0f00b4

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mNextYearArrow:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mNextYearArrow:Landroid/widget/Button;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mNextYearArrow:Landroid/widget/Button;

    new-instance v8, Lcom/android/calendar/MonthActivity$11;

    invoke-direct {v8, p0}, Lcom/android/calendar/MonthActivity$11;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->setArrowButtonState()V

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v1, :cond_3

    :goto_0
    if-eqz v1, :cond_2

    const v6, 0x7f0f00ae

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    const v7, 0x7f020053

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    new-instance v7, Lcom/android/calendar/MonthActivity$12;

    invoke-direct {v7, p0}, Lcom/android/calendar/MonthActivity$12;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v6, 0x7f0f00af

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventListNoItem:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventListNoItem:Landroid/widget/TextView;

    new-instance v7, Lcom/android/calendar/MonthActivity$13;

    invoke-direct {v7, p0}, Lcom/android/calendar/MonthActivity$13;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    move v1, v7

    goto :goto_0
.end method

.method private setDetailedView()V
    .locals 5

    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/MonthView;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "preferences_day_view"

    sget-object v4, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/MonthView;->setDetailedView(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/MonthView;->setDetailedView(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->updateView()V

    invoke-virtual {v1}, Lcom/android/calendar/MonthView;->updateView()V

    goto :goto_0
.end method

.method private setSwitcher()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, -0x2

    const v0, 0x7f0f00ac

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/android/calendar/MonthView;

    invoke-direct {v1, p0, p0}, Lcom/android/calendar/MonthView;-><init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/android/calendar/MonthView;

    invoke-direct {v1, p0, p0}, Lcom/android/calendar/MonthView;-><init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0f009d

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/PinchView;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/PinchView;->setMode(I)V

    const v0, 0x7f0f00b0

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/PinchView;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/PinchView;->setMode(I)V

    const v0, 0x7f0f00b6

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/android/calendar/YearView;

    invoke-direct {v1, p0}, Lcom/android/calendar/YearView;-><init>(Lcom/android/calendar/MonthActivity;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/android/calendar/YearView;

    invoke-direct {v1, p0}, Lcom/android/calendar/YearView;-><init>(Lcom/android/calendar/MonthActivity;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTitle()V
    .locals 2

    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-direct {p0, v1}, Lcom/android/calendar/MonthActivity;->setTitle(Landroid/text/format/Time;)V

    new-instance v1, Lcom/android/calendar/MonthActivity$14;

    invoke-direct {v1, p0}, Lcom/android/calendar/MonthActivity$14;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f00b1

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/MonthActivity$15;

    invoke-direct {v1, p0}, Lcom/android/calendar/MonthActivity$15;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTitle(Landroid/text/format/Time;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v0, :cond_1

    const v0, 0x7f0f009f

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f00a0

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0f00b3

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setWeekday(I)V
    .locals 7

    const v6, 0x7f0f00a9

    const v5, 0x7f0f00a4

    const v4, 0x7f0f00aa

    const v3, 0x3f733333

    const/16 v2, 0x14

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthWeekDayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, p1, 0x2

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, p1, 0x3

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0f00a6

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, p1, 0x4

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0f00a7

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, p1, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0f00a8

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, p1, 0x6

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthWeekDayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, p1, 0x7

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthWeekDayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez p1, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v4}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSundayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Polska"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    const v0, 0x7f0f00a7

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    const v0, 0x7f0f00a8

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    invoke-virtual {p0, v4}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSundayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v4}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method eventsChanged()V
    .locals 3

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->reloadEvents()V

    goto :goto_0
.end method

.method public getAllDay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndMillis()J
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->getStartTime()Landroid/text/format/Time;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-ne v1, v2, :cond_0

    const/16 v1, 0xb

    iput v1, v0, Landroid/text/format/Time;->month:I

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getFirstJulianDay()I
    .locals 6

    iget v2, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getFirstJulianDay()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    new-instance v1, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getStartMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    goto :goto_0
.end method

.method public getLastJulianDay()I
    .locals 4

    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getLastJulianDay()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getFirstJulianDay()I

    move-result v0

    add-int/lit16 v0, v0, 0x16d

    add-int/lit8 v0, v0, -0x1

    const-string v1, "MonthActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firstJulianDay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getFirstJulianDay()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastJulianDay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method getNextMonthButtonStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    return v0
.end method

.method getPrevMonthButtonStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getSelectedTime()J
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    invoke-interface {v0}, Lcom/android/calendar/MonthInterface;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method getStartDay()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->getStartTime()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public goTo(Landroid/text/format/Time;ZZ)V
    .locals 13

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v11}, Lcom/android/calendar/PinchView;->isMonthPinch()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/calendar/PinchView;->setMonthPinch(Z)V

    :cond_0
    invoke-static {p1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    if-nez v11, :cond_1

    invoke-direct {p0, p1}, Lcom/android/calendar/MonthActivity;->setTitle(Landroid/text/format/Time;)V

    iget v11, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v11, :cond_c

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->getTime()Landroid/text/format/Time;

    move-result-object v6

    if-eqz p2, :cond_b

    iget v11, v6, Landroid/text/format/Time;->month:I

    iget v12, v6, Landroid/text/format/Time;->year:I

    mul-int/lit8 v12, v12, 0xc

    add-int v5, v11, v12

    iget v11, p1, Landroid/text/format/Time;->month:I

    iget v12, p1, Landroid/text/format/Time;->year:I

    mul-int/lit8 v12, v12, 0xc

    add-int v10, v11, v12

    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-eqz v11, :cond_4

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    :goto_1
    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-eqz v11, :cond_5

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    :goto_2
    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-eqz v11, :cond_6

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    :goto_3
    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-eqz v11, :cond_7

    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    :goto_4
    if-ge v10, v5, :cond_8

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v0}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v2}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    :goto_5
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->getSelectionMode()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/calendar/MonthView;->setSelectionMode(I)V

    invoke-virtual {v9, p1}, Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v11, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    invoke-virtual {v9}, Lcom/android/calendar/MonthView;->reloadEvents()V

    if-eqz p2, :cond_3

    invoke-virtual {v9}, Lcom/android/calendar/MonthView;->animationStarted()V

    :cond_3
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->showNext()V

    invoke-virtual {v9}, Lcom/android/calendar/MonthView;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->setArrowButtonState()V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v11, v9, Lcom/android/calendar/MonthView;->mMonthHeight:I

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v8}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v7, 0x1

    :goto_6
    if-eqz v7, :cond_a

    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-eqz v11, :cond_a

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->getWeekNum()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    :pswitch_0
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mInFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mOutFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mInSixWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mOutSixWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_5

    :cond_a
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_5

    :cond_b
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_5

    :cond_c
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/YearView;

    if-eqz p2, :cond_e

    invoke-virtual {v4}, Lcom/android/calendar/YearView;->getTime()Landroid/text/format/Time;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    :goto_7
    invoke-virtual {v4, p1}, Lcom/android/calendar/YearView;->setTime(Landroid/text/format/Time;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/YearView;

    invoke-virtual {v9, p1}, Lcom/android/calendar/YearView;->setSelectedTime(Landroid/text/format/Time;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v11, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->showNext()V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->setArrowButtonState()V

    goto/16 :goto_0

    :cond_d
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    :cond_e
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public goToToday()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    iput v3, v0, Landroid/text/format/Time;->minute:I

    iput v3, v0, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/calendar/MonthView;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/MonthView;-><init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V

    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v0

    check-cast v1, Lcom/android/calendar/MonthInterface;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-interface {v1, v2}, Lcom/android/calendar/MonthInterface;->setSelectedTime(Landroid/text/format/Time;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/calendar/YearView;

    invoke-direct {v0, p0}, Lcom/android/calendar/YearView;-><init>(Lcom/android/calendar/MonthActivity;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "date"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v0, "allday"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x1

    iget v2, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->animationFinished()V

    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/YearView;

    invoke-virtual {v1}, Lcom/android/calendar/YearView;->animationEnd()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-boolean v4, p0, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthView;->saveInstanceState(Landroid/os/Bundle;)V

    :goto_0
    const v0, 0x7f0f009c

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    :cond_1
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->setContentView(I)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preferences_first_day_of_week"

    const-string v3, "2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    iget v0, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/MonthActivity;->setWeekday(I)V

    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setTitle()V

    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setSwitcher()V

    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v0, v5}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v0, v4}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthView;->restoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->requestFocus()Z

    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setBodyView()V

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->eventsChanged()V

    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setDetailedView()V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;

    invoke-static {v1, p1, v0}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/YearView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/YearView;->saveInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v0, v5}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v0, v4}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/YearView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Lcom/android/calendar/YearView;->setSelectedTime(Landroid/text/format/Time;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/YearView;->restoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/android/calendar/YearView;->requestFocus()Z

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    const-wide/32 v9, 0x400000

    invoke-virtual {v8, v9, v10}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    const v8, 0x7f030022

    invoke-virtual {p0, v8}, Lcom/android/calendar/MonthActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f08000c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthActivity;->mMonthSundayColor:I

    const v8, 0x7f08000d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthActivity;->mMonthSaturdayColor:I

    const v8, 0x7f080002

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthActivity;->mMonthWeekDayColor:I

    if-eqz p1, :cond_0

    const-string v8, "beginTime"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "view_mode"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    :goto_0
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v8, "preferences_first_day_of_week"

    const-string v9, "2"

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    iget v8, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v2, v8, -0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/MonthActivity;->setWeekday(I)V

    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setTitle()V

    new-instance v8, Lcom/android/calendar/EventLoader;

    invoke-direct {v8, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    const/high16 v8, 0x7f04

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v8, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v8, 0x7f040001

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    const v8, 0x7f040006

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v8, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v8, 0x7f040007

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b0007

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    mul-int/lit8 v11, v0, 0x5

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v8, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    mul-int/lit8 v11, v0, 0x6

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInSixWeekAni:Landroid/view/animation/TranslateAnimation;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInSixWeekAni:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInSixWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v8, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    neg-int v12, v0

    mul-int/lit8 v12, v12, 0x5

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    neg-int v12, v0

    mul-int/lit8 v12, v12, 0x6

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutSixWeekAni:Landroid/view/animation/TranslateAnimation;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutSixWeekAni:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const v8, 0x7f040002

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    const v8, 0x7f040003

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v8, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v8, 0x7f040004

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    const v8, 0x7f040005

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v8, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v8, 0x7f040008

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mZoomEnterMonth:Landroid/view/animation/Animation;

    const v8, 0x7f04000a

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mZoomExitMonth:Landroid/view/animation/Animation;

    const v8, 0x7f040009

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mZoomEnterYear:Landroid/view/animation/Animation;

    const v8, 0x7f04000b

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mZoomExitYear:Landroid/view/animation/Animation;

    const-string v8, "MonthActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "view mode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setSwitcher()V

    iget v8, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    :goto_1
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v8}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/MonthInterface;

    move-object v1, v8

    check-cast v1, Lcom/android/calendar/MonthInterface;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-interface {v1, v8}, Lcom/android/calendar/MonthInterface;->setSelectedTime(Landroid/text/format/Time;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setBodyView()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v6

    goto/16 :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v6

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    invoke-interface {v0}, Lcom/android/calendar/MonthInterface;->getSelectedDate()Landroid/text/format/Time;

    move-result-object v1

    new-instance v0, Lcom/android/calendar/TwDatePickerDialog;

    new-instance v2, Lcom/android/calendar/MonthActivity$DateListener;

    invoke-direct {v2, p0, v6}, Lcom/android/calendar/MonthActivity$DateListener;-><init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/MonthActivity$1;)V

    iget v3, v1, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->month:I

    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    new-instance v5, Lcom/android/calendar/MonthActivity$DateChangeListener;

    invoke-direct {v5, p0}, Lcom/android/calendar/MonthActivity$DateChangeListener;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;

    new-instance v1, Lcom/android/calendar/MonthActivity$21;

    invoke-direct {v1, p0}, Lcom/android/calendar/MonthActivity$21;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getSelectedMillisForAllday()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "date_format"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "dd-MM-yyyy"

    :cond_0
    const-string v3, "/"

    const-string v4, "-"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030025

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v0, Lcom/android/calendar/Utils$LengthFilter;

    invoke-direct {v0, p0}, Lcom/android/calendar/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
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

    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0, v0, v5, v5}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

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

    invoke-virtual {p0, v1}, Lcom/android/calendar/MonthActivity;->showDialog(I)V

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
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v0}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    invoke-interface {v0}, Lcom/android/calendar/MonthInterface;->getSelectedDate()Landroid/text/format/Time;

    move-result-object v0

    check-cast p2, Landroid/app/DatePickerDialog;

    iget v1, v0, Landroid/text/format/Time;->year:I

    iget v2, v0, Landroid/text/format/Time;->month:I

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0f0010

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/android/calendar/MonthActivity$16;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/MonthActivity$16;-><init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    check-cast p2, Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/MonthView;

    invoke-virtual {v1}, Lcom/android/calendar/MonthView;->getSelectedMillisForAllday()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "date_format"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "dd-MM-yyyy"

    :cond_0
    const-string v4, "/"

    const-string v5, "-"

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTC"

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v4, Lcom/android/calendar/MonthActivity$17;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/android/calendar/MonthActivity$17;-><init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;J)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v4, Lcom/android/calendar/MonthActivity$18;

    invoke-direct {v4, p0, v0}, Lcom/android/calendar/MonthActivity$18;-><init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/calendar/MonthActivity$19;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/android/calendar/MonthActivity$19;-><init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;J)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/calendar/MonthActivity$20;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/MonthActivity$20;-><init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

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
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v1, "view_mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    invoke-interface {v0, p1}, Lcom/android/calendar/MonthInterface;->restoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->updateView()V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v0}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->eventsChanged()V

    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setDetailedView()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/MonthActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "beginTime"

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "view_mode"

    iget v2, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    invoke-interface {v0, p1}, Lcom/android/calendar/MonthInterface;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method reloadCurrentDayEvents()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget v7, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/MonthView;

    invoke-virtual {v7}, Lcom/android/calendar/MonthView;->getSelectedColumn()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/MonthView;

    invoke-virtual {v7}, Lcom/android/calendar/MonthView;->getSelectedMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v7, v4, v5}, Landroid/text/format/Time;->set(J)V

    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget-wide v7, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v7, v8}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, v3}, Lcom/android/calendar/MonthActivity;->arrangeEventList(Ljava/util/ArrayList;I)V

    invoke-virtual {p0, v1}, Lcom/android/calendar/MonthActivity;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public setArrowButtonState()V
    .locals 7

    const/16 v6, 0x7f4

    const/16 v5, 0x76e

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    iget v1, v0, Landroid/text/format/Time;->year:I

    if-gt v1, v5, :cond_0

    iget v1, v0, Landroid/text/format/Time;->year:I

    if-ne v1, v5, :cond_3

    iget v1, v0, Landroid/text/format/Time;->month:I

    if-ltz v1, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mPrevYearArrow:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mPrevYearArrow:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-ne v1, v5, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    iget v1, v0, Landroid/text/format/Time;->year:I

    if-lt v1, v6, :cond_5

    iget v1, v0, Landroid/text/format/Time;->month:I

    const/16 v5, 0xb

    if-le v1, v5, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mNextYearArrow:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mNextYearArrow:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    if-ne v4, v6, :cond_6

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method setCurrentDayEvents(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEventListNoItem:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEventListNoItem:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    new-instance v1, Lcom/android/calendar/MonthActivity$EventAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/calendar/MonthActivity$EventAdapter;-><init>(Lcom/android/calendar/MonthActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventAdapter:Lcom/android/calendar/MonthActivity$EventAdapter;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEventAdapter:Lcom/android/calendar/MonthActivity$EventAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventAdapter:Lcom/android/calendar/MonthActivity$EventAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/MonthActivity$EventAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventListNoItem:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setTime(Landroid/text/format/Time;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    return-void
.end method

.method public switchMode()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-direct {p0, v1}, Lcom/android/calendar/MonthActivity;->setTitle(Landroid/text/format/Time;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/YearView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Lcom/android/calendar/YearView;->setSelectedTime(Landroid/text/format/Time;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1}, Lcom/android/calendar/PinchView;->bringToFront()V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1, v4}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mZoomExitMonth:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/calendar/PinchView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1, v3}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mZoomEnterYear:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/calendar/PinchView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-direct {p0, v1}, Lcom/android/calendar/MonthActivity;->setTitle(Landroid/text/format/Time;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1}, Lcom/android/calendar/PinchView;->bringToFront()V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1, v4}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mZoomExitYear:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/calendar/PinchView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1, v3}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mZoomEnterMonth:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/calendar/PinchView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method updateView()V
    .locals 7

    const/4 v6, 0x0

    iget v2, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "preferences_first_day_of_week"

    const-string v5, "2"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    iget v4, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    if-ne v2, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v4, -0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/MonthActivity;->setWeekday(I)V

    iget v4, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v4, :cond_1

    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->getSelectedMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0, v3, v6, v6}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/YearView;

    invoke-virtual {v4}, Lcom/android/calendar/YearView;->getSelectedMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0, v3, v6, v6}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_0
.end method
