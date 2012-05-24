.class Lcom/android/calendar/MonthView$6;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V
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

    iput-object p1, p0, Lcom/android/calendar/MonthView$6;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCusorMoved()V
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/android/calendar/MonthView$6;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$1200(Lcom/android/calendar/MonthView;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/MonthView$6;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/MonthView$6;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->reloadCurrentDayEvents()V

    goto :goto_0
.end method
