.class public Lcom/android/calendar/MonthView;
.super Landroid/view/View;
.source "MonthView.java"

# interfaces
.implements Lcom/android/calendar/MonthInterface;


# instance fields
.field private final KOREAN_HOLIDAY_EVENT:I

.field private final MONTH_EVENT_NUM:I

.field private MONTH_ROW_NUM:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mBoxSelected:Landroid/graphics/drawable/Drawable;

.field private mCalendarBg:Landroid/graphics/drawable/Drawable;

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

.field private mDayTextSize:I

.field private mDetailedView:Ljava/lang/String;

.field private mEventDays:[[I

.field private final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private mEventHeight:I

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEventWidth:I

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

.field private mFirstColumnCellWidth:I

.field private mFirstJulianDay:I

.field private mFocusDayLunarTextSize:I

.field private mFocusDayTextSize:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsWithinCurrentMonth:Z

.field private mLastReloadMillis:J

.field private mLaunchDayView:Z

.field private mMonthDayNumberColor:I

.field private mMonthFocusedNumberColor:I

.field private mMonthFocuseddayNumberColor:I

.field mMonthHeight:I

.field private mMonthNotWithinDayColor:I

.field private mMonthOtherMonthDayNumberColor:I

.field private mMonthSaturdayNumberColor:I

.field private mMonthSundayNumberColor:I

.field private mMonthWeekNumColor:I

.field private mNavigator:Lcom/android/calendar/Navigator;

.field private mNumDays:I

.field private mOtherViewCalendar:Landroid/text/format/Time;

.field private mPaint:Landroid/graphics/Paint;

.field private mParentActivity:Lcom/android/calendar/MonthActivity;

.field private mPressedCol:I

.field private mPressedRow:I

.field private mPrevNextDayTextSize:I

.field private mPrevSelectedDayOfMonth:I

.field private mPrevSelectedMonth:I

.field private mPrevTitleTextViewText:Ljava/lang/CharSequence;

.field private mRect:Landroid/graphics/Rect;

.field private mRedrawScreen:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSavedTime:Landroid/text/format/Time;

.field private mSelectionMode:I

.field private mTempTime:Landroid/text/format/Time;

.field private mTodayBackground:Landroid/graphics/drawable/Drawable;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mViewCalendar:Landroid/text/format/Time;

.field private mWeekTextSize:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/calendar/MonthView;->MONTH_EVENT_NUM:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/android/calendar/MonthView;->KOREAN_HOLIDAY_EVENT:I

    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    const/16 v0, 0x1f

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v3, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    iput v2, p0, Lcom/android/calendar/MonthView;->mPressedRow:I

    iput v2, p0, Lcom/android/calendar/MonthView;->mPressedCol:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/calendar/MonthView;->mIsWithinCurrentMonth:Z

    new-instance v0, Lcom/android/calendar/MonthView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthView$1;-><init>(Lcom/android/calendar/MonthView;)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/calendar/MonthView$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthView$4;-><init>(Lcom/android/calendar/MonthView;)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mCancelCallback:Ljava/lang/Runnable;

    iget-object v0, p1, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object p2, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    new-instance v0, Lcom/android/calendar/EventGeometry;

    invoke-direct {v0}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    invoke-direct {p0, p1}, Lcom/android/calendar/MonthView;->init(Lcom/android/calendar/MonthActivity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/MonthView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/MonthView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/MonthView;->mPressedCol:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/calendar/MonthView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/MonthView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/MonthView;)[[I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/MonthView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/MonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/MonthView;->mIsWithinCurrentMonth:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/calendar/MonthView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/calendar/MonthView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/MonthView;->calEventDay()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/MonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/MonthView;->mLaunchDayView:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/calendar/MonthView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/MonthView;->mLaunchDayView:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/calendar/MonthView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/MonthView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/MonthView;->mPressedRow:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/calendar/MonthView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/MonthView;->mPressedRow:I

    return p1
.end method

.method private calEventDay()V
    .locals 15

    const/16 v14, 0x8

    iget v9, p0, Lcom/android/calendar/MonthView;->mNumDays:I

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v1, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v9, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    iget v11, v3, Lcom/android/calendar/Event;->startDay:I

    iget v12, v3, Lcom/android/calendar/Event;->endDay:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v14, :cond_2

    iget-object v12, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v12, v12, v6

    const/4 v13, 0x0

    aput v13, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v10, :cond_3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    iget v11, v3, Lcom/android/calendar/Event;->startDay:I

    iget v2, v3, Lcom/android/calendar/Event;->endDay:I

    if-gt v11, v1, :cond_5

    if-lt v2, v1, :cond_5

    iget v12, v3, Lcom/android/calendar/Event;->calendarId:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    if-eqz v0, :cond_4

    iget-object v12, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v12, v12, v6

    const/16 v13, -0xa

    aput v13, v12, v4

    :goto_5
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v14, :cond_5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iget-object v12, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v12, v12, v6

    iget v13, v3, Lcom/android/calendar/Event;->color:I

    aput v13, v12, v4

    goto :goto_5

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 15

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    const/4 v8, 0x1

    :goto_0
    iget-object v7, p0, Lcom/android/calendar/MonthView;->mRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v10

    iget v0, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int/2addr v0, v10

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x1

    if-ne v10, v0, :cond_3

    const/4 v12, 0x1

    :goto_1
    const/4 v14, 0x2

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v0, "preferences_first_day_of_week"

    const-string v5, "2"

    invoke-interface {v13, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 v0, 0x1

    if-ne v11, v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    :cond_0
    :goto_2
    const/4 v14, 0x1

    const/4 v3, 0x0

    :goto_3
    iget v0, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    if-ge v3, v0, :cond_6

    invoke-direct {p0, v3, v14, v12, v9}, Lcom/android/calendar/MonthView;->getWeekOfYear(IIZLjava/util/Calendar;)I

    move-result v2

    const/4 v4, 0x0

    :goto_4
    const/16 v0, 0x8

    if-ge v4, v0, :cond_5

    iget-object v6, p0, Lcom/android/calendar/MonthView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/MonthView;->drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    if-ne v11, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V
    .locals 21

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->isSelected(II)Z

    move-result v11

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v18

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v9

    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v17

    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    if-ne v9, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v2

    move-object/from16 v0, v17

    iget v3, v0, Landroid/text/format/Time;->year:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v2

    move-object/from16 v0, v17

    iget v3, v0, Landroid/text/format/Time;->month:I

    if-ne v2, v3, :cond_1

    if-eqz p4, :cond_1

    const/4 v14, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mCellHeight:I

    mul-int v2, v2, p3

    add-int/lit8 v20, v2, 0x1

    if-nez p4, :cond_8

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mFirstColumnCellWidth:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mCellHeight:I

    add-int v2, v2, v20

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mPressedRow:I

    move/from16 v0, p3

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mPressedCol:I

    move/from16 v0, p4

    if-ne v2, v0, :cond_2

    if-nez v11, :cond_2

    const/4 v11, 0x1

    :cond_2
    if-eqz v11, :cond_a

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_1
    if-eqz v18, :cond_4

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    if-eqz v18, :cond_5

    if-eqz p4, :cond_5

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    move v7, v14

    invoke-direct/range {v2 .. v7}, Lcom/android/calendar/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    :cond_5
    :goto_2
    if-nez p4, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthWeekNumColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mWeekTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v15, v2, v3

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/MonthView;->mDayTextSize:I

    div-int/lit8 v3, v3, 0x5

    add-int v16, v2, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    const/4 v13, 0x0

    if-eqz p4, :cond_7

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mDayTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthOtherMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    const-string v4, "00"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v15, v2, v3

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/MonthView;->mDayTextSize:I

    div-int/lit8 v3, v3, 0x3

    add-int v16, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mFirstColumnCellWidth:I

    add-int/lit8 v3, p4, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/MonthView;->mCellWidth:I

    mul-int/2addr v3, v4

    add-int v19, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mCellWidth:I

    add-int v2, v2, v19

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v2

    move/from16 v0, p4

    if-ne v2, v0, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthNotWithinDayColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v2, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_a
    if-eqz v18, :cond_b

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    if-eqz v18, :cond_5

    if-eqz p4, :cond_5

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    move v7, v14

    invoke-direct/range {v2 .. v7}, Lcom/android/calendar/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mPrevNextDayTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_3

    :cond_d
    const/4 v2, 0x1

    if-ne v13, v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthSundayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_e
    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthFocusedNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v2}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v2

    add-int v2, v2, p4

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v10, v2, 0x1

    const/4 v2, 0x1

    if-ne v10, v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthSundayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_10
    const/4 v2, 0x7

    if-ne v10, v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthSaturdayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4
.end method

.method private drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .locals 5

    iget v3, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int v0, p1, v3

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x7

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/calendar/MonthView;->mEventHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/calendar/MonthView;->mEventWidth:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    :cond_1
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, v2, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/calendar/MonthView;->mEventWidth:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    goto :goto_0
.end method

.method private drawingCalc(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_2

    :cond_0
    if-lez p1, :cond_2

    iget v0, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget v0, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private getWeekOfYear(IIZLjava/util/Calendar;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4, p1, p2}, Lcom/android/calendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v4

    invoke-virtual {p4, v3, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3, p1, p2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v3

    invoke-virtual {p4, v5, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v3

    invoke-virtual {p4, v6, v3}, Ljava/util/Calendar;->set(II)V

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v0

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v2

    if-ge p1, v5, :cond_2

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    const/16 v0, 0xb

    :goto_1
    invoke-virtual {p4, v5, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p4, v6, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0xb

    if-ne v0, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private init(Lcom/android/calendar/MonthActivity;)V
    .locals 14

    const/4 v13, 0x6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthView;->setClickable(Z)V

    iput-object p1, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    iget-object v8, p0, Lcom/android/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v4, v5}, Landroid/text/format/Time;->set(J)V

    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iput v0, v8, Landroid/text/format/Time;->monthDay:I

    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v8, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v8, v9}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v4, v5}, Landroid/text/format/Time;->set(J)V

    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    if-nez v8, :cond_0

    new-instance v8, Lcom/android/calendar/TwDayOfMonthCursor;

    iget-object v9, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->year:I

    iget-object v10, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->month:I

    iget-object v11, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v11, v11, Landroid/text/format/Time;->monthDay:I

    iget-object v12, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v12}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/calendar/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    :cond_0
    iput v13, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v0, :cond_3

    :goto_0
    if-eqz v0, :cond_2

    iget-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v8}, Lcom/android/calendar/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v1

    iget-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v8, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    iget v8, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    if-eq v8, v13, :cond_1

    const/4 v8, 0x5

    iput v8, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    :cond_1
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    new-instance v9, Lcom/android/calendar/MonthView$2;

    invoke-direct {v9, p0}, Lcom/android/calendar/MonthView$2;-><init>(Lcom/android/calendar/MonthView;)V

    invoke-virtual {v8, v9}, Lcom/android/calendar/TwDayOfMonthCursor;->setOnCursorMoveListener(Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    iget v8, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    packed-switch v8, :pswitch_data_0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    const-wide/32 v9, 0x200000

    invoke-virtual {v8, v9, v10}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020051

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020052

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020065

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f08000e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthWeekNumColor:I

    const v8, 0x7f08000b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthOtherMonthDayNumberColor:I

    const v8, 0x7f080009

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthDayNumberColor:I

    const v8, 0x7f08000a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthFocusedNumberColor:I

    const v8, 0x7f08000c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthSundayNumberColor:I

    const v8, 0x7f08000d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthSaturdayNumberColor:I

    const v8, 0x7f080013

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthNotWithinDayColor:I

    const v8, 0x7f08002e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthFocuseddayNumberColor:I

    const v8, 0x7f0b0007

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    const v8, 0x7f0b0008

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    const v8, 0x7f0b0009

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mFirstColumnCellWidth:I

    const v8, 0x7f0b0016

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mEventWidth:I

    const v8, 0x7f0b0017

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mEventHeight:I

    const v8, 0x7f0b0010

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mDayTextSize:I

    const v8, 0x7f0b0011

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mPrevNextDayTextSize:I

    const v8, 0x7f0b0012

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mWeekTextSize:I

    const v8, 0x7f0b0014

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mFocusDayTextSize:I

    const v8, 0x7f0b0015

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mFocusDayLunarTextSize:I

    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/calendar/MonthView$3;

    invoke-direct {v10, p0}, Lcom/android/calendar/MonthView$3;-><init>(Lcom/android/calendar/MonthView;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_0
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020050

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private sendAccessibilityEvents()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v0

    iget v2, p0, Lcom/android/calendar/MonthView;->mPrevSelectedMonth:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lcom/android/calendar/MonthView;->mPrevSelectedDayOfMonth:I

    if-eq v2, v0, :cond_0

    :cond_2
    iput v1, p0, Lcom/android/calendar/MonthView;->mPrevSelectedMonth:I

    iput v0, p0, Lcom/android/calendar/MonthView;->mPrevSelectedDayOfMonth:I

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/calendar/MonthView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method


# virtual methods
.method animationFinished()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    return-void
.end method

.method animationStarted()V
    .locals 0

    return-void
.end method

.method public clearCachedEvents()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/MonthView;->mLastReloadMillis:J

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v1

    const v5, 0x10012

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_1
    if-ge v9, v7, :cond_3

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    iget v0, v6, Lcom/android/calendar/Event;->startDay:I

    iget v3, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int/2addr v0, v3

    add-int/lit8 v11, v0, 0x1

    iget v0, v6, Lcom/android/calendar/Event;->endDay:I

    iget v3, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int/2addr v0, v3

    add-int/lit8 v8, v0, 0x1

    if-gt v11, v10, :cond_2

    if-lt v8, v10, :cond_2

    add-int/lit8 v13, v13, 0x1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v13}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFirstJulianDay()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    return v0
.end method

.method public getLastJulianDay()I
    .locals 2

    iget v0, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    iget v1, p0, Lcom/android/calendar/MonthView;->mNumDays:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method getPressedColumn(I)I
    .locals 3

    iget v1, p0, Lcom/android/calendar/MonthView;->mFirstColumnCellWidth:I

    if-gt p1, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/4 v0, 0x7

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/calendar/MonthView;->mFirstColumnCellWidth:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method getPressedRow(I)I
    .locals 2

    iget v1, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    div-int v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    const/4 v0, 0x5

    :cond_1
    return v0
.end method

.method public getPrevNextTime(I)Landroid/text/format/Time;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v4, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget v4, v3, Landroid/text/format/Time;->month:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/text/format/Time;->month:I

    iput v7, v3, Landroid/text/format/Time;->hour:I

    iput v7, v3, Landroid/text/format/Time;->minute:I

    iput v7, v3, Landroid/text/format/Time;->second:I

    new-instance v0, Lcom/android/calendar/TwDayOfMonthCursor;

    iget v4, v3, Landroid/text/format/Time;->year:I

    iget v5, v3, Landroid/text/format/Time;->month:I

    iget-object v6, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v6}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v6

    invoke-direct {v0, v4, v5, v8, v6}, Lcom/android/calendar/TwDayOfMonthCursor;-><init>(IIII)V

    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    const/16 v4, 0x1f

    const/16 v5, 0xb

    const/16 v6, 0x7f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/text/format/Time;->set(III)V

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    :cond_0
    return-object v3
.end method

.method getSelectedColumn()I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v0

    return v0
.end method

.method public getSelectedDate()Landroid/text/format/Time;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->month:I

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    iput v3, v0, Landroid/text/format/Time;->hour:I

    iput v3, v0, Landroid/text/format/Time;->minute:I

    iput v3, v0, Landroid/text/format/Time;->second:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-object v0
.end method

.method public getSelectedMillis()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedDate()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedMillisForAllday()J
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    const-string v1, "UTC"

    iget v2, v0, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v2

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    iput v4, v0, Landroid/text/format/Time;->hour:I

    iput v4, v0, Landroid/text/format/Time;->minute:I

    iput v4, v0, Landroid/text/format/Time;->second:I

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTime()Landroid/text/format/Time;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget v6, v3, Landroid/text/format/Time;->month:I

    iget-object v7, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v7}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v3, Landroid/text/format/Time;->month:I

    iget-object v6, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v6}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v6

    iput v6, v3, Landroid/text/format/Time;->monthDay:I

    invoke-static {v3}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    if-ne v2, v5, :cond_0

    new-instance v4, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v6, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    iget v6, v4, Landroid/text/format/Time;->hour:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/text/format/Time;->hour:I

    :goto_0
    iput v10, v3, Landroid/text/format/Time;->minute:I

    iput v10, v3, Landroid/text/format/Time;->second:I

    iput-boolean v10, v3, Landroid/text/format/Time;->allDay:Z

    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    return-object v3

    :cond_0
    const/16 v6, 0x8

    iput v6, v3, Landroid/text/format/Time;->hour:I

    goto :goto_0
.end method

.method public getSelectedTimeInMillis()J
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->month:I

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->second:I

    iput v1, v0, Landroid/text/format/Time;->second:I

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectionMode()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    return v0
.end method

.method public getTime()Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method public getWeekNum()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v1, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/calendar/MonthView;->drawingCalc(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v0}, Lcom/android/calendar/MonthView;->doDraw(Landroid/graphics/Canvas;)V

    iput-boolean v3, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/MonthView;->sendAccessibilityEvents()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-nez v3, :cond_3

    const/16 v3, 0x42

    if-eq p1, v3, :cond_0

    const/16 v3, 0x16

    if-eq p1, v3, :cond_0

    const/16 v3, 0x15

    if-eq p1, v3, :cond_0

    const/16 v3, 0x13

    if-eq p1, v3, :cond_0

    const/16 v3, 0x14

    if-ne p1, v3, :cond_2

    :cond_0
    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    iput-boolean v2, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/16 v3, 0x17

    if-ne p1, v3, :cond_3

    iput v2, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    iput-boolean v2, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    move v1, v2

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v2, v4}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->up()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->down()Z

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->down()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->up()Z

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->left()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->right()Z

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->right()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->left()Z

    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_8
    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    :sswitch_0
    iget v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-ne v4, v8, :cond_1

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    iput-boolean v8, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    invoke-static {v4, v5, v2, v3}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    iput-boolean v8, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->performLongClick()Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/MonthView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/MonthView;->drawingCalc(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    iget-boolean v3, v3, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    if-eqz v3, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v5, :cond_1

    iput v6, p0, Lcom/android/calendar/MonthView;->mPressedRow:I

    iput v6, p0, Lcom/android/calendar/MonthView;->mPressedCol:I

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v1

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v4

    invoke-interface {v3, v4, v5, v7}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;ZZ)V

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3, v2, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v4

    invoke-interface {v3, v4, v5, v7}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_1

    :pswitch_0
    iget v3, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    iput v6, p0, Lcom/android/calendar/MonthView;->mPressedRow:I

    iput v6, p0, Lcom/android/calendar/MonthView;->mPressedCol:I

    iget v3, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v1

    iget v3, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    if-ne v3, v8, :cond_3

    if-ne v2, v8, :cond_3

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3, v2, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthView;->playSoundEffect(I)V

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    iput-boolean v5, v3, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-nez v2, :cond_5

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v4

    invoke-interface {v3, v4, v5, v7}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;ZZ)V

    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v4

    invoke-interface {v3, v4, v5, v7}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method reloadEvents()V
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x0

    new-instance v11, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iput v12, v11, Landroid/text/format/Time;->monthDay:I

    iput v6, v11, Landroid/text/format/Time;->hour:I

    iput v6, v11, Landroid/text/format/Time;->minute:I

    iput v6, v11, Landroid/text/format/Time;->second:I

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v9

    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/MonthView;->mNumDays:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v5, p0, Lcom/android/calendar/MonthView;->mLastReloadMillis:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide v7, p0, Lcom/android/calendar/MonthView;->mLastReloadMillis:J

    iget v1, p0, Lcom/android/calendar/MonthView;->mNumDays:I

    move-wide v3, v9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventLoader:Lcom/android/calendar/EventLoader;

    new-instance v5, Lcom/android/calendar/MonthView$5;

    invoke-direct {v5, p0, v2}, Lcom/android/calendar/MonthView$5;-><init>(Lcom/android/calendar/MonthView;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/calendar/MonthView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selection_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    const-string v0, "selected_day_of_month"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->setSelectedDayOfMonth(I)V

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selection_mode"

    iget v1, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "selected_day_of_month"

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setChangedTime(Landroid/text/format/Time;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v3, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    return-void
.end method

.method setDetailedView(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    return-void
.end method

.method public setSelectedTime(Landroid/text/format/Time;)V
    .locals 10

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    invoke-virtual {v5, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iput v4, v5, Landroid/text/format/Time;->monthDay:I

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v5, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v5, v6}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    new-instance v5, Lcom/android/calendar/TwDayOfMonthCursor;

    iget v6, p1, Landroid/text/format/Time;->year:I

    iget v7, p1, Landroid/text/format/Time;->month:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    iget-object v9, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v9}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/calendar/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    iget v6, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Lcom/android/calendar/TwDayOfMonthCursor;->setSelectedDayOfMonth(I)V

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_2

    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v1

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v5, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    iget v5, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    const/4 v5, 0x5

    iput v5, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    packed-switch v5, :pswitch_data_0

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f020051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    new-instance v6, Lcom/android/calendar/MonthView$6;

    invoke-direct {v6, p0}, Lcom/android/calendar/MonthView$6;-><init>(Lcom/android/calendar/MonthView;)V

    invoke-virtual {v5, v6}, Lcom/android/calendar/TwDayOfMonthCursor;->setOnCursorMoveListener(Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;)V

    :cond_1
    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    iput-boolean v4, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f020050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setSelectionMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    return-void
.end method

.method public showQuickAddDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthActivity;->showDialog(I)V

    return-void
.end method

.method public updateView()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
