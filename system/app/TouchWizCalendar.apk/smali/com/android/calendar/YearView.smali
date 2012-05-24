.class public Lcom/android/calendar/YearView;
.super Landroid/view/View;
.source "YearView.java"

# interfaces
.implements Lcom/android/calendar/MonthInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/YearView$SwitchToMonthView;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mColumnNum:I

.field private mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

.field private mDayTextSize:I

.field private mFocusBox:Landroid/graphics/drawable/Drawable;

.field private mFocusHeight:I

.field private mFocusWidth:I

.field private mFocusedColumn:I

.field private mFocusedRow:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMonthColor:I

.field private mMonthDayNumberColor:I

.field private mMonthHeight:I

.field private mMonthOtherDayColor:I

.field private mMonthSaturdayNumberColor:I

.field private mMonthSundayNumberColor:I

.field private mMonthTextHeight:I

.field private mMonthTextSize:I

.field private mMonthWidth:I

.field private mOtherDayTextSize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mParentActivity:Lcom/android/calendar/MonthActivity;

.field mRedrawScreen:Z

.field private mRowNum:I

.field private mScreenMode:I

.field private mSwitchToMonthView:Lcom/android/calendar/YearView$SwitchToMonthView;

.field private mTempTime:Landroid/text/format/Time;

.field private mTime:Landroid/text/format/Time;

.field private mYearFocusInnerLandMargin:I

.field private mYearFocusInnerVertMargin:I

.field private mYearFocusOutterLandMargin:I

.field private mYearFocusOutterVertMargin:I

.field private mYearInnerLandMargin:I

.field private mYearInnerVertMargin:I

.field private mYearOutterLandMargin:I

.field private mYearOutterVertMargin:I

