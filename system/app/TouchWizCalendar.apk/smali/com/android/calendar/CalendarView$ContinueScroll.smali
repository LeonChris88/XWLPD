.class Lcom/android/calendar/CalendarView$ContinueScroll;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinueScroll"
.end annotation


# instance fields
.field mAbsDeltaY:I

.field mFloatDeltaY:F

.field mFreeSpinTime:J

.field mSignDeltaY:I

.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$ContinueScroll;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 4

    const/16 v1, 0x3c

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    if-lez p1, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    iget v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    :cond_1
    iget v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xb4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFreeSpinTime:J

    return-void

    :cond_2
    if-gez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFreeSpinTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    :goto_0
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-gez v2, :cond_0

    iput v4, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    :cond_0
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    iget v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    invoke-static {v2, v3}, Lcom/android/calendar/CalendarView;->access$1620(Lcom/android/calendar/CalendarView;I)I

    :goto_1
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1600(Lcom/android/calendar/CalendarView;)I

    move-result v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2, v4}, Lcom/android/calendar/CalendarView;->access$1602(Lcom/android/calendar/CalendarView;I)I

    iput v4, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1800(Lcom/android/calendar/CalendarView;)V

    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarView;->invalidate()V

    return-void

    :cond_2
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    const v3, 0x3f333333

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    iget v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    invoke-static {v2, v3}, Lcom/android/calendar/CalendarView;->access$1612(Lcom/android/calendar/CalendarView;I)I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1600(Lcom/android/calendar/CalendarView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$1700(Lcom/android/calendar/CalendarView;)I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$1700(Lcom/android/calendar/CalendarView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/calendar/CalendarView;->access$1602(Lcom/android/calendar/CalendarView;I)I

    iput v4, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2, v4}, Lcom/android/calendar/CalendarView;->access$1902(Lcom/android/calendar/CalendarView;Z)Z

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$2000(Lcom/android/calendar/CalendarView;)V

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2, v5}, Lcom/android/calendar/CalendarView;->access$802(Lcom/android/calendar/CalendarView;Z)Z

    goto :goto_3
.end method
