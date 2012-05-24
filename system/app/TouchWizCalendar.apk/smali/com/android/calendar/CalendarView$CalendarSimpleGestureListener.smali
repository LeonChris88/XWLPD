.class Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarSimpleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doDown(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/calendar/CalendarView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doLongPress(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/calendar/CalendarView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
