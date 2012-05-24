.class public Lcom/android/calendar/CalendarView;
.super Landroid/view/View;
.source "CalendarView.java"

# interfaces
.implements Lcom/android/calendar/CalendarInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarView$UpdateCurrentTime;,
        Lcom/android/calendar/CalendarView$LaunchToCreateEvent;,
        Lcom/android/calendar/CalendarView$ScrollToSelectedHour;,
        Lcom/android/calendar/CalendarView$ContinueScroll;,
        Lcom/android/calendar/CalendarView$DragRunnable;,
        Lcom/android/calendar/CalendarView$CalendarDoubleGestureListener;,
        Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;,
        Lcom/android/calendar/CalendarView$DayHeader;
    }
.end annotation


# static fields
.field private static AMPM_FONT_SIZE:I

.field private static CURRENT_TIME_LINE_BORDER_WIDTH:I

.field private static CURRENT_TIME_LINE_HEIGHT:I

.field private static CURRENT_TIME_LINE_SIDE_BUFFER:I

.field private static CURRENT_TIME_MARKER_HEIGHT:I

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static HOURS_FONT_SIZE:I

.field private static MIN_CELL_WIDTH_FOR_TEXT:I

.field private static MIN_EVENT_HEIGHT:F

.field private static mCalendarGridAreaSelected:I

.field private static mCalendarGridLineHorizontalColor:I

.field private static mCalendarHourLabel:I

.field private static mEventTextColor:I

.field private static mScale:F

.field private static mWeekDayColor:I


# instance fields
.field private final EVENT_INDEX_ACCESS_LEVEL:I

.field private final EVENT_INDEX_DTSTART:I

.field private final EVENT_INDEX_RRULE:I

.field private final EVENT_INDEX_TIMEZONE:I

.field private TAG:Ljava/lang/String;

.field private final WEEK_ALLDAY_EVENT_NUM:I

.field private dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

.field private drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field private mAllDayBottomMargin:I

.field private mAllDayDivider:Landroid/graphics/drawable/Drawable;

.field private mAllDayDividerHeight:I

.field private mAllDayTitleTextSize:I

.field private mAmString:Ljava/lang/String;

.field mBaseDate:Landroid/text/format/Time;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBlurMaskfilter:Landroid/graphics/BlurMaskFilter;

.field private mBottomGap:I

.field private mBrief:Z

.field private mBriefBitmap:Landroid/graphics/Bitmap;

.field private mBriefBottomMargin:F

.field private mBriefCanvas:Landroid/graphics/Canvas;

.field private mBriefHourMargin:F

.field private mBriefHourTextSize:I

.field protected mCalendarApp:Lcom/android/calendar/CalendarApplication;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mChangeFirstHour:Z

