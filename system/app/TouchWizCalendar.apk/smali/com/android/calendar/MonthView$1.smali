.class Lcom/android/calendar/MonthView$1;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$000(Lcom/android/calendar/MonthView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$100(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$200(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$400(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$400(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    return-void
.end method
