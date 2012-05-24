.class Lcom/android/calendar/MonthActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MonthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthActivity$2;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/calendar/MonthActivity$2;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v3}, Lcom/android/calendar/MonthActivity;->access$300(Lcom/android/calendar/MonthActivity;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/MonthActivity$2;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v3}, Lcom/android/calendar/MonthActivity;->access$400(Lcom/android/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/MonthView;

    new-instance v1, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/MonthActivity$2;->this$0:Lcom/android/calendar/MonthActivity;

    iget-object v4, p0, Lcom/android/calendar/MonthActivity$2;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v4}, Lcom/android/calendar/MonthActivity;->access$500(Lcom/android/calendar/MonthActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v2, v1}, Lcom/android/calendar/MonthView;->setChangedTime(Landroid/text/format/Time;)V

    iget-object v3, p0, Lcom/android/calendar/MonthActivity$2;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v3}, Lcom/android/calendar/MonthActivity;->eventsChanged()V

    :cond_1
    return-void
.end method
