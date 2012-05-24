.class public Lcom/android/calendar/DayView;
.super Lcom/android/calendar/CalendarView;
.source "DayView.java"


# instance fields
.field private mCellMargin:I

.field private mMoreEventOffset:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    invoke-virtual {p1}, Lcom/android/calendar/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mCellMargin:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mMoreEventOffset:I

    invoke-direct {p0}, Lcom/android/calendar/DayView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mDrawTextInEventRect:Z

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget v1, p0, Lcom/android/calendar/DayView;->mCellMargin:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setCellMargin(F)V

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget v1, p0, Lcom/android/calendar/DayView;->mMoreEventOffset:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setMoreEventOffset(I)V

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->setCellSize()V

    return-void
.end method
