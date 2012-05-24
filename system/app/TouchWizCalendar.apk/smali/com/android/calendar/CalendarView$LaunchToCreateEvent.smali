.class Lcom/android/calendar/CalendarView$LaunchToCreateEvent;
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
    name = "LaunchToCreateEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarView;->access$2602(Lcom/android/calendar/CalendarView;I)I

    iget-object v0, p0, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarView;->access$1302(Lcom/android/calendar/CalendarView;I)I

    iget-object v0, p0, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarView;->access$2700(Lcom/android/calendar/CalendarView;Z)V

    return-void
.end method
