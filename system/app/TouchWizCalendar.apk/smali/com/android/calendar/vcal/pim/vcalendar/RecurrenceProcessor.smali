.class public Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;
    }
.end annotation


# static fields
.field private static final DAYS_IN_YEAR_PRECEDING_MONTH:[I

.field private static final DAYS_PER_MONTH:[I


# instance fields
.field private mDays:Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xc

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    new-instance v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mDays:Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;

    return-void
.end method

.method private static filter(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)I
    .locals 10

    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    const/4 v6, 0x6

    if-lt v6, v3, :cond_0

    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([III)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x5

    if-lt v6, v3, :cond_1

    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v8

    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v6, 0x2

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    if-lt v6, v3, :cond_4

    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    iget v8, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v6, 0x3

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v6, 0x4

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_4

    iget-object v1, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    iget v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    iget v6, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v6}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_6

    aget v6, v1, v4

    if-ne v6, v5, :cond_5

    :cond_4
    const/4 v6, 0x3

    if-lt v6, v3, :cond_7

    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    iget v8, p1, Landroid/text/format/Time;->hour:I

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v6, 0x6

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x5

    goto :goto_0

    :cond_7
    const/4 v6, 0x2

    if-lt v6, v3, :cond_8

    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    iget v8, p1, Landroid/text/format/Time;->minute:I

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v6, 0x7

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x1

    if-lt v6, v3, :cond_9

    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    iget v8, p1, Landroid/text/format/Time;->second:I

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v6, 0x8

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method static isLeapYear(I)Z
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static listContains([III)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static listContains([IIII)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    aget v1, p0, v0

    if-lez v1, :cond_1

    if-ne v1, p2, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/2addr p3, v1

    if-eq p3, p2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static monthLength(II)I
    .locals 3

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v0, v2, p1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1d

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static final normDateTimeComparisonValue(Landroid/text/format/Time;)J
    .locals 4

    iget v0, p0, Landroid/text/format/Time;->year:I

    int-to-long v0, v0

    const/16 v2, 0x1a

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->month:I

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->hour:I

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->minute:I

    shl-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static final setTimeFromLongValue(Landroid/text/format/Time;J)V
    .locals 2

    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .locals 15

    const/16 v14, 0xc

    iget v9, p0, Landroid/text/format/Time;->second:I

    iget v5, p0, Landroid/text/format/Time;->minute:I

    iget v4, p0, Landroid/text/format/Time;->hour:I

    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    iget v6, p0, Landroid/text/format/Time;->month:I

    iget v10, p0, Landroid/text/format/Time;->year:I

    if-gez v9, :cond_0

    add-int/lit8 v13, v9, -0x3b

    :goto_0
    div-int/lit8 v2, v13, 0x3c

    mul-int/lit8 v13, v2, 0x3c

    sub-int/2addr v9, v13

    add-int/2addr v5, v2

    if-gez v5, :cond_1

    add-int/lit8 v13, v5, -0x3b

    :goto_1
    div-int/lit8 v1, v13, 0x3c

    mul-int/lit8 v13, v1, 0x3c

    sub-int/2addr v5, v13

    add-int/2addr v4, v1

    if-gez v4, :cond_2

    add-int/lit8 v13, v4, -0x17

    :goto_2
    div-int/lit8 v0, v13, 0x18

    mul-int/lit8 v13, v0, 0x18

    sub-int/2addr v4, v13

    add-int/2addr v7, v0

    :goto_3
    if-gtz v7, :cond_4

    const/4 v13, 0x1

    if-le v6, v13, :cond_3

    invoke-static {v10}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    :goto_4
    add-int/2addr v7, v3

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_0
    move v13, v9

    goto :goto_0

    :cond_1
    move v13, v5

    goto :goto_1

    :cond_2
    move v13, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v10, -0x1

    invoke-static {v13}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    goto :goto_4

    :cond_4
    if-gez v6, :cond_7

    add-int/lit8 v13, v6, 0x1

    div-int/lit8 v13, v13, 0xc

    add-int/lit8 v12, v13, -0x1

    add-int/2addr v10, v12

    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    :cond_5
    :goto_5
    if-nez v6, :cond_6

    invoke-static {v10}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->yearLength(I)I

    move-result v11

    if-le v7, v11, :cond_6

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v7, v11

    :cond_6
    invoke-static {v10, v6}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->monthLength(II)I

    move-result v8

    if-le v7, v8, :cond_8

    sub-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v14, :cond_5

    add-int/lit8 v6, v6, -0xc

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    if-lt v6, v14, :cond_5

    div-int/lit8 v12, v6, 0xc

    add-int/2addr v10, v12

    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    goto :goto_5

    :cond_8
    iput v9, p0, Landroid/text/format/Time;->second:I

    iput v5, p0, Landroid/text/format/Time;->minute:I

    iput v4, p0, Landroid/text/format/Time;->hour:I

    iput v7, p0, Landroid/text/format/Time;->monthDay:I

    iput v6, p0, Landroid/text/format/Time;->month:I

    iput v10, p0, Landroid/text/format/Time;->year:I

    invoke-static {v10, v6, v7}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->weekDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->weekDay:I

    invoke-static {v10, v6, v7}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->yearDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->yearDay:I

    return-void
.end method

.method private static useBYX(III)Z
    .locals 1

    if-le p0, p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static weekDay(III)I
    .locals 2

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0xc

    add-int/lit8 p0, p0, -0x1

    :cond_0
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static yearDay(III)I
    .locals 2

    sget-object v1, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    invoke-static {p0}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method static yearLength(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method


# virtual methods
.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V
    .locals 58
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Lcom/android/calendarcommon/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/DateException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    invoke-static/range {p1 .. p1}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v18

    const/4 v14, 0x0

    if-eqz p7, :cond_0

    cmp-long v55, v18, p3

    if-ltz v55, :cond_0

    cmp-long v55, v18, p5

    if-gez v55, :cond_0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mDays:Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;

    move-object/from16 v16, v0

    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;->setRecurrence(Lcom/android/calendarcommon/EventRecurrence;)V

    const-wide v55, 0x7fffffffffffffffL

    cmp-long v55, p5, v55

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v55, v0

    if-nez v55, :cond_1

    new-instance v55, Lcom/android/calendar/vcal/pim/vcalendar/DateException;

    const-string v56, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v55 .. v56}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_0
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v20

    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "DateException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v20

    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    new-instance v55, Lcom/android/calendar/vcal/pim/vcalendar/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad freq="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_1
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v43

    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "RuntimeException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v43

    :pswitch_0
    const/16 v26, 0x1

    :cond_2
    :goto_0
    if-gtz v25, :cond_3

    const/16 v25, 0x1

    :cond_3
    :try_start_2
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    const/16 v55, 0x6

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v12}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v52

    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v55, v0

    if-gtz v55, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    move/from16 v55, v0

    if-lez v55, :cond_d

    :cond_4
    const/16 v49, 0x1

    :goto_1
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    const/16 v55, 0x3

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v10}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v50

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    const/16 v55, 0x2

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v11}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v51

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    const/16 v55, 0x1

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v13}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v53

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-ne v0, v1, :cond_5

    if-eqz v49, :cond_5

    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-eqz v55, :cond_e

    new-instance v47, Ljava/lang/StringBuffer;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuffer;->length()I

    move-result v55

    const/16 v56, 0xf

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_6

    const/16 v55, 0x5a

    move-object/from16 v0, v47

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v44

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    const/16 v56, 0x7f4

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_7

    const/16 v55, 0x7f4

    move/from16 v0, v55

    move-object/from16 v1, v44

    iput v0, v1, Landroid/text/format/Time;->year:I

    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    invoke-static/range {v44 .. v44}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v45

    :goto_2
    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    :cond_8
    const/16 v38, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    move-object/from16 v0, v30

    iget v9, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int/lit8 v34, v55, 0x1

    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v35, v0

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    :cond_9
    if-eqz v52, :cond_f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    move-object/from16 v55, v0

    aget v8, v55, v38

    :goto_3
    add-int/lit8 v8, v8, -0x1

    const/4 v15, 0x1

    const/16 v36, 0x0

    if-eqz v49, :cond_a

    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v17, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    sub-int v15, v55, v17

    add-int/lit8 v36, v15, 0x6

    :cond_a
    :goto_4
    if-eqz v49, :cond_18

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v55

    if-nez v55, :cond_11

    add-int/lit8 v15, v15, 0x1

    :goto_5
    if-eqz v49, :cond_b

    move/from16 v0, v36

    if-le v15, v0, :cond_a

    :cond_b
    add-int/lit8 v38, v38, 0x1

    if-eqz v52, :cond_c

    move/from16 v0, v38

    if-lt v0, v12, :cond_9

    :cond_c
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v40, v0

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    const/16 v39, 0x1

    :goto_6
    mul-int v54, v25, v39

    packed-switch v26, :pswitch_data_1

    new-instance v55, Ljava/lang/RuntimeException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad field="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v55

    :pswitch_1
    const/16 v26, 0x2

    goto/16 :goto_0

    :pswitch_2
    const/16 v26, 0x3

    goto/16 :goto_0

    :pswitch_3
    const/16 v26, 0x4

    goto/16 :goto_0

    :pswitch_4
    const/16 v26, 0x4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    move/from16 v55, v0

    mul-int/lit8 v25, v55, 0x7

    if-gtz v25, :cond_2

    const/16 v25, 0x7

    goto/16 :goto_0

    :pswitch_5
    const/16 v26, 0x5

    goto/16 :goto_0

    :pswitch_6
    const/16 v26, 0x6

    goto/16 :goto_0

    :cond_d
    const/16 v49, 0x0

    goto/16 :goto_1

    :cond_e
    new-instance v48, Landroid/text/format/Time;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    packed-switch v24, :pswitch_data_2

    :goto_7
    :pswitch_7
    invoke-static/range {v48 .. v48}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v45

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, v48

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int/lit8 v55, v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v48

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_7

    :pswitch_9
    move-object/from16 v0, v48

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int/lit8 v55, v55, 0x5

    move/from16 v0, v55

    move-object/from16 v1, v48

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_7

    :pswitch_a
    move-object/from16 v0, v48

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int/lit8 v55, v55, 0xa

    move/from16 v0, v55

    move-object/from16 v1, v48

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_7

    :pswitch_b
    move-object/from16 v0, v48

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int/lit8 v55, v55, 0x32

    move/from16 v0, v55

    move-object/from16 v1, v48

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_7

    :cond_f
    move/from16 v8, v34

    goto/16 :goto_3

    :cond_10
    const/16 v55, 0x4

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v36

    goto/16 :goto_4

    :cond_11
    move v7, v15

    :goto_8
    const/16 v29, 0x0

    :cond_12
    if-eqz v50, :cond_19

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    move-object/from16 v55, v0

    aget v6, v55, v29

    :goto_9
    const/16 v37, 0x0

    :cond_13
    if-eqz v51, :cond_1a

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    move-object/from16 v55, v0

    aget v5, v55, v37

    :goto_a
    const/16 v42, 0x0

    :cond_14
    if-eqz v53, :cond_1b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    move-object/from16 v55, v0

    aget v4, v55, v42

    :goto_b
    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    invoke-static {v3}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    invoke-static {v3}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v27

    cmp-long v55, v27, v18

    if-ltz v55, :cond_1e

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->filter(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)I

    move-result v23

    if-nez v23, :cond_1e

    cmp-long v55, v18, v27

    if-nez v55, :cond_15

    if-eqz p7, :cond_15

    cmp-long v55, v18, p3

    if-ltz v55, :cond_15

    cmp-long v55, v18, p5

    if-ltz v55, :cond_16

    :cond_15
    add-int/lit8 v14, v14, 0x1

    :cond_16
    cmp-long v55, v27, v45

    if-lez v55, :cond_1c

    :cond_17
    return-void

    :cond_18
    move/from16 v7, v31

    goto :goto_8

    :cond_19
    move/from16 v6, v32

    goto :goto_9

    :cond_1a
    move/from16 v5, v33

    goto :goto_a

    :cond_1b
    move/from16 v4, v35

    goto :goto_b

    :cond_1c
    cmp-long v55, v27, p5

    if-gez v55, :cond_17

    cmp-long v55, v27, p3

    if-ltz v55, :cond_1d

    if-eqz p7, :cond_22

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_c
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v55, v0

    if-lez v55, :cond_1e

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v55, v0

    move/from16 v0, v55

    if-eq v0, v14, :cond_17

    :cond_1e
    add-int/lit8 v42, v42, 0x1

    if-eqz v53, :cond_1f

    move/from16 v0, v42

    if-lt v0, v13, :cond_14

    :cond_1f
    add-int/lit8 v37, v37, 0x1

    if-eqz v51, :cond_20

    move/from16 v0, v37

    if-lt v0, v11, :cond_13

    :cond_20
    add-int/lit8 v29, v29, 0x1

    if-eqz v50, :cond_21

    move/from16 v0, v29

    if-lt v0, v10, :cond_12

    :cond_21
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    :cond_22
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_c
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->second:I

    :goto_d
    invoke-static/range {v30 .. v30}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    const/16 v55, 0x6

    move/from16 v0, v26

    move/from16 v1, v55

    if-eq v0, v1, :cond_23

    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-ne v0, v1, :cond_8

    :cond_23
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    move/from16 v0, v55

    move/from16 v1, v40

    if-eq v0, v1, :cond_8

    add-int/lit8 v39, v39, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto/16 :goto_6

    :pswitch_d
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_d

    :pswitch_e
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_d

    :pswitch_f
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    :pswitch_10
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_d

    :pswitch_11
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_d

    :pswitch_12
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_d

    :pswitch_13
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I
    :try_end_2
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_d

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/DateException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v5

    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v7

    :goto_0
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_1
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    aget-object v4, v20, v28

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V

    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    :cond_0
    const-wide v7, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v2, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_2
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    aget-wide v22, v20, v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_3
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    aget-object v13, v20, v28

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V

    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    if-eqz v2, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_4
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    aget-wide v22, v20, v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v10}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    new-array v0, v2, [J

    move-object/from16 v21, v0

    :cond_5
    return-object v21

    :cond_6
    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v21, v0

    const/16 v26, 0x0

    new-instance v31, Landroid/text/format/Time;

    invoke-direct/range {v31 .. v31}, Landroid/text/format/Time;-><init>()V

    invoke-virtual/range {v31 .. v32}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v31

    invoke-static {v0, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    add-int/lit8 v27, v26, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    aput-wide v2, v21, v26

    move/from16 v26, v27

    goto :goto_5
.end method

.method public getLastOccurence(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/DateException;
        }
    .end annotation

    const-wide/16 v14, -0x1

    const/4 v12, 0x0

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v1, :cond_6

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    array-length v0, v8

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    aget-object v17, v8, v13

    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v1, :cond_1

    const/4 v12, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    cmp-long v1, v18, v14

    if-lez v1, :cond_0

    move-wide/from16 v14, v18

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    :goto_2
    return-wide v1

    :cond_3
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_5

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    array-length v0, v8

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    aget-wide v10, v8, v13

    cmp-long v1, v10, v14

    if-lez v1, :cond_4

    move-wide v14, v10

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-eqz v1, :cond_9

    if-nez v12, :cond_9

    move-wide v1, v14

    goto :goto_2

    :cond_6
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_9

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-nez v1, :cond_9

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    if-nez v1, :cond_9

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    array-length v0, v8

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_8

    aget-wide v10, v8, v13

    cmp-long v1, v10, v14

    if-lez v1, :cond_7

    move-wide v14, v10

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_8
    move-wide v1, v14

    goto :goto_2

    :cond_9
    if-nez v12, :cond_a

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_c

    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J

    move-result-object v9

    array-length v1, v9

    if-nez v1, :cond_b

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_b
    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v9, v1

    goto :goto_2

    :cond_c
    const-wide/16 v1, -0x1

    goto :goto_2
.end method