.field private mYearTopVertMargin:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mPaint:Landroid/graphics/Paint;

    iput-boolean v4, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    iput v4, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    new-instance v2, Lcom/android/calendar/YearView$SwitchToMonthView;

    invoke-direct {v2, p0, v5}, Lcom/android/calendar/YearView$SwitchToMonthView;-><init>(Lcom/android/calendar/YearView;Lcom/android/calendar/YearView$1;)V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mSwitchToMonthView:Lcom/android/calendar/YearView$SwitchToMonthView;

    invoke-virtual {p0, v3}, Lcom/android/calendar/YearView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/android/calendar/YearView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v3}, Lcom/android/calendar/YearView;->setClickable(Z)V

    invoke-virtual {p1}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b005a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthWidth:I

    const v2, 0x7f0b005b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthHeight:I

    const v2, 0x7f0b005d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mCellHeight:I

    const v2, 0x7f0b005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mCellWidth:I

    const v2, 0x7f0b0055

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearOutterLandMargin:I

    const v2, 0x7f0b0056

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearInnerLandMargin:I

    const v2, 0x7f0b0057

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearTopVertMargin:I

    const v2, 0x7f0b0058

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearOutterVertMargin:I

    const v2, 0x7f0b0059

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearInnerVertMargin:I

    const v2, 0x7f0b005e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthTextHeight:I

    const v2, 0x7f0b005f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthTextSize:I

    const v2, 0x7f0b0060

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mDayTextSize:I

    const v2, 0x7f0b0061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mOtherDayTextSize:I

    const v2, 0x7f0b0051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearFocusOutterLandMargin:I

    const v2, 0x7f0b0052

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearFocusInnerLandMargin:I

    const v2, 0x7f0b0053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearFocusOutterVertMargin:I

    const v2, 0x7f0b0054

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearFocusInnerVertMargin:I

    const v2, 0x7f0b004f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mFocusWidth:I

    const v2, 0x7f0b0050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mFocusHeight:I

    const v2, 0x7f0b0062

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mRowNum:I

    const v2, 0x7f0b0063

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mColumnNum:I

    const v2, 0x7f080028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthColor:I

    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthDayNumberColor:I

    const v2, 0x7f08000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthSundayNumberColor:I

    const v2, 0x7f08000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthSaturdayNumberColor:I

    const v2, 0x7f08000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthOtherDayColor:I

    const v2, 0x7f020095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/YearView;->mFocusBox:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-static {p1, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/calendar/YearView$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/YearView$1;-><init>(Lcom/android/calendar/YearView;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/YearView;)Lcom/android/calendar/MonthActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/YearView;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/YearView;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/YearView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/YearView;->getPressedRow(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/YearView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/YearView;->getPressedColumn(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/YearView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/YearView;->mFocusedRow:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/calendar/YearView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/YearView;->mFocusedRow:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/calendar/YearView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/YearView;->mFocusedColumn:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/calendar/YearView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/YearView;->mFocusedColumn:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/calendar/YearView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/calendar/YearView;)Lcom/android/calendar/YearView$SwitchToMonthView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/YearView;->mSwitchToMonthView:Lcom/android/calendar/YearView$SwitchToMonthView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/YearView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/YearView;->mColumnNum:I

    return v0
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 32

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/YearView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/YearView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->setFirstMonth()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    move-object/from16 v28, v0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v6}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5, v6}, Landroid/text/format/Time;->set(III)V

    const/16 v31, 0x0

    const/16 v30, 0x0

    :cond_0
    :goto_1
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v24

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v4

    add-int/lit8 v26, v4, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mYearOutterLandMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/YearView;->mMonthWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mYearInnerLandMargin:I

    add-int/2addr v5, v6

    mul-int v5, v5, v30

    add-int v16, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mYearTopVertMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/YearView;->mMonthTextHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mMonthHeight:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mYearInnerVertMargin:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mYearOutterVertMargin:I

    add-int/2addr v5, v6

    mul-int v5, v5, v31

    add-int v17, v4, v5

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mMonthTextSize:I

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mMonthColor:I

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    const-string v4, "MMMM"

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/YearView;->mMonthWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int v5, v5, v16

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mMonthTextHeight:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x5

    add-int v6, v6, v17

    add-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mMonthTextHeight:I

    add-int v17, v17, v4

    const v4, -0xb4b4b5

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mMonthWidth:I

    add-int v4, v4, v16

    int-to-float v7, v4

    add-int/lit8 v4, v17, 0x1

    int-to-float v8, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mYearInnerVertMargin:I

    add-int v17, v17, v4

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sub-int v11, v21, v20

    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v26

    if-ge v12, v0, :cond_3

    const/4 v13, 0x1

    :goto_3
    const/16 v4, 0x8

    if-ge v13, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/YearView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v18}, Lcom/android/calendar/YearView;->drawBox(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;IIZ)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mScreenMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mYearFocusOutterLandMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/YearView;->mFocusedColumn:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mFocusWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/YearView;->mYearFocusInnerLandMargin:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int v22, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mYearFocusOutterVertMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/YearView;->mFocusedRow:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mFocusHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/YearView;->mYearFocusInnerVertMargin:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int v29, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mFocusWidth:I

    add-int v27, v22, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mFocusHeight:I

    add-int v19, v29, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mFocusBox:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v19

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mFocusBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->nextMonth()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v6}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5, v6}, Landroid/text/format/Time;->set(III)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mColumnNum:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v30

    if-ge v0, v4, :cond_6

    add-int/lit8 v30, v30, 0x1

    :goto_4
    if-nez v30, :cond_0

    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    :cond_6
    const/16 v30, 0x0

    goto :goto_4
.end method

