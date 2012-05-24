.class public Lcom/android/calendar/TwDayOfMonthCursor;
.super Ljava/lang/Object;
.source "TwDayOfMonthCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;
    }
.end annotation


# static fields
.field private static mPrevColumn:I


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mColumn:I

.field private mNumDaysInMonth:I

.field private mNumDaysInPrevMonth:I

.field private mOffset:I

.field private mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

.field private mRow:I

.field private final mWeekStartDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/calendar/TwDayOfMonthCursor;->mPrevColumn:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-lt p4, v3, :cond_0

    const/4 v0, 0x7

    if-le p4, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p4, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mWeekStartDay:I

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    invoke-direct {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->recalculate()V

    invoke-virtual {p0, p3}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    invoke-virtual {p0, p3}, Lcom/android/calendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    return-void
.end method

.method private recalculate()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInMonth:I

    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInPrevMonth:I

    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->getFirstDayOfMonth()I

    move-result v0

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mWeekStartDay:I

    sub-int v1, v0, v2

    if-gez v1, :cond_0

    add-int/lit8 v1, v1, 0x7

    :cond_0
    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    :cond_0
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    sput v1, Lcom/android/calendar/TwDayOfMonthCursor;->mPrevColumn:I

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->nextMonth()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    :goto_1
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getColumnOf(I)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDayAt(II)I
    .locals 4

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    if-ge v0, v2, :cond_2

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInPrevMonth:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, p1, 0x7

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInMonth:I

    if-le v1, v2, :cond_0

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInMonth:I

    sub-int/2addr v1, v2

    goto :goto_1
.end method

.method public getFirstDayOfMonth()I
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfDaysInMonth()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInMonth:I

    return v0
.end method

.method public getRowOf(I)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getSelectedColumn()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 2

    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedRow()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    return v0
.end method

.method public getYear()I
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isSelected(II)Z
    .locals 1

    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid(II)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v1

    if-gez v0, :cond_1

    const/16 v2, 0x76e

    if-eq v1, v2, :cond_2

    :cond_1
    const/16 v2, 0xb

    if-le v0, v2, :cond_4

    const/16 v2, 0x7f4

    if-ne v1, v2, :cond_4

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isWithinCurrentMonth(II)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move v0, v2

    :goto_0
    if-ltz p1, :cond_0

    if-ltz v0, :cond_0

    const/4 v3, 0x5

    if-gt p1, v3, :cond_0

    const/4 v3, 0x6

    if-le v0, v3, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    if-lt v0, v3, :cond_0

    :cond_3
    mul-int/lit8 v3, p1, 0x7

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    iget v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInMonth:I

    if-gt v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1
.end method

.method public left()Z
    .locals 4

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    :goto_0
    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v2, v3}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v2}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    :cond_0
    return v1

    :cond_1
    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->previousMonth()V

    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public nextMonth()V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-direct {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->recalculate()V

    return-void
.end method

.method public previousMonth()V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-direct {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->recalculate()V

    return-void
.end method

.method public right()Z
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iput v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    :goto_0
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->nextMonth()V

    iput v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iput v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    :goto_2
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setFirstMonth()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Calendar;->set(III)V

    invoke-direct {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->recalculate()V

    return-void
.end method

.method public setOnCursorMoveListener(Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    return-void
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    invoke-virtual {p0, p1}, Lcom/android/calendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    sget v0, Lcom/android/calendar/TwDayOfMonthCursor;->mPrevColumn:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    :cond_1
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 1

    iput p1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iput p2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    :cond_0
    return-void
.end method

.method public up()Z
    .locals 3

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    :cond_0
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    sput v1, Lcom/android/calendar/TwDayOfMonthCursor;->mPrevColumn:I

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->previousMonth()V

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    :goto_1
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
