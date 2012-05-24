.class Lcom/android/calendar/DayEventListActivity$DateListener;
.super Ljava/lang/Object;
.source "DayEventListActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayEventListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListActivity;


# direct methods
.method private constructor <init>(Lcom/android/calendar/DayEventListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity$DateListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/DayEventListActivity;Lcom/android/calendar/DayEventListActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/DayEventListActivity$DateListener;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity$DateListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput p2, v0, Landroid/text/format/Time;->year:I

    iput p3, v0, Landroid/text/format/Time;->month:I

    iput p4, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v0}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity$DateListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    const v2, 0x7f0a00a0

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity$DateListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v1, v0, v3, v3}, Lcom/android/calendar/DayEventListActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_0
.end method
