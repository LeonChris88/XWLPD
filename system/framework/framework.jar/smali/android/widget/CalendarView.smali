.class public Landroid/widget/CalendarView;
.super Landroid/widget/FrameLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$WeekView;,
        Landroid/widget/CalendarView$WeeksAdapter;,
        Landroid/widget/CalendarView$ScrollStateRunnable;,
        Landroid/widget/CalendarView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field private static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDateTextSize:I

.field private mDayLabels:[Ljava/lang/String;

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private final mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

.field private final mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private final mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private final mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekMinVisibleHeight:I

.field private final mWeekNumberColor:I

.field private final mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/CalendarView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    const/16 v9, 0xc

    iput v9, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    const/16 v9, 0x14

    iput v9, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    const/4 v9, 0x7

    iput v9, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    const v9, 0x3d4ccccd

    iput v9, p0, Landroid/widget/CalendarView;->mFriction:F

    const v9, 0x3eaa7efa

    iput v9, p0, Landroid/widget/CalendarView;->mVelocityScale:F

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    new-instance v9, Landroid/widget/CalendarView$ScrollStateRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Landroid/widget/CalendarView$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView;Landroid/widget/CalendarView$1;)V

    iput-object v9, p0, Landroid/widget/CalendarView;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "MM/dd/yyyy"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Landroid/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    sget-object v9, Lcom/android/internal/R$styleable;->CalendarView:[I

    const v10, 0x101035d

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v10

    iget-object v10, v10, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v7, v9}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const-string v9, "01/01/1900"

    iget-object v10, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v9, v10}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    :cond_1
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v6, v9}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    const-string v9, "01/01/2100"

    iget-object v10, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v9, v10}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    :cond_3
    iget-object v9, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v10, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Max date cannot be before min date."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_4
    const/4 v9, 0x4

    const/4 v10, 0x6

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    const/16 v9, 0x9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xc

    const v10, 0x1030046

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sget-object v9, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v3, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v9, 0x0

    const/16 v10, 0xe

    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mDateTextSize:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v9, 0xb

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v9, 0x1

    const/high16 v10, 0x4140

    invoke-static {v9, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    const/4 v9, 0x1

    const/high16 v10, 0x4000

    invoke-static {v9, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    const/4 v9, 0x1

    const/high16 v10, 0x41a0

    invoke-static {v9, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    const/4 v9, 0x1

    const/high16 v10, 0x40c0

    invoke-static {v9, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    const/4 v9, 0x1

    const/high16 v10, 0x3f80

    invoke-static {v9, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v9, 0x109002d

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    const v9, 0x102000a

    invoke-virtual {p0, v9}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const v9, 0x102026e

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    const v9, 0x102026d

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-direct {p0, v8}, Landroid/widget/CalendarView;->setUpHeader(I)V

    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpListView()V

    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpAdapter()V

    iget-object v9, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v9, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v10, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/CalendarView;->invalidate()V

    return-void

    :cond_5
    iget-object v9, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v10, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0

    :cond_6
    iget-object v9, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/widget/CalendarView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/CalendarView;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/widget/CalendarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/CalendarView;Ljava/util/Calendar;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/CalendarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/CalendarView;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/CalendarView;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/CalendarView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mDateTextSize:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$WeeksAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/CalendarView;Landroid/widget/AbsListView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/CalendarView;Landroid/widget/AbsListView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarView;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method static synthetic access$702(Landroid/widget/CalendarView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$802(Landroid/widget/CalendarView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$900(Landroid/widget/CalendarView;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    return v0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .locals 11

    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not precede toDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v4, v6, v8

    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    sub-long v6, v2, v4

    add-long/2addr v6, v0

    const-wide/32 v8, 0x240c8400

    div-long/2addr v6, v8

    long-to-int v6, v6

    return v6
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time not between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v4, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    if-le v4, v5, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    if-eqz p3, :cond_4

    iget-object v4, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    if-lt v3, v1, :cond_5

    if-gt v3, v2, :cond_5

    if-eqz p4, :cond_9

    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v5, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    if-eqz p2, :cond_8

    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    goto :goto_0

    :cond_8
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v7}, Landroid/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_6

    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_1
.end method

.method private isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3

    const/4 v2, 0x6

    const/4 v0, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarView$WeekView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v1, v7

    iget-wide v7, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_6

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    :goto_1
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    if-ge v7, v8, :cond_7

    const/4 v6, 0x1

    :goto_2
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_8

    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarView$WeekView;

    :cond_2
    :goto_3
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    :goto_4
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_a

    const/4 v5, 0x1

    :goto_5
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-nez v7, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_5

    if-gez v5, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object v3

    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_c

    const/4 v7, 0x5

    const/4 v8, -0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    :goto_6
    invoke-direct {p0, v3}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    :cond_5
    iput-wide v1, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    iget v7, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    iput v7, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    goto :goto_0

    :cond_6
    iget-wide v7, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-lez v7, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_2

    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarView$WeekView;

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    goto :goto_4

    :cond_a
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    if-nez v7, :cond_b

    const/16 v7, 0xb

    if-ne v4, v7, :cond_b

    const/4 v5, -0x1

    goto :goto_5

    :cond_b
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    goto :goto_5

    :cond_c
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_6
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/widget/CalendarView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 9

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget v0, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    if-eq v0, v7, :cond_0

    iput v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    iget v3, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    invoke-virtual {v0, v3}, Landroid/widget/CalendarView$WeeksAdapter;->setFocusMonth(I)V

    const/16 v6, 0x34

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v5, 0x34

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {p0}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarView$WeeksAdapter;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarView$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$1;-><init>(Landroid/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarView$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setUpHeader(I)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget v4, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    iget v4, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    iget v5, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    add-int v1, v4, v5

    :goto_0
    if-ge v2, v1, :cond_1

    const/4 v4, 0x7

    if-le v2, v4, :cond_0

    add-int/lit8 v0, v2, -0x7

    :goto_1
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    iget v5, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-boolean v4, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const/4 v2, 0x1

    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_5

    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, -0x1

    if-le p1, v4, :cond_2

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    iget v4, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private setUpListView()V
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarView$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$2;-><init>(Landroid/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarView$WeeksAdapter;->access$100(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setDate(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarView;->setDate(JZZ)V

    return-void
.end method

.method public setDate(JZZ)V
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$100(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarView$WeeksAdapter;->access$200(Landroid/widget/CalendarView$WeeksAdapter;)V

    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/CalendarView;->setUpHeader(I)V

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$200(Landroid/widget/CalendarView$WeeksAdapter;)V

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$100(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarView;->setDate(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$100(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$200(Landroid/widget/CalendarView$WeeksAdapter;)V

    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarView;->setDate(J)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/CalendarView;->setUpHeader(I)V

    goto :goto_0
.end method
