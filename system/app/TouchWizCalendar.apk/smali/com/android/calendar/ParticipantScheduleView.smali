.class public Lcom/android/calendar/ParticipantScheduleView;
.super Landroid/view/View;
.source "ParticipantScheduleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;,
        Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;,
        Lcom/android/calendar/ParticipantScheduleView$CalendarSimpleGestureListener;,
        Lcom/android/calendar/ParticipantScheduleView$DayHeader;
    }
.end annotation


# static fields
.field private static mCalendarGridLineHorizontalColor:I

.field private static mCalendarHourLabel:I

.field private static mWeekDayColor:I


# instance fields
.field private final BUSY:I

.field private final FREE:I

.field private final NO_DATA:I

.field private final OUT_OF_OFFICE:I

.field private final SAVE_FIRST_CELL:Ljava/lang/String;

.field private final SAVE_FIRST_HOUR:Ljava/lang/String;

.field private final SAVE_FIRST_HOUR_OFFSET:Ljava/lang/String;

.field private final SAVE_NUM_DAY:Ljava/lang/String;

.field private final SCHEDULE_NUM:I

.field private TAG:Ljava/lang/String;

.field private final TENTATIVE:I

.field private dayHeaders:[Lcom/android/calendar/ParticipantScheduleView$DayHeader;

.field private drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field private mAmString:Ljava/lang/String;

.field mBaseDate:Landroid/text/format/Time;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mContinueScroll:Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;

.field private mDateRange:Ljava/lang/String;

.field private mDayBgColor:I

.field private mDayGridColor:I

.field private mDestRect:Landroid/graphics/Rect;

.field private mFirstCell:I

.field private mFirstDate:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mFirstNameIndex:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridAreaHeight:I

.field private mHourGap:I

.field private mHourStrs:[Ljava/lang/String;

.field private mHourTextSize:I

.field private mHourWidth:I

.field private mLastJulianDay:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field private mNameHeight:I

.field mNameStr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNameTextSize:I

.field protected mNumCells:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field protected mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

.field private mPmString:Ljava/lang/String;

.field private mRect:Landroid/graphics/Rect;

.field private mRedrawScreen:Z

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field private mScheduleImage:[Landroid/graphics/drawable/Drawable;

.field mScheduleStr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStartY:I

.field private mScrollToHour:Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;

.field private mScrolling:Z

.field private mSelectionDay:I

.field private mSelectionHour:I

.field private mSrcRect:Landroid/graphics/Rect;

.field mTempDate:Landroid/text/format/Time;

.field private mTitleTextViewLeft:Landroid/widget/TextView;

.field private mTitleTextViewRight:Landroid/widget/TextView;

.field private mTouchMode:I

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mViewHeight:I

.field private mViewStartY:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/ParticipantScheduleActivity;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "ParticipantScheduleView"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/android/calendar/ParticipantScheduleView;->FREE:I

    iput v2, p0, Lcom/android/calendar/ParticipantScheduleView;->TENTATIVE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->BUSY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->OUT_OF_OFFICE:I

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->NO_DATA:I

    const-string v0, "first_cell"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->SAVE_FIRST_CELL:Ljava/lang/String;

    const-string v0, "num_day"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->SAVE_NUM_DAY:Ljava/lang/String;

    const-string v0, "saved_first_hour"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->SAVE_FIRST_HOUR:Ljava/lang/String;

    const-string v0, "saved_first_hour_offset"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->SAVE_FIRST_HOUR_OFFSET:Ljava/lang/String;

    new-instance v0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;-><init>(Lcom/android/calendar/ParticipantScheduleView;Lcom/android/calendar/ParticipantScheduleView$1;)V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mContinueScroll:Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;

    new-instance v0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;-><init>(Lcom/android/calendar/ParticipantScheduleView;Lcom/android/calendar/ParticipantScheduleView$1;)V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrollToHour:Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/calendar/ParticipantScheduleView$DayHeader;

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->dayHeaders:[Lcom/android/calendar/ParticipantScheduleView$DayHeader;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mSrcRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mDestRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    iput-boolean v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mRemeasure:Z

    iput v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mTouchMode:I

    const/16 v0, 0x30

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->SCHEDULE_NUM:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iput-boolean v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mScheduleImage:[Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/calendar/ParticipantScheduleView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/ParticipantScheduleView$1;-><init>(Lcom/android/calendar/ParticipantScheduleView;)V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mUpdateTZ:Ljava/lang/Runnable;

    const-string v0, "[\t\n],"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/android/calendar/ParticipantScheduleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mResources:Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/ParticipantScheduleView$CalendarSimpleGestureListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/ParticipantScheduleView$CalendarSimpleGestureListener;-><init>(Lcom/android/calendar/ParticipantScheduleView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0, p1}, Lcom/android/calendar/ParticipantScheduleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/calendar/ParticipantScheduleView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/ParticipantScheduleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/calendar/ParticipantScheduleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/ParticipantScheduleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->recalc()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/ParticipantScheduleView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/calendar/ParticipantScheduleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$412(Lcom/android/calendar/ParticipantScheduleView;I)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$420(Lcom/android/calendar/ParticipantScheduleView;I)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/ParticipantScheduleView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/ParticipantScheduleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/calendar/ParticipantScheduleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/calendar/ParticipantScheduleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->resetSelectedHour()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/calendar/ParticipantScheduleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    return p1
.end method

.method private computeFirstHour()V
    .locals 2

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHourOffset:I

    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/ParticipantScheduleView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/ParticipantScheduleView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mScheduleStr:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->TAG:Ljava/lang/String;

    const-string v3, "DRAW Schedule"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v1}, Lcom/android/calendar/ParticipantScheduleView;->drawSchedule(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/ParticipantScheduleView;->drawParticipantLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/calendar/ParticipantScheduleView;->drawAmPm(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private drawAmPm(Landroid/graphics/Canvas;)V
    .locals 9

    const/16 v8, 0xc

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/android/calendar/ParticipantScheduleView;->mCalendarHourLabel:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourTextSize:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mAmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    if-lt v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mPmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v1, v6

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstCell:I

    iget v7, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHourOffset:I

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v6, 0x1

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_1
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mAmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_3

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourGap:I

    div-int/lit8 v0, v6, 0x2

    :goto_0
    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    sub-int v3, v6, v0

    int-to-float v6, v3

    int-to-float v7, v5

    invoke-virtual {p1, v4, v6, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    if-ge v6, v8, :cond_2

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v7, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    add-int/2addr v6, v7

    if-le v6, v8, :cond_2

    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mPmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstCell:I

    iget v7, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHourOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    rsub-int/lit8 v7, v7, 0xc

    iget v8, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

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
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourGap:I

    goto :goto_0
.end method

.method private drawCalendarView(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mDestRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstCell:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewHeight:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewWidth:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mDayBgColor:I

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mDayGridColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewWidth:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mGridAreaHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 17

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v15

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mViewWidth:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/ParticipantScheduleView;->mDayGridColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    sget v1, Lcom/android/calendar/ParticipantScheduleView;->mCalendarGridLineHorizontalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mViewWidth:I

    int-to-float v4, v1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v12, v1

    const/4 v13, 0x0

    :goto_0
    const/16 v1, 0x18

    if-ge v13, v1, :cond_0

    add-float v16, v16, v12

    const/high16 v1, 0x3f80

    sub-float v3, v16, v1

    const/high16 v1, 0x3f80

    sub-float v5, v16, v1

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v11, v1

    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    if-ge v14, v1, :cond_1

    move-object/from16 v5, p2

    move v8, v6

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v6, v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    const/16 v7, 0x18

    sget v5, Lcom/android/calendar/ParticipantScheduleView;->mCalendarHourLabel:I

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourTextSize:I

    int-to-float v5, v5

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v0, v5

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourGap:I

    sub-int v2, v5, v6

    div-int/lit8 v4, v0, 0x2

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v7, :cond_1

    if-ne v1, v7, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    aget-object v3, v5, v1

    :goto_1
    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    int-to-float v5, v2

    add-int/lit8 v6, v4, -0x1

    int-to-float v6, v6

    invoke-virtual {p2, v3, v5, v6, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-nez v1, :cond_3

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourStrs:[Ljava/lang/String;

    aget-object v3, v5, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawParticipantLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 29

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ParticipantScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f020091

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v12, :cond_0

    :try_start_0
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ParticipantScheduleView;->getWidth()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v26, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    const/16 v26, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v26, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x4

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    move/from16 v19, v16

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    :goto_2
    move/from16 v0, v19

    if-ge v10, v0, :cond_7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v27, v27, v28

    add-float v24, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v26, " "

    const/16 v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x6

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v25, v0

    :goto_3
    move-object/from16 v5, v17

    array-length v13, v5

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v13, :cond_6

    aget-object v21, v5, v11

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v26, v22, v26

    if-lez v26, :cond_5

    const-string v8, ""

    const/16 v18, 0x1

    :goto_5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v18

    move/from16 v1, v26

    if-gt v0, v1, :cond_1

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v26, v14, v26

    if-lez v26, :cond_4

    const/16 v26, 0x0

    add-int/lit8 v27, v18, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    move/from16 v27, v0

    add-int v19, v26, v27

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x3

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v25, v0

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_6
    add-int v23, v23, v7

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_7
    return-void
.end method

.method private drawRect(Landroid/graphics/Rect;ILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    move v0, p2

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, -0x100

    or-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p4, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawSchedule(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/ParticipantScheduleView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    move/from16 v19, v0

    add-int/lit8 v6, v19, 0x1

    const/4 v12, 0x0

    const v19, 0x7f08001e

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    const v19, 0x7f08001f

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    const v19, 0x7f080020

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    const v19, 0x7f080021

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    move/from16 v19, v0

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    if-le v0, v9, :cond_2

    move/from16 v17, v9

    :goto_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    :goto_1
    move/from16 v0, v17

    if-ge v7, v0, :cond_6

    const/4 v4, 0x4

    const/16 v18, -0x1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v6

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    const/4 v8, 0x0

    :goto_2
    const/16 v19, 0x30

    move/from16 v0, v19

    if-ge v8, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mScheduleStr:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v4, v3, :cond_0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    div-int/lit8 v19, v8, 0x2

    mul-int v19, v19, v5

    rem-int/lit8 v20, v8, 0x2

    div-int/lit8 v21, v5, 0x2

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v12, v10, v2}, Lcom/android/calendar/ParticipantScheduleView;->drawRect(Landroid/graphics/Rect;ILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v3, v0, :cond_3

    move/from16 v18, v8

    div-int/lit8 v19, v8, 0x2

    mul-int v19, v19, v5

    rem-int/lit8 v20, v8, 0x2

    div-int/lit8 v21, v5, 0x2

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_3
    const/16 v19, 0x2f

    move/from16 v0, v19

    if-ne v8, v0, :cond_1

    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v3, v0, :cond_1

    mul-int/lit8 v19, v5, 0x18

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v12, v10, v2}, Lcom/android/calendar/ParticipantScheduleView;->drawRect(Landroid/graphics/Rect;ILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :cond_1
    move v4, v3

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    move/from16 v20, v0

    add-int v17, v19, v20

    goto/16 :goto_0

    :pswitch_0
    move v12, v14

    goto :goto_3

    :pswitch_1
    move/from16 v12, v16

    goto :goto_3

    :pswitch_2
    move v12, v13

    goto :goto_3

    :pswitch_3
    move v12, v15

    goto :goto_3

    :cond_3
    const/16 v18, -0x1

    goto :goto_3

    :cond_4
    move/from16 v18, v8

    div-int/lit8 v19, v8, 0x2

    mul-int v19, v19, v5

    rem-int/lit8 v20, v8, 0x2

    div-int/lit8 v21, v5, 0x2

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_4
    move v12, v14

    goto :goto_3

    :pswitch_5
    move/from16 v12, v16

    goto :goto_3

    :pswitch_6
    move v12, v13

    goto :goto_3

    :pswitch_7
    move v12, v15

    goto :goto_3

    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    const v5, 0x7f0b0069

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/calendar/ParticipantScheduleView;->setFocusable(Z)V

    invoke-virtual {p0, v6}, Lcom/android/calendar/ParticipantScheduleView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v6}, Lcom/android/calendar/ParticipantScheduleView;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mDayGridColor:I

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mDayBgColor:I

    const v4, -0xb4b4b5

    sput v4, Lcom/android/calendar/ParticipantScheduleView;->mCalendarGridLineHorizontalColor:I

    const v4, 0x7f080006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sput v4, Lcom/android/calendar/ParticipantScheduleView;->mCalendarHourLabel:I

    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sput v4, Lcom/android/calendar/ParticipantScheduleView;->mWeekDayColor:I

    const v4, 0x7f0b0064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    const v4, 0x7f0b0067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    const v4, 0x7f0b0066

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    const v4, 0x7f0b0065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    const v4, 0x7f0b0068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourTextSize:I

    const v4, 0x7f0b003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourGap:I

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    const v5, -0x373738

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    const/high16 v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput v7, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    sget-object v4, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourStrs:[Ljava/lang/String;

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mAmString:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mPmString:Ljava/lang/String;

    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTempDate:Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTempDate:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    const v5, 0x7f0f0032

    invoke-virtual {v4, v5}, Lcom/android/calendar/ParticipantScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTitleTextViewLeft:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    const v5, 0x7f0f0033

    invoke-virtual {v4, v5}, Lcom/android/calendar/ParticipantScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTitleTextViewRight:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private recalc()V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    move-wide v0, v2

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstJulianDay:I

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstJulianDay:I

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mLastJulianDay:I

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mMonthLength:I

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstDate:I

    invoke-direct {p0, v6}, Lcom/android/calendar/ParticipantScheduleView;->setDayPrevNextBtnState(Z)V

    return-void
.end method

.method private remeasure(II)V
    .locals 5

    iput p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewWidth:I

    iput p2, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewHeight:I

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstCell:I

    sub-int v3, p2, v3

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mGridAreaHeight:I

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mGridAreaHeight:I

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    if-eq v3, v4, :cond_2

    :cond_0
    if-lez p1, :cond_2

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :try_start_0
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mDayBgColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mCanvas:Landroid/graphics/Canvas;

    :cond_2
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mGridAreaHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->initFirstHour()V

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHourOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private resetSelectedHour()V
    .locals 3

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionHour:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionHour:I

    goto :goto_0
.end method

.method private setDayPrevNextBtnState(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    const v3, 0x7f0f0030

    invoke-virtual {v2, v3}, Lcom/android/calendar/ParticipantScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    const v3, 0x7f0f0034

    invoke-virtual {v2, v3}, Lcom/android/calendar/ParticipantScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstJulianDay:I

    const v3, 0x24dc87

    if-gt v2, v3, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstJulianDay:I

    const v3, 0x259d23

    if-lt v2, v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRemeasure:Z

    iput-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    return-void
.end method

.method public clearScreen()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->invalidate()V

    return-void
.end method

.method doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 7

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mTouchMode:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mOnFlingCalled:Z

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

    if-lt v2, v5, :cond_2

    if-le v2, v3, :cond_2

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    if-gez v0, :cond_1

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    add-int/2addr v4, v5

    :goto_0
    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-virtual {v5, v4}, Lcom/android/calendar/ParticipantScheduleActivity;->showNextParticipants(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-lez v0, :cond_0

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mContinueScroll:Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;

    float-to-int v6, p4

    div-int/lit8 v6, v6, 0x14

    invoke-virtual {v5, v6}, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->init(I)V

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mContinueScroll:Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;

    invoke-virtual {p0, v5}, Lcom/android/calendar/ParticipantScheduleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 7

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

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrollStartY:I

    mul-int/lit8 v4, v0, 0x2

    if-lt v1, v4, :cond_0

    const/16 v4, 0x20

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTouchMode:I

    :cond_0
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrollStartY:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    if-gez v4, :cond_3

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->computeFirstHour()V

    :cond_2
    iput-boolean v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    iput-boolean v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->invalidate()V

    return-void

    :cond_3
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I

    if-le v4, v5, :cond_1

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    goto :goto_0
.end method

.method public getFirstNameIndex()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    return v0
.end method

.method public getNextDay(Z)Landroid/text/format/Time;
    .locals 2

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    if-eqz p1, :cond_0

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-object v0

    :cond_0
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_0
.end method

.method public initFirstHour()V
    .locals 2

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHourOffset:I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    add-int/2addr v0, v1

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    rsub-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->cleanup()V

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRemeasure:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/ParticipantScheduleView;->remeasure(II)V

    iput-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mRemeasure:Z

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/android/calendar/ParticipantScheduleView;->doDraw(Landroid/graphics/Canvas;)V

    iput-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/calendar/ParticipantScheduleView;->drawCalendarView(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/calendar/ParticipantScheduleView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v1

    :pswitch_1
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_1
    iget-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mOnFlingCalled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->resetSelectedHour()V

    iput-boolean v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->invalidate()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->resetSelectedHour()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setSelectedDay(Landroid/text/format/Time;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v4, 0x1

    iput-object p2, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/calendar/ParticipantScheduleView;->mScheduleStr:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionHour:I

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionDay:I

    iput p4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->recalc()V

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->updateTitle()V

    iput-boolean v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mRemeasure:Z

    iput-boolean v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    return-void
.end method

.method public updateTitle()V
    .locals 9

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v6, "MM-dd-yyyy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v6}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mDateRange:Ljava/lang/String;

    const-string v1, " "

    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mDateRange:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mTitleTextViewLeft:Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mTitleTextViewRight:Landroid/widget/TextView;

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
