.class Lcom/android/calendar/CalendarActivity$DateListener;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-static {v4}, Lcom/android/calendar/CalendarActivity;->access$300(Lcom/android/calendar/CalendarActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput p2, v0, Landroid/text/format/Time;->year:I

    iput p3, v0, Landroid/text/format/Time;->month:I

    iput p4, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v0}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    const v2, 0x7f0a00a0

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v4}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v4

    iget v4, v4, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v2, v1}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