.field private mCharWidths:[F

.field private mComputeSelectedEvents:Z

.field private mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

.field private mCurrentTime:Landroid/text/format/Time;

.field private mCurrentTimeLineColor:I

.field private mCurrentTimeMarkerBorderColor:I

.field private mDateRange:Ljava/lang/String;

.field private mDateStrWidth:I

.field private mDayAllDayColorWidth:I

.field private mDayAllDayHeight:I

.field private mDayAllDayTitleMarginLeft:I

.field private mDayAllDaysHeight:I

.field private mDayBgColor:I

.field private mDayCellHeight:I

.field private mDayCellWidth:I

.field private mDayFirstHourOffset:I

.field private mDayGap:F

.field private mDayGridColor:I

.field private mDayHourGap:I

.field private mDayHourWidth:I

.field private mDayStrs:[Ljava/lang/String;

.field private mDayStrs2Letter:[Ljava/lang/String;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDestRect:Landroid/graphics/Rect;

.field private mDetailedView:Ljava/lang/String;

.field private mDistanceY:I

.field private mDragEventInitTop:F

.field private mDragEventOrgRect:Landroid/graphics/Rect;

.field private mDragEventRectShadow:F

.field private mDragEventRectSpan:F

.field private mDragEventRectStroke:F

.field private mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

.field private mDragScrollStartY:I

.field private mDraggingMotionEvent:Landroid/view/MotionEvent;

.field private mDrawMoreIcon:Z

.field protected mDrawTextInEventRect:Z

.field private mDurationDay:I

.field private mEarliestStartHour:[I

.field private mEventAgendaTextSize:I

.field protected final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEventRectRoundRadiusLarge:F

.field private mEventRectRoundRadiusSmall:F

.field private mEventRectStroke:F

.field private mEventTextAscent:I

.field private mEventTextHeight:I

.field private mEventTextMargin:I

.field private mEventTextPaint:Landroid/graphics/Paint;

.field private mEventTextSize:I

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

.field private mFirstCell:I

.field private mFirstDate:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridAreaHeight:I

.field private mHasAllDayEvent:[[I

.field private mHourGap:I

.field private mHourStrs:[Ljava/lang/String;

.field private mHourTextSize:I

.field private mHoursWidth:I

.field private mIgnoreEvent:Z

.field private mLastJulianDay:I

.field private mLastMotionY:I

.field private mLaunchToCreateEvent:Lcom/android/calendar/CalendarView$LaunchToCreateEvent;

.field private mMaxAllDayEvents:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field private mMoreEventIndex:I

.field private mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mMoreIconPressed:Landroid/graphics/drawable/Drawable;

.field private mMoreIconRect:Landroid/graphics/Rect;

.field private mNormalTextSize:I

.field private mNormalTextTopMargin:F

.field protected mNumDays:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private mOrdinaryWeekString:[Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field protected mParentActivity:Lcom/android/calendar/CalendarActivity;

.field private mPmString:Ljava/lang/String;

.field private mPrevBox:Landroid/graphics/Rect;

.field private mPrevSelectedEvent:Lcom/android/calendar/Event;

.field private mPrevSelectionDay:I

.field private mPrevSelectionHour:I

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mRedrawScreen:Z

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field private mSameTimeEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStartY:I

.field private mScrollToHour:Lcom/android/calendar/CalendarView$ScrollToSelectedHour;

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

.field private mSelectionAllDay:Z

.field private mSelectionDay:I

.field private mSelectionDayofWeek:Z

.field private mSelectionHour:I

.field private mSelectionMode:I

.field private mSelectionPaint:Landroid/graphics/Paint;

.field private mSolarLunarConverter:Lcom/android/calendar/lunar/SolarLunarConverter;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mStartDay:I

.field mTempDate:Landroid/text/format/Time;

.field private mTitleTextViewLeft:Landroid/widget/TextView;

.field private mTitleTextViewRight:Landroid/widget/TextView;

.field private mTodayJulianDay:I

.field private mTouchMode:I

.field private mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mViewHeight:I

.field private mViewStartY:I

.field private mViewWidth:I

.field private mWeekAllDayBg:Landroid/graphics/drawable/Drawable;

.field private mWeekAllDayHeight:I

.field private mWeekAllDayWidth:I

.field private mWeekBannerHeight:I

.field private mWeekBannerTextSize:I

.field private mWeekCellHeight:I

.field private mWeekCellWidth:I

.field private mWeekEventRectRoundRadius:F

.field private mWeekFocus:Landroid/graphics/drawable/Drawable;

.field private mWeekFocusDay:Landroid/graphics/drawable/Drawable;

.field private mWeekHeaderBg:Landroid/graphics/drawable/Drawable;

.field private mWeekHourGap:I

.field private mWeekHourTextSize:I

.field private mWeekHourWidth:I

.field private mWeekSaturdayColor:I

.field private mWeekSundayColor:I

.field private mWeekToday:Landroid/graphics/drawable/Drawable;

.field private mhasAllDayEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v0, 0x3f80

    sput v0, Lcom/android/calendar/CalendarView;->mScale:F

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "hasAlarm"

    aput-object v1, v0, v4

    const-string v1, "dtstart"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const-string v1, "eventTimezone"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/calendar/CalendarView;->EVENT_PROJECTION:[Ljava/lang/String;

    sput v5, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    sput v3, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    sput v6, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_HEIGHT:I

    sput v4, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    const/16 v0, 0xc

    sput v0, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    const/16 v0, 0x9

    sput v0, Lcom/android/calendar/CalendarView;->AMPM_FONT_SIZE:I

    const/16 v0, 0x1b

    sput v0, Lcom/android/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    const/high16 v0, 0x4170

    sput v0, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "CalendarView"

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/CalendarView;->EVENT_INDEX_DTSTART:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/calendar/CalendarView;->EVENT_INDEX_RRULE:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/calendar/CalendarView;->EVENT_INDEX_TIMEZONE:I

    iput v3, p0, Lcom/android/calendar/CalendarView;->EVENT_INDEX_ACCESS_LEVEL:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/calendar/CalendarView;->WEEK_ALLDAY_EVENT_NUM:I

    new-instance v0, Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/CalendarView$ContinueScroll;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    new-instance v0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mScrollToHour:Lcom/android/calendar/CalendarView$ScrollToSelectedHour;

    new-instance v0, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mLaunchToCreateEvent:Lcom/android/calendar/CalendarView$LaunchToCreateEvent;

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/calendar/CalendarView$DayHeader;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    new-instance v0, Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarView$UpdateCurrentTime;-><init>(Lcom/android/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSrcRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDestRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mMoreIconRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintShadow:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40a0

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mBlurMaskfilter:Landroid/graphics/BlurMaskFilter;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    iput-boolean v7, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    iput-boolean v7, p0, Lcom/android/calendar/CalendarView;->mChangeFirstHour:Z

    iput v6, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    iput v6, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/16 v0, 0x1f4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSameTimeEvents:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/calendar/CalendarView$DragRunnable;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/CalendarView$DragRunnable;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mIgnoreEvent:Z

    iput v3, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    new-instance v0, Lcom/android/calendar/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarView$1;-><init>(Lcom/android/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    const-string v0, "[\t\n],"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    sget v0, Lcom/android/calendar/CalendarView;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/calendar/CalendarView;->mScale:F

    sget v0, Lcom/android/calendar/CalendarView;->mScale:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayHeight:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayHeight:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNormalTextSize:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNormalTextSize:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    sget v0, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    sget v0, Lcom/android/calendar/CalendarView;->AMPM_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->AMPM_FONT_SIZE:I

    sget v0, Lcom/android/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    sget v0, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    iget-object v0, p1, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventLoader:Lcom/android/calendar/EventLoader;

    new-instance v0, Lcom/android/calendar/EventGeometry;

    invoke-direct {v0}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v1, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    invoke-virtual {v0, v5}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarApplication;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCalendarApp:Lcom/android/calendar/CalendarApplication;

    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v0, p1, v3}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    instance-of v0, p1, Lcom/android/calendar/WeekActivity;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;-><init>(Lcom/android/calendar/CalendarView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->init(Landroid/content/Context;)V

    return-void

    :cond_1
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/CalendarView$CalendarDoubleGestureListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/CalendarView$CalendarDoubleGestureListener;-><init>(Lcom/android/calendar/CalendarView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/calendar/CalendarView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/CalendarView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/CalendarView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/CalendarView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/CalendarView;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/CalendarView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/CalendarView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/calendar/CalendarView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$1612(Lcom/android/calendar/CalendarView;I)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1620(Lcom/android/calendar/CalendarView;I)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/CalendarView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/CalendarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/calendar/CalendarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/calendar/CalendarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/calendar/CalendarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mChangeFirstHour:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/calendar/CalendarView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/CalendarView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/CalendarView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/calendar/CalendarView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/calendar/CalendarView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/calendar/CalendarView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/calendar/CalendarView;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/CalendarView$UpdateCurrentTime;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/calendar/CalendarView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/calendar/CalendarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/CalendarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/CalendarView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/calendar/CalendarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/calendar/CalendarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/calendar/CalendarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    return p1
.end method

.method private adjustHourSelection()V
    .locals 5

    const/4 v4, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-gez v1, :cond_0

    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mhasAllDayEvents:Z

    if-eqz v1, :cond_0

    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    :cond_0
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-le v1, v2, :cond_1

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    :cond_1
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_4

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v0, v1, v2

    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mhasAllDayEvents:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    if-gez v1, :cond_2

    iput v3, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ge v1, v2, :cond_5

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_0
.end method

.method private computeFirstHour()V
    .locals 2

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_0
.end method

.method private computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 9

    const/4 v3, 0x0

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v5, p2, v0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v2, v5

    if-ge v2, p1, :cond_1

    move v2, p1

    :cond_1
    return v2
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int v9, v0, v3

    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/CalendarView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/CalendarView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v0, :cond_0

    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/CalendarView;->drawAllDayEvents(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_0
    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v13, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    const/4 v12, 0x0

    :goto_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v12, v0, :cond_2

    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/lit8 v3, v0, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    if-lt v9, v0, :cond_1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    if-ge v9, v0, :cond_1

    invoke-direct {p0, v9, p1, v5}, Lcom/android/calendar/CalendarView;->drawCurrentTimeMarker(ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    move-object v6, p0

    move v8, v2

    move-object v10, p1

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/calendar/CalendarView;->drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_1
    add-int/2addr v2, v13

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/CalendarView;->drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->drawAmPm(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawAllDayEvents(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->setEmpty()V

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v10, 0x0

    const/4 v2, 0x0

    move v12, v2

    :goto_0
    if-ge v12, v14, :cond_8

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    iget-boolean v3, v2, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_0

    move v2, v10

    :goto_1
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    move v10, v2

    goto :goto_0

    :cond_0
    iget v3, v2, Lcom/android/calendar/Event;->startDay:I

    iget v4, v2, Lcom/android/calendar/Event;->endDay:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    if-gt v3, v5, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-ge v4, v3, :cond_1

    move v2, v10

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v10

    int-to-float v3, v3

    iput v3, v2, Lcom/android/calendar/Event;->top:F

    iget v3, v2, Lcom/android/calendar/Event;->top:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/Event;->bottom:F

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/calendar/Event;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    int-to-float v3, v3

    iput v3, v2, Lcom/android/calendar/Event;->right:F

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v3, v2, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0200b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    iget v4, v2, Lcom/android/calendar/Event;->left:F

    float-to-int v4, v4

    iget v5, v2, Lcom/android/calendar/Event;->top:F

    float-to-int v5, v5

    iget v6, v2, Lcom/android/calendar/Event;->right:F

    float-to-int v6, v6

    iget v7, v2, Lcom/android/calendar/Event;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v3, v2, Lcom/android/calendar/Event;->top:F

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Lcom/android/calendar/Event;->bottom:F

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mDayAllDayColorWidth:I

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v2, Lcom/android/calendar/Event;->color:I

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mAllDayTitleTextSize:I

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v10

    add-int v16, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mAllDayTitleTextSize:I

    int-to-float v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDayColorWidth:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDayTitleMarginLeft:I

    sub-int v7, v3, v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [F

    const-string v5, "."

    invoke-virtual {v8, v5, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/high16 v5, 0x4040

    mul-float v11, v4, v5

    iget-object v4, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v18, v0

    iget-object v4, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v8, v4, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v21, v3

    move v3, v6

    move/from16 v6, v21

    :goto_2
    move/from16 v0, v17

    if-ge v5, v0, :cond_a

    aget v19, v18, v5

    add-float v6, v6, v19

    add-float v19, v6, v11

    int-to-float v0, v7

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_3

    if-nez v4, :cond_3

    aget v3, v18, v5

    sub-float v4, v6, v3

    const/4 v3, 0x1

    move v9, v5

    move/from16 v21, v3

    move v3, v4

    move/from16 v4, v21

    :cond_3
    int-to-float v0, v7

    move/from16 v19, v0

    cmpl-float v19, v6, v19

    if-ltz v19, :cond_6

    move v11, v3

    :goto_3
    add-int/lit8 v3, v17, -0x1

    if-lt v5, v3, :cond_7

    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mDayAllDayColorWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDayTitleMarginLeft:I

    add-int v17, v3, v4

    iget-object v2, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/CalendarView;->drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    if-ne v5, v9, :cond_4

    const-string v2, "..."

    move/from16 v0, v17

    int-to-float v3, v0

    add-float/2addr v3, v11

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-ge v2, v3, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/CalendarView;->mAllDayDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->mAllDayDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    add-int/lit8 v2, v10, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_7
    move v5, v9

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mDayBgColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    int-to-float v6, v2

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    return-void

    :cond_a
    move v11, v3

    goto/16 :goto_3

    :cond_b
    move v2, v10

    goto/16 :goto_1
.end method

.method private drawAmPm(Landroid/graphics/Canvas;)V
    .locals 9

    const/16 v8, 0xc

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Lcom/android/calendar/CalendarView;->mWeekHourTextSize:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lt v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v1, v6

    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v6, 0x1

    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_1
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_3

    iget v6, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    div-int/lit8 v0, v6, 0x2

    :goto_0
    iget v6, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    sub-int v3, v6, v0

    int-to-float v6, v3

    int-to-float v7, v5

    invoke-virtual {p1, v4, v6, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-ge v6, v8, :cond_2

    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v6, v7

    if-le v6, v8, :cond_2

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    rsub-int/lit8 v7, v7, 0xc

    iget v8, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v6, 0x1

    int-to-float v6, v3

    int-to-float v7, v5

    invoke-virtual {p1, v4, v6, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    goto :goto_0
.end method

.method private drawBriefDayView(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_b

    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iput v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    move-object/from16 v0, p2

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    move-object/from16 v0, p3

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v3, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    const v15, 0x7f0c0002

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefHourTextSize:I

    int-to-float v4, v4

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v0, v4

    move/from16 v16, v0

    const/4 v13, 0x0

    move-object v8, v3

    :goto_2
    move/from16 v0, p4

    if-ge v13, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    iget-boolean v4, v3, Lcom/android/calendar/Event;->bedrawed:Z

    if-eqz v4, :cond_11

    iget-boolean v4, v3, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v4, :cond_2

    move-object v3, v8

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object v8, v3

    goto :goto_2

    :cond_2
    iget v4, v3, Lcom/android/calendar/Event;->startDay:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-gt v4, v5, :cond_11

    iget v4, v3, Lcom/android/calendar/Event;->endDay:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-ge v4, v5, :cond_3

    move-object v3, v8

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    iget v5, v3, Lcom/android/calendar/Event;->top:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v3, v3, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    add-float/2addr v3, v4

    float-to-int v4, v3

    add-int/lit8 v6, v13, 0x1

    :goto_4
    move/from16 v0, p4

    if-ge v6, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    iget-boolean v7, v3, Lcom/android/calendar/Event;->bedrawed:Z

    if-eqz v7, :cond_10

    iget-boolean v7, v3, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v7, :cond_4

    move v3, v12

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v12, v3

    goto :goto_4

    :cond_4
    int-to-float v7, v4

    iget v9, v3, Lcom/android/calendar/Event;->top:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_10

    int-to-float v7, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    sub-float/2addr v7, v9

    iget v9, v3, Lcom/android/calendar/Event;->bottom:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_f

    iget v3, v3, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    :goto_6
    move v4, v3

    move v3, v6

    goto :goto_5

    :cond_5
    sub-int v3, v4, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    sub-float/2addr v4, v6

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v7, v3

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p2

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-le v3, v4, :cond_7

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    add-float/2addr v8, v9

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    add-int/lit8 v4, v13, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    add-int/lit8 v4, v13, -0x1

    move v6, v4

    :goto_7
    if-ltz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    iget-boolean v7, v4, Lcom/android/calendar/Event;->bedrawed:Z

    if-eqz v7, :cond_8

    iget-boolean v7, v4, Lcom/android/calendar/Event;->allDay:Z

    if-nez v7, :cond_8

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v4, v4, 0x3c

    iget v3, v3, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v3, v3, 0x3c

    sub-int/2addr v3, v4

    sget v4, Lcom/android/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    sub-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v8, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/CalendarView;->mHourGap:I

    sub-int/2addr v4, v9

    int-to-float v9, v4

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    const/high16 v17, 0x4000

    div-float v10, v10, v17

    add-float/2addr v4, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    sub-float/2addr v4, v10

    float-to-int v4, v4

    int-to-float v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v15, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    div-int/lit8 v8, v16, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v4, v3, v6, v7, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v14, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    move v4, v13

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    iget v6, v3, Lcom/android/calendar/Event;->top:F

    int-to-float v7, v5

    sub-float/2addr v6, v7

    iput v6, v3, Lcom/android/calendar/Event;->top:F

    iget v6, v3, Lcom/android/calendar/Event;->bottom:F

    int-to-float v7, v5

    sub-float/2addr v6, v7

    iput v6, v3, Lcom/android/calendar/Event;->bottom:F

    add-int/lit8 v3, v4, 0x1

    if-le v3, v12, :cond_d

    add-int/lit8 v3, p4, -0x1

    if-ge v12, v3, :cond_a

    if-le v12, v13, :cond_c

    move v13, v12

    move-object v3, v14

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v4, v6, -0x1

    move v6, v4

    goto/16 :goto_7

    :cond_9
    move-object v14, v8

    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/CalendarView;->drawMoreIcon(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    :cond_c
    move-object v3, v14

    goto/16 :goto_3

    :cond_d
    move v4, v3

    goto/16 :goto_9

    :cond_e
    move-object v4, v3

    goto/16 :goto_8

    :cond_f
    move v3, v4

    goto/16 :goto_6

    :cond_10
    move v3, v12

    goto/16 :goto_5

    :cond_11
    move-object v3, v8

    goto/16 :goto_3
.end method

.method private drawCalendarView(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDestRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayBgColor:I

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayGridColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v4, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->getNormalEventCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-direct {p0, p1, v3, v1, v0}, Lcom/android/calendar/CalendarView;->drawBriefDayView(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v4}, Lcom/android/calendar/CalendarView;->drawMoreIcon(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    iget v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTimeMarkerBorderColor:I

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    sget v1, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    sget v1, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4, p1, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTimeLineColor:I

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, p1, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawCurrentTimeMarker(ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f02008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    add-int/lit8 v0, v0, -0x3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    add-int/lit8 v0, v0, -0x8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawDayHeader(Ljava/lang/String;IIILandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V
    .locals 5

    int-to-float v0, p4

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    const v0, 0x259d23

    if-gt p3, v0, :cond_0

    const v0, 0x24dc87

    if-ge p3, v0, :cond_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstDate:I

    add-int/2addr v0, p2

    iget v2, p0, Lcom/android/calendar/CalendarView;->mMonthLength:I

    if-le v0, v2, :cond_2

    iget v2, p0, Lcom/android/calendar/CalendarView;->mMonthLength:I

    sub-int/2addr v0, v2

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    iget v2, v2, Lcom/android/calendar/CalendarView$DayHeader;->cell:I

    if-eq v2, p3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    new-instance v3, Lcom/android/calendar/CalendarView$DayHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/calendar/CalendarView$DayHeader;-><init>(Lcom/android/calendar/CalendarView$1;)V

    aput-object v3, v2, p2

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    iput p3, v2, Lcom/android/calendar/CalendarView$DayHeader;->cell:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    iput-object p1, v2, Lcom/android/calendar/CalendarView$DayHeader;->dayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    iput-object v0, v2, Lcom/android/calendar/CalendarView$DayHeader;->dayNum:Ljava/lang/String;

    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v2, p0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/calendar/CalendarView;->mWeekBannerTextSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/android/calendar/CalendarView$DayHeader;->dayName:Ljava/lang/String;

    invoke-virtual {p5, v3, v1, v2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mWeekBannerTextSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/android/calendar/CalendarView$DayHeader;->dayNum:Ljava/lang/String;

    invoke-virtual {p5, v2, v1, v0, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_5
    invoke-direct {p0, p2, p6}, Lcom/android/calendar/CalendarView;->getDayPaint(ILandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p6

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v0, p3, :cond_6

    sget v0, Lcom/android/calendar/CalendarView;->mWeekDayColor:I

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    const/4 v0, 0x1

    if-ne p7, v0, :cond_1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekSundayColor:I

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method

.method private drawDayHeaderAllDayIcon(ILandroid/graphics/Rect;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    const/4 v0, 0x5

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayHeight:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayWidth:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v1, v1, p1

    aget v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v1, v1, p1

    aget v1, v1, v0

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p4, p2, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayWidth:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    return-void
.end method

.method private drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 17

    const/4 v12, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getWidth()I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekHeaderBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekHeaderBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekAllDayBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/CalendarView;->mhasAllDayEvents:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v1, v16

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekAllDayBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekAllDayBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mWeekBannerTextSize:I

    int-to-float v1, v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v9, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v9, v10}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v2, v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v1, v8, :cond_1

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    add-int/2addr v1, v3

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    add-int/2addr v1, v3

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekFocusDay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekFocusDay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    if-ne v8, v15, :cond_3

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    add-int/2addr v1, v3

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    add-int/2addr v1, v3

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekToday:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekToday:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v1, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v1, v16

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/CalendarView;->drawDayHeaderAllDayIcon(ILandroid/graphics/Rect;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mStartDay:I

    add-int/2addr v1, v2

    aget-object v6, v13, v1

    move-object/from16 v5, p0

    move v7, v2

    move v9, v4

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v5 .. v12}, Lcom/android/calendar/CalendarView;->drawDayHeader(Ljava/lang/String;IIILandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    add-int/2addr v4, v14

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v1, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    add-int/2addr v1, v3

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    add-int v1, v1, v16

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/CalendarView;->drawDayHeaderAllDayIcon(ILandroid/graphics/Rect;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;
    .locals 9

    const/4 v8, 0x2

    iget v0, p1, Lcom/android/calendar/Event;->color:I

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    if-ne v1, v8, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    const/high16 v1, -0x100

    and-int/2addr v1, v0

    const v2, 0xffffff

    and-int/2addr v0, v2

    const/high16 v2, 0xff

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    const v3, 0xff00

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x10

    shr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    shr-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v2

    const v2, 0x7f7f7f

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    iget v0, p1, Lcom/android/calendar/Event;->top:F

    iput v0, v7, Landroid/graphics/RectF;->top:F

    iget v0, p1, Lcom/android/calendar/Event;->bottom:F

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Lcom/android/calendar/Event;->left:F

    iput v0, v7, Landroid/graphics/RectF;->left:F

    iget v0, p1, Lcom/android/calendar/Event;->right:F

    iput v0, v7, Landroid/graphics/RectF;->right:F

    if-nez p5, :cond_1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v0, :cond_3

    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectSpan:F

    sub-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->left:F

    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectSpan:F

    sub-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->top:F

    iget v0, v7, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectSpan:F

    add-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->right:F

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectSpan:F

    add-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintShadow:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBlurMaskfilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v7, Landroid/graphics/RectF;->right:F

    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    add-float/2addr v2, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    add-float/2addr v3, v0

    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mPaintShadow:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    add-float/2addr v1, v0

    iget v2, v7, Landroid/graphics/RectF;->bottom:F

    iget v0, v7, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    add-float/2addr v3, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mPaintShadow:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    invoke-virtual {p2, v7, v0, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v0, p1, :cond_4

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    :goto_2
    iget v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v0, p1, :cond_5

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectStroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusLarge:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusLarge:F

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p2, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventTextMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->left:F

    iget v0, v7, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventTextMargin:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v7

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    invoke-virtual {p2, v7, v0, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    iget v1, p1, Lcom/android/calendar/Event;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventRectStroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p2, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method private drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/CalendarView;->mDrawTextInEventRect:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float v3, v2, v3

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float v11, v2, v4

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mEventTextAscent:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mNormalTextTopMargin:F

    add-float v10, v2, v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mEventTextHeight:I

    int-to-float v2, v14

    cmpg-float v2, v11, v2

    if-ltz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v4, 0x7

    if-eq v2, v4, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v2, v2, Lcom/android/calendar/CalendarActivity;->mCalendarIcons:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/Event;->calendarId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/Event;->left:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    add-int/2addr v4, v5

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/calendar/Event;->top:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    add-int/2addr v5, v6

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/calendar/Event;->left:F

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v6, v7

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/calendar/Event;->top:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v3, v2

    move v8, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/calendar/Event;->calendarId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    :try_start_0
    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    if-nez v3, :cond_4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->TAG:Ljava/lang/String;

    const-string v4, "Query has some problem. The calendarCursor is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_e

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, ""

    const-string v2, ""

    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    :cond_5
    invoke-static {v4, v2}, Lcom/android/calendar/Utils;->getCalendarType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x6

    if-eq v2, v4, :cond_6

    const/4 v4, 0x4

    if-ne v2, v4, :cond_c

    :cond_6
    sget v2, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const-string v4, "."

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/high16 v4, 0x4040

    mul-float v15, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/CalendarView;->drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x1f4

    if-le v2, v4, :cond_8

    const/4 v2, 0x0

    const/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1f4

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v2

    move v12, v11

    move v13, v8

    move-object v8, v3

    move v11, v10

    move-object v10, v3

    move v3, v4

    :goto_3
    if-ge v3, v7, :cond_1a

    add-int/lit8 v2, v14, 0x1

    int-to-float v2, v2

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_1a

    mul-int/lit8 v2, v14, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gez v2, :cond_f

    const/4 v2, 0x1

    :cond_9
    :goto_4
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_10

    :goto_5
    const/4 v9, 0x0

    move v5, v3

    move v4, v3

    :goto_6
    if-ge v5, v7, :cond_1d

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x20

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    move v4, v5

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v16, v0

    aget v16, v16, v5

    add-float v9, v9, v16

    cmpl-float v16, v9, v13

    if-lez v16, :cond_12

    if-le v4, v3, :cond_11

    if-nez v2, :cond_11

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move/from16 v18, v4

    move-object v4, v5

    move/from16 v5, v18

    :goto_7
    cmpg-float v10, v9, v13

    if-gtz v10, :cond_b

    invoke-virtual {v8, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v5, v7

    :cond_b
    if-eqz v2, :cond_1c

    cmpl-float v9, v9, v13

    if-lez v9, :cond_1c

    if-lez v5, :cond_1c

    add-int/lit8 v9, v5, -0x1

    const/4 v4, 0x0

    :goto_8
    cmpg-float v10, v4, v15

    if-gtz v10, :cond_13

    if-ltz v9, :cond_13

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    aget v10, v10, v9

    add-float/2addr v4, v10

    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    :cond_c
    const/4 v2, -0x1

    :try_start_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    :goto_9
    if-eqz v3, :cond_d

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    :cond_e
    const/4 v2, -0x1

    :try_start_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x0

    goto :goto_4

    :cond_10
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v7, :cond_9

    goto :goto_5

    :cond_11
    invoke-virtual {v8, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_13
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v3

    :goto_a
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v9

    cmpl-float v4, v13, v4

    if-nez v4, :cond_18

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x3f80

    add-float/2addr v4, v9

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v4, v11, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_b
    int-to-float v4, v14

    add-float v9, v11, v4

    int-to-float v4, v14

    sub-float v10, v12, v4

    if-lt v5, v7, :cond_1b

    if-nez v2, :cond_1b

    if-nez v6, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_14

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_15

    :cond_14
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    :cond_15
    const/16 v2, 0xb

    new-array v11, v2, [F

    const-string v2, "A..."

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v11}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v4, 0x0

    const/4 v2, 0x0

    :cond_16
    aget v12, v11, v2

    add-float/2addr v4, v12

    add-int/lit8 v2, v2, 0x1

    const/16 v12, 0xb

    if-lt v2, v12, :cond_16

    cmpg-float v2, v4, v13

    if-gez v2, :cond_1b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_19

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/CalendarView;->drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x1f4

    if-le v2, v4, :cond_17

    const/4 v2, 0x0

    const/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1f4

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mEventAgendaTextSize:I

    int-to-float v4, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v4, 0xcc

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v6, v3

    move/from16 v18, v5

    move v5, v2

    move v2, v4

    move-object v4, v3

    move/from16 v3, v18

    :goto_d
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    sub-float v8, v7, v8

    move v7, v5

    move v11, v9

    move v12, v10

    move v13, v8

    move-object v10, v4

    move-object v8, v6

    move v6, v2

    goto/16 :goto_3

    :catch_0
    move-exception v3

    const-string v3, "..."

    goto/16 :goto_a

    :cond_18
    const/high16 v4, 0x3f80

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v9

    sub-float/2addr v4, v13

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v4, v11, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    :cond_19
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    move-object v3, v9

    goto/16 :goto_9

    :cond_1b
    move v2, v6

    move-object v4, v3

    move v3, v5

    move-object v6, v8

    move v5, v7

    goto :goto_d

    :cond_1c
    move-object v3, v4

    goto/16 :goto_a

    :cond_1d
    move v5, v3

    move-object v4, v10

    goto/16 :goto_7

    :cond_1e
    move v8, v3

    goto/16 :goto_1
.end method

.method private drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    iget-boolean v3, v7, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eq v7, v3, :cond_7

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v3, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    invoke-virtual {v7}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    add-int/lit8 v3, v21, 0x1

    move/from16 v0, v22

    if-ge v3, v0, :cond_5

    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    invoke-virtual {v3}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v7, v1}, Lcom/android/calendar/CalendarView;->drawMoreIcon(Lcom/android/calendar/Event;Landroid/graphics/Canvas;)V

    :cond_5
    invoke-virtual {v7}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eq v3, v7, :cond_6

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/CalendarView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;

    move-result-object v10

    const/4 v13, 0x2

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v11, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/android/calendar/Event;->bedrawed:Z

    goto/16 :goto_1

    :cond_7
    iget v3, v7, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, p1

    if-gt v3, v0, :cond_0

    iget v3, v7, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, p1

    if-ge v3, v0, :cond_4

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v3, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v12

    invoke-direct/range {v13 .. v18}, Lcom/android/calendar/CalendarView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    const/4 v13, 0x2

    move-object/from16 v8, p0

    move-object/from16 v11, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/calendar/Event;->bedrawed:Z

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v3, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v12

    invoke-direct/range {v13 .. v18}, Lcom/android/calendar/CalendarView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;

    :cond_a
    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v8

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayGridColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    sget v0, Lcom/android/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    int-to-float v9, v0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    const/4 v7, 0x0

    :goto_0
    const/16 v0, 0x18

    if-ge v7, v0, :cond_1

    add-float/2addr v9, v6

    const/high16 v0, 0x3f80

    sub-float v2, v9, v0

    const/high16 v0, 0x3f80

    sub-float v4, v9, v0

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-object v0, p2

    move v2, v9

    move v4, v9

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x4000

    div-float v0, v6, v0

    sub-float v0, v9, v0

    const/high16 v2, 0x3f80

    sub-float v2, v0, v2

    const/high16 v0, 0x4000

    div-float v0, v6, v0

    sub-float v0, v9, v0

    const/high16 v4, 0x3f80

    sub-float v4, v0, v4

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/calendar/CalendarView;->mCalendarGridAreaSelected:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayGap:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayGap:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekFocus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekFocus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->saveSelectionPosition(FFFF)V

    :cond_0
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourTextSize:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_2
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p3}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    sub-int v7, v1, v2

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v6, v0, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v8, v0, 0x1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    const/16 v1, 0x18

    if-gt v0, v1, :cond_9

    sget-object v1, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    aget-object v1, v1, v0

    int-to-float v2, v7

    int-to-float v3, v6

    invoke-virtual {p2, v1, v2, v3, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    goto/16 :goto_0

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v0, v1

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHourTextSize:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_4
    const/16 v1, 0x18

    if-gt v0, v1, :cond_9

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    aget-object v1, v1, v0

    int-to-float v2, v7

    int-to-float v3, v6

    invoke-virtual {p2, v1, v2, v3, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    const-string v3, ""

    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    const/4 v4, 0x1

    :goto_6
    const/16 v9, 0xc

    if-ge v4, v9, :cond_7

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    int-to-float v10, v7

    int-to-float v11, v6

    invoke-virtual {p2, v9, v10, v11, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    const/16 v4, 0xc

    :goto_7
    const/16 v9, 0x18

    if-ge v4, v9, :cond_8

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    int-to-float v10, v7

    int-to-float v11, v6

    invoke-virtual {p2, v9, v10, v11, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v7

    int-to-float v2, v6

    invoke-virtual {p2, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method private drawMoreIcon(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mMoreIconPressed:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mMoreIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private drawMoreIcon(Lcom/android/calendar/Event;Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v1, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x20

    const/16 v2, 0xa

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findPressedEvent(II)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    sub-int v0, p1, v0

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    div-int/2addr v0, v3

    iget v3, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-lt v0, v3, :cond_1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    add-int/2addr v3, v0

    const v0, 0x259d23

    if-gt v3, v0, :cond_2

    const v0, 0x24dc87

    if-ge v3, v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-le v0, v2, :cond_4

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v0, v4

    if-ge p2, v0, :cond_4

    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    move v0, v1

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v0, p2

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-ge v0, v4, :cond_6

    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    :cond_5
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/calendar/CalendarView;->findSelectedEvent(IIIZ)V

    move v0, v2

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-ge v0, v4, :cond_7

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, v4

    sub-int v0, p2, v0

    iget v4, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v0, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    const/16 v4, 0x18

    if-lt v0, v4, :cond_5

    move v0, v1

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int v0, p2, v0

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v0, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/2addr v0, v4

    goto :goto_1
.end method

.method private findPressedMoreIcon(II)I
    .locals 10

    const/4 v8, -0x1

    iget v7, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v9, 0x7

    if-ne v7, v9, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v7, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v9, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int/2addr v7, v9

    add-int/2addr p2, v7

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    iget-boolean v7, v1, Lcom/android/calendar/Event;->allDay:Z

    const/4 v9, 0x1

    if-eq v7, v9, :cond_1

    iget v7, v1, Lcom/android/calendar/Event;->startDay:I

    if-gt v7, v0, :cond_1

    iget v7, v1, Lcom/android/calendar/Event;->endDay:I

    if-ge v7, v0, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    add-int/lit8 v7, v3, 0x1

    if-ge v7, v5, :cond_1

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    invoke-virtual {v7}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_1

    iget v7, v1, Lcom/android/calendar/Event;->right:F

    const/high16 v9, 0x3f80

    add-float/2addr v7, v9

    int-to-float v9, p1

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_1

    iget v7, v1, Lcom/android/calendar/Event;->top:F

    int-to-float v9, p2

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_1

    iget v7, v1, Lcom/android/calendar/Event;->top:F

    int-to-float v9, v4

    add-float/2addr v7, v9

    int-to-float v9, p2

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_1

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mMoreIconRect:Landroid/graphics/Rect;

    iget v7, v1, Lcom/android/calendar/Event;->top:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iget v7, v1, Lcom/android/calendar/Event;->right:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v3, 0x1

    goto/16 :goto_0

    :cond_3
    move v7, v8

    goto/16 :goto_0
.end method

.method private findSelectedEvent(IIIZ)V
    .locals 12

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v0, :cond_4

    const v2, 0x461c4000

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_e

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-boolean v3, v0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_0

    move-object v0, v1

    move v1, v2

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/android/calendar/Event;->startDay:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-gt v3, v7, :cond_d

    iget v3, v0, Lcom/android/calendar/Event;->endDay:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-lt v3, v7, :cond_d

    iget v3, v0, Lcom/android/calendar/Event;->top:F

    iget v7, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v7, p2

    int-to-float v7, v7

    cmpg-float v3, v3, v7

    if-gez v3, :cond_2

    iget v3, v0, Lcom/android/calendar/Event;->bottom:F

    iget v7, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v7, p2

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getNewEvent()Lcom/android/calendar/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget v3, v0, Lcom/android/calendar/Event;->top:F

    iget v7, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v7, p2

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_3

    iget v3, v0, Lcom/android/calendar/Event;->top:F

    int-to-float v7, p2

    sub-float/2addr v3, v7

    :goto_4
    cmpg-float v7, v3, v2

    if-gez v7, :cond_d

    move v1, v3

    goto :goto_1

    :cond_3
    int-to-float v3, p2

    iget v7, v0, Lcom/android/calendar/Event;->bottom:F

    sub-float/2addr v3, v7

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int/2addr v0, v1

    add-int v7, p2, v0

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    add-int/lit8 v0, p1, -0xa

    iput v0, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, p1, 0xa

    iput v0, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v7, -0xa

    iput v0, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v7, 0xa

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v6, :cond_8

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget v3, v0, Lcom/android/calendar/Event;->startDay:I

    if-gt v3, p3, :cond_5

    iget v3, v0, Lcom/android/calendar/Event;->endDay:I

    if-ge v3, p3, :cond_6

    :cond_5
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_6
    iget v3, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    :cond_7
    invoke-virtual {v8, v0, v2}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    const/4 v0, 0x0

    move v5, v0

    :goto_7
    if-ge v5, v6, :cond_a

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    int-to-float v2, p1

    int-to-float v9, v7

    invoke-virtual {v8, v2, v9, v0}, Lcom/android/calendar/EventGeometry;->pointToEvent(FFLcom/android/calendar/Event;)F

    move-result v2

    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-nez v9, :cond_9

    if-eqz v3, :cond_9

    iget v9, v0, Lcom/android/calendar/Event;->top:F

    iget v10, v3, Lcom/android/calendar/Event;->top:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    move-object v2, v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    :goto_8
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_7

    :cond_9
    cmpg-float v9, v2, v1

    if-gez v9, :cond_c

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-nez v1, :cond_b

    move-object v1, v0

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_8

    :cond_a
    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->setSelectionbySelectedEvent()V

    goto/16 :goto_3

    :cond_b
    move-object v1, v3

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_8

    :cond_c
    move v0, v1

    move-object v2, v4

    move-object v1, v3

    goto :goto_8

    :cond_d
    move-object v0, v1

    move v1, v2

    goto/16 :goto_1

    :cond_e
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private getDayPaint(ILandroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 4

    const/4 v3, 0x6

    move-object v0, p2

    iget v1, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v3, :cond_1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekSundayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/calendar/CalendarView;->mWeekDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekSundayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_4
    sget v1, Lcom/android/calendar/CalendarView;->mWeekDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method static getNewEvent(IJI)Lcom/android/calendar/Event;
    .locals 5

    invoke-static {}, Lcom/android/calendar/Event;->newInstance()Lcom/android/calendar/Event;

    move-result-object v0

    iput p0, v0, Lcom/android/calendar/Event;->startDay:I

    iput p0, v0, Lcom/android/calendar/Event;->endDay:I

    iput-wide p1, v0, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    iput p3, v0, Lcom/android/calendar/Event;->startTime:I

    iget v1, v0, Lcom/android/calendar/Event;->startTime:I

    add-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    return-object v0
.end method

.method private getNormalEventCount()I
    .locals 6

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    iget v4, v2, Lcom/android/calendar/Event;->startDay:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-gt v4, v5, :cond_0

    iget v4, v2, Lcom/android/calendar/Event;->endDay:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-lt v4, v5, :cond_0

    iget-boolean v4, v2, Lcom/android/calendar/Event;->allDay:Z

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private goMoreEventList()V
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    if-gt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-wide v1, v0, Lcom/android/calendar/Event;->id:J

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getGroupId()I

    move-result v0

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    iput v4, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    invoke-virtual {p0, v4}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "eventlist_type"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "more_event_id"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "more_event_group"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "beginTime"

    invoke-virtual {v5, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/calendar/EventListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v5}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mIgnoreEvent:Z

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x2

    const/high16 v5, 0x4000

    const v3, 0x7f09003a

    const/4 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget v0, v0, Lcom/android/calendar/CalendarActivity;->mStartDay:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    :goto_0
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f080017

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayGridColor:I

    const v0, 0x7f080016

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayBgColor:I

    const v0, 0x7f080007

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/CalendarView;->mCalendarGridAreaSelected:I

    const v0, -0xb4b4b5

    sput v0, Lcom/android/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    const v0, 0x7f080006

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    const/high16 v0, 0x7f08

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    const v0, 0x7f080002

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/CalendarView;->mWeekDayColor:I

    const v0, 0x7f080023

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTimeLineColor:I

    const v0, 0x7f080024

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTimeMarkerBorderColor:I

    const v0, 0x7f0b003c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    const v0, 0x7f0b003d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekCellHeight:I

    const v0, 0x7f0b003e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    const v0, 0x7f0b003f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourWidth:I

    const v0, 0x7f0b0040

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekBannerTextSize:I

    const v0, 0x7f0b0041

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourTextSize:I

    const v0, 0x7f0b0038

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNormalTextSize:I

    const v0, 0x7f0b001a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayCellHeight:I

    const v0, 0x7f0b001b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayCellWidth:I

    const v0, 0x7f0b001c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayHourWidth:I

    const v0, 0x7f0b001d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    const v0, 0x7f0b001d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayHourGap:I

    const v0, 0x7f0b003b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourGap:I

    const v0, 0x7f0b0020

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    const v0, 0x7f0b001e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayFirstHourOffset:I

    const v0, 0x7f09002a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayGap:F

    const v0, 0x7f0b0021

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    const v0, 0x7f0b0043

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayHeight:I

    const v0, 0x7f0b0042

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayWidth:I

    const v0, 0x7f0b0018

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDayColorWidth:I

    const v0, 0x7f0b0023

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    const v0, 0x7f0b002f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventAgendaTextSize:I

    const v0, 0x7f0b0030

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mHourTextSize:I

    const v0, 0x7f0b0027

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mAllDayTitleTextSize:I

    const v0, 0x7f0b0028

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDayTitleMarginLeft:I

    const v0, 0x7f090037

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventRectStroke:F

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDragEventRectSpan:F

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDragEventRectStroke:F

    const v0, 0x7f09002b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    const v0, 0x7f09002c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusLarge:F

    const v0, 0x7f09002d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekEventRectRoundRadius:F

    const v0, 0x7f09003b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNormalTextTopMargin:F

    const v0, 0x7f02008e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekFocus:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020028

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020029

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mMoreIconPressed:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02008f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekHeaderBg:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020090

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayBg:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020094

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekToday:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020093

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekFocusDay:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f09002e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    const v0, 0x7f090030

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    const v0, 0x7f0b004c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mBriefHourTextSize:I

    const v0, 0x7f07001f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mOrdinaryWeekString:[Ljava/lang/String;

    const v0, 0x7f080008

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    const v4, -0x373738

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move v0, v1

    :goto_1
    const/4 v4, 0x7

    if-gt v0, v4, :cond_3

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    const/16 v6, 0x14

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    add-int/lit8 v6, v4, 0x7

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    aget-object v7, v7, v4

    aput-object v7, v5, v6

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v6, 0x1e

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    :cond_0
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    add-int/lit8 v6, v4, 0x7

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v4, v7, v4

    aput-object v4, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    if-ne v0, v9, :cond_2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_0

    :cond_2
    iput v8, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNormalTextSize:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-array v0, v9, [Ljava/lang/String;

    const-string v4, " 28"

    aput-object v4, v0, v8

    const-string v4, " 30"

    aput-object v4, v0, v1

    invoke-direct {p0, v8, v0, v3}, Lcom/android/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    invoke-direct {p0, v8, v4, v3}, Lcom/android/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourTextSize:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    invoke-static {v8}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mTempDate:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mTempDate:Landroid/text/format/Time;

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0032

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewLeft:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0033

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewRight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setBottomGap(I)V

    const v0, 0x1080012

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mAllDayDivider:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mAllDayDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    const v0, 0x7f08000c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekSundayColor:I

    const v0, 0x7f08000d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekSaturdayColor:I

    new-instance v0, Lcom/android/calendar/lunar/SolarLunarConverter;

    invoke-direct {v0}, Lcom/android/calendar/lunar/SolarLunarConverter;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSolarLunarConverter:Lcom/android/calendar/lunar/SolarLunarConverter;

    return-void
.end method

.method private initView(Lcom/android/calendar/CalendarView;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget-object v0, p1, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p1, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/calendar/CalendarView;->remeasure(II)V

    iput-object v3, p1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput-object v3, p1, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mStartDay:I

    iput-boolean v2, p1, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    iput v2, p1, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    invoke-direct {p1}, Lcom/android/calendar/CalendarView;->recalc()V

    invoke-virtual {p1}, Lcom/android/calendar/CalendarView;->updateTitle()V

    return-void
.end method

.method private isEventEditable(Landroid/content/Context;Lcom/android/calendar/Event;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=%d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v5, p2, Lcom/android/calendar/Event;->calendarId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    iget-object v1, p2, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    iget-object v1, p2, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_2

    move v0, v7

    :goto_2
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    iget-boolean v0, p2, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v0, :cond_1

    :cond_0
    move v6, v7

    :cond_1
    return v6

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method private recalc()V
    .locals 10

    const/4 v9, 0x6

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget v1, v0, Lcom/android/calendar/CalendarActivity;->mStartDay:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v7, :cond_2

    if-ne v1, v7, :cond_6

    iput v9, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_2

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    const/16 v3, 0x76d

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_9

    :cond_1
    if-ne v1, v4, :cond_8

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/16 v2, 0x1e

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    :goto_1
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mMonthLength:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstDate:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v2, v7, :cond_3

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v0

    :cond_3
    iget v2, v0, Landroid/text/format/Time;->month:I

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_4
    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v2, v7, :cond_d

    new-instance v2, Landroid/util/DayOfMonthCursor;

    iget v3, v0, Landroid/text/format/Time;->year:I

    iget v4, v0, Landroid/text/format/Time;->month:I

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/util/DayOfMonthCursor;-><init>(IIII)V

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v2, v1}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v2, -0x1

    if-le v2, v9, :cond_5

    const/4 v1, 0x5

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mOrdinaryWeekString:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    :goto_2
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    const v1, 0x24dc87

    if-gt v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0030

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    :goto_3
    iget v0, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    const v1, 0x259d23

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0034

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    :goto_4
    return-void

    :cond_6
    if-ne v1, v4, :cond_7

    iput v6, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_0

    :cond_7
    iput v8, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/16 v2, 0x1d

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    sub-int v0, v3, v0

    iput v0, v2, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_1

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mOrdinaryWeekString:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0030

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0034

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    :cond_d
    invoke-direct {p0, v6}, Lcom/android/calendar/CalendarView;->setDayPrevNextBtnState(Z)V

    goto :goto_4
.end method

.method private remeasure(II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput p1, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput p2, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->computeEarliestStartHour()Z

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/EventGeometry;->setHourHeight(F)V

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_2

    :cond_0
    if-lez p1, :cond_2

    iget v0, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :try_start_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mChangeFirstHour:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarView;->initFirstHour(Ljava/util/ArrayList;)V

    :cond_3
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    iput v3, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    :goto_1
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v0, :cond_4

    iput v3, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    :cond_4
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    :cond_5
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_1
.end method

.method private resetSelectedHour()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    goto :goto_0
.end method

.method private saveSelectionPosition(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private sendAccessibilityEvents()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionDay:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-eq v0, v1, :cond_0

    :cond_2
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionDay:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionHour:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private setDayPrevNextBtnState(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0030

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    const v3, 0x24dc87

    if-gt v2, v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    const v2, 0x259d23

    if-lt v0, v2, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private setSelectionFromPosition(IIZ)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    sub-int v0, p1, v0

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    div-int/2addr v0, v3

    iget v3, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-lt v0, v3, :cond_1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    add-int/2addr v3, v0

    const v0, 0x259d23

    if-gt v3, v0, :cond_2

    const v0, 0x24dc87

    if-ge v3, v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-le v0, v2, :cond_5

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v0, v4

    if-ge p2, v0, :cond_5

    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    :goto_1
    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-eqz p3, :cond_4

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/calendar/CalendarView;->findSelectedEvent(IIIZ)V

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v0, p2

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-ge v0, v4, :cond_6

    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-ge v0, v4, :cond_7

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, v4

    sub-int v0, p2, v0

    iget v4, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v0, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    const/16 v4, 0x18

    if-lt v0, v4, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int v0, p2, v0

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v0, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/2addr v0, v4

    goto :goto_2

    :cond_8
    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    goto :goto_1
.end method

.method private setSelectionbySelectedEvent()V
    .locals 6

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v4, Lcom/android/calendar/Event;->startDay:I

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v4, Lcom/android/calendar/Event;->endDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ge v4, v2, :cond_2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v3, v4, 0x3c

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->startTime:I

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v5, v5, Lcom/android/calendar/Event;->endTime:I

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->endTime:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v1, v4, 0x3c

    :goto_1
    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-ge v4, v3, :cond_4

    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-le v4, v0, :cond_0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v1, v4, 0x3c

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-le v4, v1, :cond_1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    goto :goto_2
.end method

.method private switchViews(Z)V
    .locals 12

    const-wide/32 v10, 0x36ee80

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v0

    add-long v2, v0, v10

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/calendar/EditEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "endTime"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v4, v7}, Lcom/android/calendar/CalendarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "beginTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "endTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "event_day_time"

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "eventlist_type"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v1, :cond_3

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v0

    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "beginTime"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "startDayfromWhere"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x2002

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v2}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_4

    if-eqz v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "beginTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "endTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "event_day_time"

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "eventlist_type"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_5

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v0

    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "beginTime"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "startDayfromWhere"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x2002

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v2}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v0

    add-long v2, v0, v10

    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/calendar/EditEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "endTime"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v4, v7}, Lcom/android/calendar/CalendarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget v4, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    const-string v0, "eventlist_type"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-wide v4, v0, Lcom/android/calendar/Event;->id:J

    const-string v0, "more_event_id"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "beginTime"

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/calendar/EventListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    if-nez v0, :cond_8

    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v0

    add-long v4, v0, v10

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/calendar/EditEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "beginTime"

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "endTime"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v3, v7}, Lcom/android/calendar/CalendarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_8
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "beginTime"

    iget-wide v4, v0, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "endTime"

    iget-wide v4, v0, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "event_day_time"

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "eventlist_type"

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto/16 :goto_0
.end method


# virtual methods
.method public addQuickAdd()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->showDialog(I)V

    return-void
.end method

.method public checkSwitchView(I)Z
    .locals 10

    const v9, 0x259d23

    const v8, 0x24dc87

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarActivity;->getNextCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v2

    iget-object v3, v2, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v3

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    if-ge v3, v8, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v3, v4

    if-le v3, v9, :cond_4

    if-gtz p1, :cond_4

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-gt v3, v8, :cond_3

    if-gtz p1, :cond_1

    :cond_3
    if-lt v3, v9, :cond_4

    if-lez p1, :cond_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/calendar/CalendarView;->clearView(Lcom/android/calendar/CalendarView;)V

    move v0, v1

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public cleanupAll()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->cleanup()V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public clearScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    return-void
.end method

.method public clearView(Lcom/android/calendar/CalendarView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget-object v0, p1, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p1, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iput-object v2, p1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput-object v2, p1, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mStartDay:I

    iput-boolean v1, p1, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p1}, Lcom/android/calendar/CalendarView;->invalidate()V

    return-void
.end method

.method public computeEarliestStartHour()Z
    .locals 17

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v1, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    const/16 v14, 0x19

    aput v14, v13, v1

    const/4 v8, 0x0

    :goto_1
    const/4 v13, 0x6

    if-ge v8, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v13, v13, v1

    const/4 v14, 0x0

    aput v14, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_3

    :cond_2
    const/4 v13, 0x0

    :goto_2
    return v13

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v15, v15, Landroid/text/format/Time;->gmtoff:J

    invoke-static/range {v13 .. v16}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v12

    new-instance v11, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v13, v14}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_e

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    if-gt v13, v14, :cond_4

    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-ge v13, v14, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    iget-boolean v13, v4, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v13, :cond_c

    const/4 v6, 0x1

    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, v4, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    if-gez v2, :cond_6

    add-int/2addr v3, v2

    const/4 v2, 0x0

    :cond_6
    add-int v13, v2, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-le v13, v14, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int v3, v13, v2

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_b

    move v1, v2

    :goto_5
    if-lez v3, :cond_4

    const/4 v8, 0x0

    :goto_6
    const/4 v13, 0x6

    if-ge v8, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v13, v13, v1

    aget v13, v13, v8

    if-nez v13, :cond_a

    :cond_8
    const/4 v13, 0x6

    if-ge v8, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v13, v13, v1

    iget v14, v4, Lcom/android/calendar/Event;->color:I

    aput v14, v13, v8

    :cond_9
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    goto :goto_4

    :cond_c
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    iget v13, v4, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v7, v13, 0x3c

    if-ltz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v7, v13, :cond_4

    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    if-ne v12, v13, :cond_d

    iget v13, v11, Landroid/text/format/Time;->hour:I

    if-le v7, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aput v7, v13, v2

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aput v7, v13, v2

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    mul-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/calendar/CalendarView;->mhasAllDayEvents:Z

    move v13, v6

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    add-int/2addr v14, v15

    mul-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    goto :goto_7

    :cond_11
    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mWeekAllDayHeight:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    goto :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    goto :goto_7
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v10, :cond_1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    mul-int/lit8 v5, v0, 0x3c

    add-int/lit8 v7, v5, 0x3c

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v6

    move v2, v6

    move v1, v6

    move v3, v6

    :goto_1
    if-ge v4, v8, :cond_6

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget v6, v0, Lcom/android/calendar/Event;->endDay:I

    iget v9, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v6, v9, :cond_8

    add-int/lit8 v3, v3, 0x1

    iget v6, v0, Lcom/android/calendar/Event;->endTime:I

    if-ge v5, v6, :cond_8

    iget v6, v0, Lcom/android/calendar/Event;->startTime:I

    if-gt v7, v6, :cond_5

    move v0, v3

    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_1
    const v5, 0x11416

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v5, 0x11496

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    new-instance v3, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v3, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v10, :cond_4

    const/16 v0, 0x1401

    :goto_3
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTime()Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v3, v1

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    or-int/lit16 v5, v0, 0x80

    :goto_4
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeRange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x1413

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v0, v6, :cond_7

    move v0, v1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    move v0, v3

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return v10

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    move v0, v3

    goto/16 :goto_2

    :cond_9
    move v5, v0

    goto :goto_4
.end method

.method doDoubleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->getNormalEventCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    invoke-direct {p0, v0}, Lcom/android/calendar/CalendarView;->setDayPrevNextBtnState(Z)V

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method doDown(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    iput v5, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/CalendarView;->findPressedMoreIcon(II)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    iput v6, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/CalendarView;->findPressedEvent(II)Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v3, :cond_0

    :cond_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_0
.end method

.method doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    iput v7, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

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

    iget-boolean v5, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v5, :cond_3

    sget v5, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v2, v5, :cond_3

    if-le v2, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarView;->checkSwitchView(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_2

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v7}, Lcom/android/calendar/CalendarActivity;->getNextDay(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    :goto_1
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v4, v8, v7}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v8}, Lcom/android/calendar/CalendarActivity;->getNextDay(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    float-to-int v6, p4

    div-int/lit8 v6, v6, 0x14

    invoke-virtual {v5, v6}, Lcom/android/calendar/CalendarView$ContinueScroll;->init(I)V

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-virtual {p0, v5}, Lcom/android/calendar/CalendarView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method doLongPress(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v4, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->goMoreEventList()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v3, v0}, Lcom/android/calendar/CalendarView;->setSelectionFromPosition(IIZ)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v2, v6, :cond_4

    iget-boolean v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v2, :cond_4

    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v2, v0, :cond_9

    iget-boolean v2, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v2, :cond_7

    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    invoke-direct {p0, v1}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v1, :cond_0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v1, v6, :cond_6

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->updateTitle()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->addQuickAdd()V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/CalendarView;->isEventEditable(Landroid/content/Context;Lcom/android/calendar/Event;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->readyToDragEvent()V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v3, 0x7f0a00b3

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto/16 :goto_0

    :cond_9
    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    invoke-direct {p0, v1}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    goto :goto_1
.end method

.method doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    sub-int v2, v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int v3, v4, v5

    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iput v4, p0, Lcom/android/calendar/CalendarView;->mScrollStartY:I

    mul-int/lit8 v4, v0, 0x2

    if-lt v1, v4, :cond_0

    const/16 v4, 0x20

    iput v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    :cond_0
    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/calendar/CalendarView;->mScrollStartY:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    if-gez v4, :cond_5

    iput v8, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    :cond_2
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v4, :cond_3

    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    :cond_3
    iget v4, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    if-eq v4, v7, :cond_4

    iput v7, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    return-void

    :cond_5
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    if-le v4, v5, :cond_1

    iget v4, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_0
.end method

.method doSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v11, 0x7

    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget-boolean v8, p0, Lcom/android/calendar/CalendarView;->mIgnoreEvent:Z

    if-eqz v8, :cond_1

    iput-boolean v7, p0, Lcom/android/calendar/CalendarView;->mIgnoreEvent:Z

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget v8, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    if-eq v8, v10, :cond_2

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->goMoreEventList()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4, v5, v6}, Lcom/android/calendar/CalendarView;->setSelectionFromPosition(IIZ)Z

    move-result v3

    if-nez v3, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget-boolean v8, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v8, v11, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_1
    if-eqz v0, :cond_9

    invoke-direct {p0, v7}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v8

    if-nez v8, :cond_7

    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-ne v8, v6, :cond_7

    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v1, v8, :cond_7

    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-ne v2, v8, :cond_7

    iget-boolean v8, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v8, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    iget-boolean v8, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v8, :cond_4

    if-ge v2, v10, :cond_8

    move v6, v7

    goto :goto_0

    :cond_8
    iput v6, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_1

    :cond_9
    iget v7, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v7, v11, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->updateTitle()V

    goto :goto_0
.end method

.method dragEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v4, v3, :cond_6

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, p0, Lcom/android/calendar/CalendarView;->mLastMotionY:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    iget v4, v0, Lcom/android/calendar/Event;->top:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    add-int/lit8 v5, v5, 0x5

    iget v6, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-gtz v4, :cond_1

    :cond_0
    iget v4, v0, Lcom/android/calendar/Event;->bottom:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x18

    iget v6, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-gez v4, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget v4, v0, Lcom/android/calendar/Event;->top:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/android/calendar/Event;->top:F

    iget v4, v0, Lcom/android/calendar/Event;->bottom:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/android/calendar/Event;->bottom:F

    iget v4, v0, Lcom/android/calendar/Event;->top:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-gtz v4, :cond_4

    :cond_3
    iget v4, v0, Lcom/android/calendar/Event;->bottom:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v6, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_9

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-gez v4, :cond_9

    :cond_4
    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_5

    iput v2, p0, Lcom/android/calendar/CalendarView;->mDragScrollStartY:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    :cond_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-ge v4, v5, :cond_7

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    :goto_2
    iput v2, p0, Lcom/android/calendar/CalendarView;->mLastMotionY:I

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    const/4 v1, 0x1

    :cond_6
    move v3, v1

    goto :goto_0

    :cond_7
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    if-le v4, v5, :cond_8

    iget v4, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_1

    :cond_8
    iput v2, p0, Lcom/android/calendar/CalendarView;->mLastMotionY:I

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

    const-wide/16 v5, 0xa

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_9
    const/16 v4, 0x80

    iput v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    goto :goto_2
.end method

.method dropEvent(Landroid/view/MotionEvent;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDragEventInitTop:F

    iget v3, v6, Lcom/android/calendar/Event;->top:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    div-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/CalendarView;->setSelectionFromPosition(IIZ)Z

    iget v0, v6, Lcom/android/calendar/Event;->top:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    add-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, v6, Lcom/android/calendar/Event;->top:F

    :cond_2
    iget v0, v6, Lcom/android/calendar/Event;->bottom:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, v6, Lcom/android/calendar/Event;->top:F

    iget v1, v6, Lcom/android/calendar/Event;->bottom:F

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v6, Lcom/android/calendar/Event;->top:F

    :cond_3
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget v1, v6, Lcom/android/calendar/Event;->top:F

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->computeNewStartTime(F)I

    move-result v7

    iget-wide v0, v6, Lcom/android/calendar/Event;->id:J

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/calendar/CalendarView;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    if-eqz v2, :cond_8

    new-instance v5, Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v8, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-wide v8, v6, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v5, v8, v9}, Landroid/text/format/Time;->set(J)V

    div-int/lit8 v6, v7, 0x3c

    int-to-long v8, v6

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v8, v10

    rem-int/lit8 v6, v7, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    rem-int/lit8 v7, v7, 0xa

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v10, 0xea60

    mul-long/2addr v6, v10

    add-long/2addr v6, v8

    iget v8, v5, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v8, v10

    iget v5, v5, Landroid/text/format/Time;->minute:I

    int-to-long v10, v5

    const-wide/32 v12, 0xea60

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    sub-long v5, v6, v8

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    add-long/2addr v7, v5

    new-instance v9, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v9}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    invoke-virtual {v9, v2}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iget-object v10, v9, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    add-long/2addr v5, v10

    invoke-virtual {v2, v5, v6}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v2}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    const-string v2, "rrule"

    invoke-virtual {v9}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    const-string v2, "dtstart"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "eventTimezone"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v2, v0}, Lcom/android/calendar/CalendarActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget v2, v9, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v2, :cond_6

    const-string v2, "rrule"

    invoke-virtual {v9}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-wide v8, v6, Lcom/android/calendar/Event;->startMillis:J

    new-instance v5, Landroid/text/format/Time;

    iget-object v10, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v10, v11}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Landroid/text/format/Time;->set(J)V

    div-int/lit8 v10, v7, 0x3c

    iput v10, v5, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v10, v7, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    rem-int/lit8 v7, v7, 0xa

    sub-int v7, v10, v7

    iput v7, v5, Landroid/text/format/Time;->minute:I

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    iget-wide v5, v6, Lcom/android/calendar/Event;->endMillis:J

    sub-long v7, v10, v8

    add-long/2addr v5, v7

    const-string v7, "dtstart"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "dtend"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "rrule"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "eventTimezone"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getEventHour()I
    .locals 13

    const/16 v12, 0x19

    const/4 v7, 0x0

    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_2

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekHourTextSize:I

    :goto_0
    new-instance v4, Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v8, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Landroid/text/format/Time;->set(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v10, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v6

    iget v8, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    iget v9, v4, Landroid/text/format/Time;->hour:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    iget v10, v4, Landroid/text/format/Time;->minute:I

    mul-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x3c

    add-int v5, v8, v9

    iget v8, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-lt v6, v8, :cond_8

    iget v8, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    if-gt v6, v8, :cond_8

    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    iget v9, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v9, v6, v9

    aget v0, v8, v9

    if-eq v0, v12, :cond_0

    iget v8, v4, Landroid/text/format/Time;->hour:I

    if-ge v0, v8, :cond_5

    :cond_0
    iget v8, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    div-int/lit8 v8, v8, 0x2

    if-gt v5, v8, :cond_3

    const/4 v3, 0x0

    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    :cond_1
    :goto_1
    return v3

    :cond_2
    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayFirstHourOffset:I

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v8, v8, 0x18

    sub-int/2addr v8, v5

    iget v9, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    div-int/lit8 v9, v9, 0x2

    if-gt v8, v9, :cond_4

    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v3, v8, 0x18

    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v5, v7

    iget v8, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    div-int/2addr v7, v8

    add-int/lit8 v3, v7, 0x1

    iget v7, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    iget v8, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    iget v9, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    rem-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_1

    :cond_5
    rsub-int/lit8 v8, v0, 0x18

    iget v9, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    if-ge v8, v9, :cond_7

    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v3, v8, 0x18

    :goto_2
    rsub-int/lit8 v8, v0, 0x18

    iget v9, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    if-ge v8, v9, :cond_6

    move v1, v7

    :cond_6
    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_1

    :cond_7
    move v3, v0

    goto :goto_2

    :cond_8
    const/16 v3, 0x19

    const/4 v2, 0x0

    :goto_3
    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v2, v8, :cond_9

    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aget v8, v8, v2

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    iget v8, p0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v8, :cond_a

    const/4 v3, -0x2

    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    :cond_a
    if-ne v3, v12, :cond_c

    const/16 v3, 0x8

    if-nez v3, :cond_b

    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_1

    :cond_b
    iget v7, p0, Lcom/android/calendar/CalendarView;->mDayFirstHourOffset:I

    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_1

    :cond_c
    rsub-int/lit8 v8, v3, 0x18

    iget v9, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    if-ge v8, v9, :cond_1

    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v3, v8, 0x18

    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto/16 :goto_1
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

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFirstJulianDay()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    return v0
.end method

.method public getLastJulianDay()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    return v0
.end method

.method getNewEvent()Lcom/android/calendar/Event;
    .locals 4

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedMinutesSinceMidnight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->getNewEvent(IJI)Lcom/android/calendar/Event;

    move-result-object v0

    return-object v0
.end method

.method public getNextDay(Z)Landroid/text/format/Time;
    .locals 3

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    if-eqz p1, :cond_0

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-object v0

    :cond_0
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_0
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .locals 4

    const v1, 0x259d23

    const v0, 0x24dc87

    new-instance v3, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v3, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ge v2, v0, :cond_0

    :goto_0
    invoke-static {v3, v0}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    invoke-static {v3}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->normalize(Z)J

    return-object v3

    :cond_0
    if-le v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method getSelectedDayInMillis()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedHourTime()Landroid/text/format/Time;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v3, v2, Landroid/text/format/Time;->hour:I

    iput v6, v2, Landroid/text/format/Time;->minute:I

    iput v6, v2, Landroid/text/format/Time;->second:I

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-object v2
.end method

.method public getSelectedHourTimeinMillis()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTime()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method getSelectedMinutesSinceMidnight()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    mul-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public getSelectedTime()Landroid/text/format/Time;
    .locals 11

    const/4 v10, 0x1

    new-instance v4, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v6, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    invoke-static {v4}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    invoke-virtual {v4, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    iget-wide v8, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    new-instance v3, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v3, v6}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iget v6, v3, Landroid/text/format/Time;->monthDay:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v8, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v3, Landroid/text/format/Time;->monthDay:I

    invoke-static {v3}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    if-ne v5, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    iget v6, v4, Landroid/text/format/Time;->hour:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/text/format/Time;->hour:I

    :goto_0
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-object v3

    :cond_0
    const/16 v6, 0x8

    iput v6, v3, Landroid/text/format/Time;->hour:I

    goto :goto_0
.end method

.method public getSelectedTimeInMillis()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public initFirstHour(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->TAG:Ljava/lang/String;

    const-string v1, "init first hour "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getEventHour()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v0, v1

    const/16 v1, 0x18

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iput v2, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_0
.end method

.method public isBriefMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    return v0
.end method

.method isEventSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->cleanupAll()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/CalendarView;->remeasure(II)V

    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    :cond_0
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->second:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    :cond_2
    iget-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcom/android/calendar/CalendarView;->doDraw(Landroid/graphics/Canvas;)V

    :cond_4
    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    :cond_5
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->drawCalendarView(Landroid/graphics/Canvas;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->sendAccessibilityEvents()V

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/CalendarView;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/16 v2, 0x17

    const/4 v1, 0x0

    const/4 v8, 0x1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-nez v0, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    if-ne p1, v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->adjustHourSelection()V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    :cond_2
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    :goto_0
    return v8

    :cond_3
    if-ne p1, v2, :cond_4

    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v8

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_5

    move v8, v1

    goto :goto_0

    :cond_5
    iget-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, v0, Lcom/android/calendar/Event;->endMillis:J

    iget-wide v5, v0, Lcom/android/calendar/Event;->id:J

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v8}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v8

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    iput-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    :cond_7
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-nez v2, :cond_8

    const v2, 0x24dc88

    if-lt v0, v2, :cond_8

    add-int/lit8 v0, v0, -0x1

    :cond_8
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    :goto_1
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-lt v0, v2, :cond_9

    iget v2, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    if-le v0, v2, :cond_11

    :cond_9
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarActivity;->getNextCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v2

    iget-object v3, v2, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-ge v0, v4, :cond_10

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    :goto_2
    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    iput v0, v2, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-direct {p0, v2}, Lcom/android/calendar/CalendarView;->initView(Lcom/android/calendar/CalendarView;)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->switchViews(Z)Landroid/view/View;

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    iput-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    :cond_a
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-nez v2, :cond_b

    const v2, 0x259d22

    if-gt v0, v2, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    iput-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    :cond_c
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-nez v2, :cond_d

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->adjustHourSelection()V

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    :cond_d
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    iput-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    :cond_e
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-nez v2, :cond_f

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->adjustHourSelection()V

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    :cond_f
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    goto/16 :goto_1

    :cond_10
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v1, v4

    iput v1, v3, Landroid/text/format/Time;->monthDay:I

    move v1, v8

    goto :goto_2

    :cond_11
    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :sswitch_0
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-ne v2, v6, :cond_1

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    invoke-direct {p0, v6}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->performLongClick()Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_0
    :goto_0
    return v6

    :pswitch_0
    iget v7, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    iget v7, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    const/16 v8, 0xa0

    if-ne v7, v8, :cond_3

    iget v7, p0, Lcom/android/calendar/CalendarView;->mDragScrollStartY:I

    sub-int v1, v7, v5

    iget v7, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-gez v7, :cond_1

    const/4 v7, 0x3

    if-gt v1, v7, :cond_2

    :cond_1
    iget v7, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-lez v7, :cond_0

    const/4 v7, -0x3

    if-ge v1, v7, :cond_0

    :cond_2
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

    invoke-virtual {p0, v7}, Lcom/android/calendar/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_0

    iput v5, p0, Lcom/android/calendar/CalendarView;->mLastMotionY:I

    const/16 v7, 0x80

    iput v7, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarView;->dragEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v7, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v7, v6, :cond_0

    iget v3, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    invoke-direct {p0, v4, v5}, Lcom/android/calendar/CalendarView;->findPressedMoreIcon(II)I

    move-result v7

    iput v7, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    if-eq v3, v7, :cond_0

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_0

    :pswitch_2
    iget v7, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

    invoke-virtual {p0, v7}, Lcom/android/calendar/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarView;->dropEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->goMoreEventList()V

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v7, v7, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mIgnoreEvent:Z

    iput v9, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput v9, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    invoke-direct {p0, v9}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    :cond_6
    iget-boolean v7, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    if-eqz v7, :cond_0

    iput-boolean v9, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v9, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    goto/16 :goto_0

    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method readyToDragEvent()V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    const/16 v1, 0x80

    iput v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mLastMotionY:I

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v1, v1, Lcom/android/calendar/Event;->top:F

    iput v1, p0, Lcom/android/calendar/CalendarView;->mDragEventInitTop:F

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v2, Lcom/android/calendar/Event;->top:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v2, Lcom/android/calendar/Event;->bottom:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v2, Lcom/android/calendar/Event;->left:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v2, Lcom/android/calendar/Event;->right:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    return-void
.end method

.method public releaseBriefMode()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    invoke-direct {p0, v0}, Lcom/android/calendar/CalendarView;->setDayPrevNextBtnState(Z)V

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public reloadEventAction(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    return-void
.end method

.method public reloadEventActionForScroll(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v2, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mChangeFirstHour:Z

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    return-void
.end method

.method public reloadEvents(Z)V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput-object v6, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    new-instance v7, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    invoke-static {v7}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    new-instance v5, Lcom/android/calendar/CalendarView$2;

    invoke-direct {v5, p0, v2}, Lcom/android/calendar/CalendarView$2;-><init>(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)V

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public resetFirstHour()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "num_day"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const-string v0, "first_cell"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    const-string v0, "saved_selection_hour"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    const-string v0, "saved_first_hour"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourWidth:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekCellHeight:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    :goto_0
    const-string v0, "saved_first_hour_offset"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    const-string v0, "save_brief"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    const-string v0, "selection_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const-string v0, "selection_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayHourWidth:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayCellHeight:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayCellWidth:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "num_day"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "first_cell"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "saved_selection_hour"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "saved_first_hour"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "saved_first_hour_offset"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "save_brief"

    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "selection_mode"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "selection_day"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public saveQuickAddEvent(Landroid/widget/TextView;)V
    .locals 13

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v7

    const-wide/32 v0, 0x36ee80

    add-long v9, v7, v0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mDurationDay:I

    if-lt v0, v12, :cond_0

    sub-long v0, v9, v7

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTime()Landroid/text/format/Time;

    move-result-object v0

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDurationDay:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->normalize(Z)J

    new-instance v1, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v1}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendarcommon/EventRecurrence;->calendarDay2Day(I)I

    move-result v0

    iput v0, v1, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    const-string v0, "rrule"

    invoke-virtual {v1}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getCalendarsConditions(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    const-string v0, "_id=%d"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "calendar_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const-string v1, "eventTimezone"

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static {v2, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "description"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "allDay"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "dtstart"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "dtend"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "hasAttendeeData"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>EVENT_CREATED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " </GATE-M>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v2, 0x7f0a00fa

    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iput v11, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    iput v11, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :cond_5
    const-string v1, "calendar_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method public scrollToEventHour()V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mScrollToHour:Lcom/android/calendar/CalendarView$ScrollToSelectedHour;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

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

.method public setCellSize()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekHourWidth:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekCellHeight:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekHourGap:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekEventRectRoundRadius:F

    iput v1, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventTextMargin:I

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mEventTextAscent:I

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventTextHeight:I

    return-void

    :cond_0
    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayHourWidth:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayCellHeight:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayCellWidth:I

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayHourGap:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventTextMargin:I

    goto :goto_0
.end method

.method setDetailedView(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    return-void
.end method

.method setDragEvent(I)V
    .locals 8

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSameTimeEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-wide v4, v3, Lcom/android/calendar/Event;->id:J

    iget-wide v6, v0, Lcom/android/calendar/Event;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    const/16 v4, 0x80

    iput v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->updateTitle()V

    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    return-void
.end method

.method public setSelectionMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    return-void
.end method

.method public updateTitle()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x7

    const/4 v6, 0x1

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a00e1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    iget v0, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v5, :cond_6

    const-string v0, ","

    :goto_2
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewLeft:Landroid/widget/TextView;

    aget-object v2, v0, v8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewRight:Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_6
    const-string v0, " "

    goto/16 :goto_2

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    goto :goto_3
.end method

.method public updateView()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
