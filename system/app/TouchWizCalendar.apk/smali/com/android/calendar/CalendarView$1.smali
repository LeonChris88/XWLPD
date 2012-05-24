.class Lcom/android/calendar/CalendarView$1;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$400(Lcom/android/calendar/CalendarView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v1, v1, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v1, v1, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$500(Lcom/android/calendar/CalendarView;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->updateTitle()V

    return-void
.end method
