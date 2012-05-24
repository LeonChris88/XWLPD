.class Lcom/android/calendar/CalendarView$DragRunnable;
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
    name = "DragRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$DragRunnable;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1400(Lcom/android/calendar/CalendarView;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1400(Lcom/android/calendar/CalendarView;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1400(Lcom/android/calendar/CalendarView;)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$1500(Lcom/android/calendar/CalendarView;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v2, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v3, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$1400(Lcom/android/calendar/CalendarView;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/CalendarView;->dragEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method
