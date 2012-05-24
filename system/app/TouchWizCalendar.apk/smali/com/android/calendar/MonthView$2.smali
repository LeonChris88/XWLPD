.class Lcom/android/calendar/MonthView$2;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthView;->init(Lcom/android/calendar/MonthActivity;)V
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

    iput-object p1, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCusorMoved()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->reloadCurrentDayEvents()V

    return-void
.end method
