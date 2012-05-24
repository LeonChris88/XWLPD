.class public Lcom/android/calendar/DayEventListView;
.super Landroid/widget/ListView;
.source "DayEventListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private firstPos:I

.field mBaseDate:Landroid/text/format/Time;

.field protected mCalendarApp:Lcom/android/calendar/CalendarApplication;

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mDateRange:Ljava/lang/String;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDetailedView:Ljava/lang/String;

.field private mEventAdapter:Lcom/android/calendar/DayEventListAdapter;

.field protected final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private mEventList:Lcom/android/calendar/DayEventListView;

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

.field private mFirstHour:I

.field private mLastReloadMillis:J

.field protected mNumDays:I

.field private mOnFlingCalled:Z

.field protected mParentActivity:Lcom/android/calendar/DayEventListActivity;

.field protected final mResources:Landroid/content/res/Resources;

.field private mScrolling:Z

.field private mSelectedEvent:Lcom/android/calendar/Event;

.field private mSelectedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field mSelectionAllDay:Z

.field private mSelectionDay:I

.field private mSelectionHour:I

.field private mTitleTextViewLeft:Landroid/widget/TextView;

.field private mTitleTextViewRight:Landroid/widget/TextView;

.field private mTouchMode:I

.field private mViewStartX:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/DayEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mDetailedView:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayEventListView;->mNumDays:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/DayEventListView;->mFirstHour:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvents:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/calendar/DayEventListView;->mTouchMode:I

    iput-boolean v2, p0, Lcom/android/calendar/DayEventListView;->mScrolling:Z

    iput v2, p0, Lcom/android/calendar/DayEventListView;->firstPos:I

    new-instance v0, Lcom/android/calendar/DayEventListView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayEventListView$1;-><init>(Lcom/android/calendar/DayEventListView;)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mResources:Landroid/content/res/Resources;

    move-object v0, p1

    check-cast v0, Lcom/android/calendar/DayEventListActivity;

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    iget-object v0, v0, Lcom/android/calendar/DayEventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventLoader:Lcom/android/calendar/EventLoader;

    new-instance v0, Lcom/android/calendar/EventGeometry;

    invoke-direct {v0}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarApplication;

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mCalendarApp:Lcom/android/calendar/CalendarApplication;

    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0, p1}, Lcom/android/calendar/DayEventListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/DayEventListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/DayEventListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/DayEventListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/DayEventListView;->recalc()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/DayEventListView;)Lcom/android/calendar/DayEventListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventAdapter:Lcom/android/calendar/DayEventListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/DayEventListView;)Lcom/android/calendar/DayEventListView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/DayEventListView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->layoutChildren()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/DayEventListView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/DayEventListView;->firstPos:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/calendar/DayEventListView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/calendar/DayEventListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v2}, Lcom/android/calendar/DayEventListView;->setClickable(Z)V

    invoke-virtual {p0, v3}, Lcom/android/calendar/DayEventListView;->setFadingEdgeLength(I)V

    invoke-virtual {p0, v3}, Lcom/android/calendar/DayEventListView;->setCacheColorHint(I)V

    invoke-virtual {p0, p0}, Lcom/android/calendar/DayEventListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/calendar/DayEventListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v2, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-object v2, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const v3, 0x7f0f0032

    invoke-virtual {v2, v3}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const v3, 0x7f0f0033

    invoke-virtual {v2, v3}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    iput-object p0, p0, Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;

    new-instance v2, Lcom/android/calendar/DayEventListAdapter;

    iget-object v3, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;

    invoke-direct {v2, v3, v4}, Lcom/android/calendar/DayEventListAdapter;-><init>(Landroid/content/Context;Lcom/android/calendar/DayEventListView;)V

    iput-object v2, p0, Lcom/android/calendar/DayEventListView;->mEventAdapter:Lcom/android/calendar/DayEventListAdapter;

    iget-object v2, p0, Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;

    iget-object v3, p0, Lcom/android/calendar/DayEventListView;->mEventAdapter:Lcom/android/calendar/DayEventListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/calendar/DayEventListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private recalc()V
    .locals 12

    const v11, 0x7f0f0034

    const v10, 0x7f0f0030

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-wide v1, v4

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    const-string v6, "MM-dd-yyyy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/calendar/DayEventListView;->mDateRange:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v6, v10}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v6, v11}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    iget v6, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    const v7, 0x24dc87

    if-gt v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v6, v10}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    const v7, 0x259d23

    if-lt v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v6, v11}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public checkSwitchView(I)Z
    .locals 9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v7}, Lcom/android/calendar/DayEventListActivity;->getNextView()Landroid/widget/FrameLayout;

    move-result-object v5

    const v7, 0x7f0f0036

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayEventListView;

    iget-object v0, v2, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    iget-object v7, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-wide v7, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v7, v8}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v1

    const v7, 0x24dc87

    if-gt v1, v7, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    const v7, 0x259d23

    if-lt v1, v7, :cond_2

    if-gtz p1, :cond_2

    :cond_1
    const/4 v6, 0x0

    :cond_2
    return v6
