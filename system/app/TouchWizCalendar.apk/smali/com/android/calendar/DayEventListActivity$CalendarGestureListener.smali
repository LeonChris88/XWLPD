.class Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DayEventListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayEventListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayEventListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    iget-object v1, v1, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayEventListView;->doDown(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    iget-object v1, v1, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayEventListView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    const/4 v1, 0x1

    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    iget-object v1, v1, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayEventListView;->doLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    iget-object v1, v1, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayEventListView;->doSingleTapUp(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    return v1
.end method