.method private drawBox(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;IIZ)V
    .locals 7

    iget-object v4, p0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4, p2, p3}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v3

    iget v4, p0, Lcom/android/calendar/YearView;->mCellHeight:I

    mul-int/2addr v4, p2

    add-int/2addr p7, v4

    if-eqz p3, :cond_0

    add-int/lit8 v4, p3, -0x1

    iget v5, p0, Lcom/android/calendar/YearView;->mCellWidth:I

    mul-int/2addr v4, v5

    add-int/2addr p6, v4

    :cond_0
    if-eqz v3, :cond_1

    iget v4, p0, Lcom/android/calendar/YearView;->mDayTextSize:I

    int-to-float v4, v4

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    iget v4, p0, Lcom/android/calendar/YearView;->mMonthDayNumberColor:I

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    if-nez v3, :cond_2

    iget v4, p0, Lcom/android/calendar/YearView;->mMonthOtherDayColor:I

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v4, p0, Lcom/android/calendar/YearView;->mCellWidth:I

    add-int/2addr v4, p6

    iget v5, p0, Lcom/android/calendar/YearView;->mCellWidth:I

    const-string v6, "00"

    invoke-virtual {p5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    iget v4, p0, Lcom/android/calendar/YearView;->mCellHeight:I

    add-int/2addr v4, p7

    iget v5, p0, Lcom/android/calendar/YearView;->mCellHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/YearView;->mDayTextSize:I

    div-int/lit8 v5, v5, 0x3

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4, p2, p3}, Lcom/android/calendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {p4, v4, v5, v6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    iget v4, p0, Lcom/android/calendar/YearView;->mOtherDayTextSize:I

    int-to-float v4, v4

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v4}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v4

    add-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x1

    rem-int/lit8 v4, v4, 0x7

    add-int/lit8 v0, v4, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    iget v4, p0, Lcom/android/calendar/YearView;->mMonthSundayNumberColor:I

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    iget v4, p0, Lcom/android/calendar/YearView;->mMonthSaturdayNumberColor:I

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/android/calendar/YearView;->mMonthDayNumberColor:I

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method private drawingCalc(II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_2

    :cond_0
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/calendar/YearView;->mCanvas:Landroid/graphics/Canvas;

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private getPressedColumn(I)I
    .locals 3

    iget v0, p0, Lcom/android/calendar/YearView;->mYearFocusOutterLandMargin:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/YearView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/YearView;->mYearFocusOutterLandMargin:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/calendar/YearView;->mYearFocusOutterLandMargin:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/calendar/YearView;->mFocusWidth:I

    iget v2, p0, Lcom/android/calendar/YearView;->mYearFocusInnerLandMargin:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPressedRow(I)I
    .locals 3

    iget v0, p0, Lcom/android/calendar/YearView;->mYearFocusOutterVertMargin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/YearView;->mYearFocusOutterVertMargin:I

    iget v1, p0, Lcom/android/calendar/YearView;->mFocusHeight:I

    iget v2, p0, Lcom/android/calendar/YearView;->mYearFocusInnerVertMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/YearView;->mRowNum:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/calendar/YearView;->mYearFocusOutterVertMargin:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/calendar/YearView;->mFocusHeight:I

    iget v2, p0, Lcom/android/calendar/YearView;->mYearFocusInnerVertMargin:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public animationEnd()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/YearView;->invalidate()V

    return-void
.end method

.method public getPrevNextTime(I)Landroid/text/format/Time;
    .locals 6

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    iget v3, v2, Landroid/text/format/Time;->year:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    const/16 v3, 0x1f

    const/16 v4, 0xb

    const/16 v5, 0x7f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    :cond_0
    return-object v2
.end method

.method public getSelectedDate()Landroid/text/format/Time;
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    invoke-static {v0}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-object v0
.end method

.method public getSelectedMillis()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/YearView;->getSelectedDate()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTime()Landroid/text/format/Time;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v3, p0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

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

    iget-object v6, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

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

.method public getTime()Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v1, p0, Lcom/android/calendar/YearView;->mCanvas:Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/android/calendar/YearView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/YearView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/YearView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/YearView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/YearView;->drawingCalc(II)V

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/YearView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/YearView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v0}, Lcom/android/calendar/YearView;->doDraw(Landroid/graphics/Canvas;)V

    :cond_1
    iput-boolean v3, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    :cond_2
    iget-object v1, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/YearView;->drawingCalc(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/YearView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/YearView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "YearView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    iput-boolean v3, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/YearView;->invalidate()V

    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    const-string v2, "screen_mode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    const-string v2, "focused_month"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v2, p0, Lcom/android/calendar/YearView;->mColumnNum:I

    div-int v2, v0, v2

    iput v2, p0, Lcom/android/calendar/YearView;->mFocusedRow:I

    if-nez v0, :cond_0

    :goto_0
    iput v1, p0, Lcom/android/calendar/YearView;->mFocusedColumn:I

    return-void

    :cond_0
    iget v1, p0, Lcom/android/calendar/YearView;->mColumnNum:I

    rem-int v1, v0, v1

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "screen_mode"

    iget v1, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "focused_month"

    iget v1, p0, Lcom/android/calendar/YearView;->mFocusedRow:I

    iget v2, p0, Lcom/android/calendar/YearView;->mColumnNum:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/YearView;->mFocusedColumn:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setSelectedTime(Landroid/text/format/Time;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    new-instance v0, Lcom/android/calendar/TwDayOfMonthCursor;

    iget v1, p1, Landroid/text/format/Time;->year:I

    iget v2, p1, Landroid/text/format/Time;->month:I

    iget v3, p1, Landroid/text/format/Time;->monthDay:I

    iget-object v4, p0, Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v4}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    iput-boolean v5, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    invoke-virtual {p0}, Lcom/android/calendar/YearView;->invalidate()V

    return-void
.end method

.method public setTime(Landroid/text/format/Time;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-void
.end method