.end method

.method clearCachedEvents()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/DayEventListView;->mLastReloadMillis:J

    return-void
.end method

.method doDown(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayEventListView;->mTouchMode:I

    iput v1, p0, Lcom/android/calendar/DayEventListView;->mViewStartX:I

    iput-boolean v1, p0, Lcom/android/calendar/DayEventListView;->mOnFlingCalled:Z

    return-void
.end method

.method doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/calendar/DayEventListView;->mTouchMode:I

    iput-boolean v8, p0, Lcom/android/calendar/DayEventListView;->mOnFlingCalled:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int v0, v5, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v1, v5, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget v5, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v2, v5, :cond_0

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/calendar/DayEventListView;->checkSwitchView(I)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_2

    iget-object v5, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v5, v7}, Lcom/android/calendar/DayEventListActivity;->getNextDay(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    :goto_1
    iget-object v5, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v5, v4, v8, v7}, Lcom/android/calendar/DayEventListActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v5, v8}, Lcom/android/calendar/DayEventListActivity;->getNextDay(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    goto :goto_1
.end method

.method doLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method doSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method getEventList()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextDay(Z)Landroid/text/format/Time;
    .locals 3

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    if-eqz p1, :cond_0

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Lcom/android/calendar/DayEventListView;->mNumDays:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-object v0

    :cond_0
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Lcom/android/calendar/DayEventListView;->mNumDays:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_0
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .locals 2

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-object v0
.end method

.method getSelectedTime()Landroid/text/format/Time;
    .locals 2

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .locals 3

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectionDay()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-wide/16 v6, -0x1

    cmp-long v6, p4, v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/calendar/DayEventListView;->mScrolling:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    if-eqz v0, :cond_0

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "beginTime"

    iget-wide v7, v0, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "endTime"

    iget-wide v7, v0, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v5, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    invoke-static {v5}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    const-string v6, "event_day_time"

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "eventlist_type"

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v6, v1}, Lcom/android/calendar/DayEventListActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvent:Lcom/android/calendar/Event;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvent:Lcom/android/calendar/Event;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/android/calendar/DayEventListView;->mViewWidth:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    iget-object v1, v1, Lcom/android/calendar/DayEventListActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method reloadEvents(I)V
    .locals 9

    const/4 v5, 0x0

    const/4 v1, 0x1

    iput p1, p0, Lcom/android/calendar/DayEventListView;->firstPos:I

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v5, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    invoke-static {v8}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    invoke-virtual {v8, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/calendar/DayEventListView;->mLastReloadMillis:J

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventAdapter:Lcom/android/calendar/DayEventListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->layoutChildren()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-wide v5, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v7

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventLoader:Lcom/android/calendar/EventLoader;

    new-instance v5, Lcom/android/calendar/DayEventListView$2;

    invoke-direct {v5, p0, v2, v7}, Lcom/android/calendar/DayEventListView$2;-><init>(Lcom/android/calendar/DayEventListView;Ljava/util/ArrayList;I)V

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->hour:I

    iput v4, p0, Lcom/android/calendar/DayEventListView;->mSelectionHour:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput v8, p0, Lcom/android/calendar/DayEventListView;->mFirstHour:I

    invoke-direct {p0}, Lcom/android/calendar/DayEventListView;->recalc()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v6, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v4

    iget v5, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f080027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mDateRange:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    aget-object v5, v3, v9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->invalidate()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public updateTitle()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x1

    const-string v6, "calendarTest"

    const-string v7, "updateTitle"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v6, "MM-dd-yyyy"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v8, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v6

    iget-object v7, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v7, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v7, v8}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f080027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v6}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/calendar/DayEventListView;->mDateRange:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mDateRange:Ljava/lang/String;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    aget-object v7, v5, v11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->invalidate()V

    return-void

    :cond_1
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
