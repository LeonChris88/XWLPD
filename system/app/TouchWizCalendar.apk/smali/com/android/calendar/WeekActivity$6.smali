.class Lcom/android/calendar/WeekActivity$6;
.super Ljava/lang/Object;
.source "WeekActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/WeekActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/WeekActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/WeekActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/WeekActivity$6;->this$0:Lcom/android/calendar/WeekActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/calendar/WeekActivity$6;->this$0:Lcom/android/calendar/WeekActivity;

    invoke-virtual {v0}, Lcom/android/calendar/WeekActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/calendar/WeekActivity$6;->this$0:Lcom/android/calendar/WeekActivity;

    const-class v1, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/WeekActivity$6;->this$0:Lcom/android/calendar/WeekActivity;

    invoke-virtual {v2}, Lcom/android/calendar/WeekActivity;->getSelectedDayInMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/calendar/WeekActivity$6;->this$0:Lcom/android/calendar/WeekActivity;

    invoke-virtual {v0}, Lcom/android/calendar/WeekActivity;->finish()V

    iget-object v0, p0, Lcom/android/calendar/WeekActivity$6;->this$0:Lcom/android/calendar/WeekActivity;

    invoke-virtual {v0, v4, v4}, Lcom/android/calendar/WeekActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
