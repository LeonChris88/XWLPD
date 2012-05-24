.class Lcom/android/calendar/CalendarView$ScrollToSelectedHour;
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
    name = "ScrollToSelectedHour"
.end annotation


# instance fields
.field mDeltaY:I

.field mDestY:I

.field mEventHour:I

.field mIsInit:Z

.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mIsInit:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v1, v4}, Lcom/android/calendar/CalendarView;->access$2102(Lcom/android/calendar/CalendarView;Z)Z

    iget-boolean v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mIsInit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->getEventHour()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mEventHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mEventHour:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$2200(Lcom/android/calendar/CalendarView;)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mEventHour:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    iput v3, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDestY:I

    :goto_1
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$1600(Lcom/android/calendar/CalendarView;)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDestY:I

    if-ge v1, v2, :cond_3

    const/16 v1, 0xd

    iput v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    :goto_2
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mIsInit:Z

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$1600(Lcom/android/calendar/CalendarView;)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    add-int v0, v1, v2

    if-gez v0, :cond_4

    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v1, v3}, Lcom/android/calendar/CalendarView;->access$1602(Lcom/android/calendar/CalendarView;I)I

    iput v3, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    :goto_3
    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v1, p0}, Lcom/android/calendar/CalendarView;->post(Ljava/lang/Runnable;)Z

    :goto_4
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mEventHour:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$2300(Lcom/android/calendar/CalendarView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$2400(Lcom/android/calendar/CalendarView;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$2500(Lcom/android/calendar/CalendarView;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDestY:I

    goto :goto_1

    :cond_3
    const/16 v1, -0xd

    iput v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$1700(Lcom/android/calendar/CalendarView;)I

    move-result v1

    if-le v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1700(Lcom/android/calendar/CalendarView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/calendar/CalendarView;->access$1602(Lcom/android/calendar/CalendarView;I)I

    iput v3, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDestY:I

    if-ge v0, v1, :cond_7

    :cond_6
    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    if-gez v1, :cond_8

    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDestY:I

    if-ge v0, v1, :cond_8

    :cond_7
    iput v3, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v1, v0}, Lcom/android/calendar/CalendarView;->access$1602(Lcom/android/calendar/CalendarView;I)I

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$1800(Lcom/android/calendar/CalendarView;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v1, v4}, Lcom/android/calendar/CalendarView;->access$802(Lcom/android/calendar/CalendarView;Z)Z

    iput-boolean v4, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mIsInit:Z

    goto :goto_4
.end method
