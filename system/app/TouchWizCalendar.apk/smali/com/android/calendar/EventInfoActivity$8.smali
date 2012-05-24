.class Lcom/android/calendar/EventInfoActivity$8;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    iput-object p2, p0, Lcom/android/calendar/EventInfoActivity$8;->val$events:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1500(Lcom/android/calendar/EventInfoActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1500(Lcom/android/calendar/EventInfoActivity;)J

    move-result-wide v2

    iget-wide v4, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1600(Lcom/android/calendar/EventInfoActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity$8;->val$events:Ljava/util/ArrayList;

    invoke-static {v2, v3, v0, v0}, Lcom/android/calendar/EventInfoActivity;->access$1700(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1600(Lcom/android/calendar/EventInfoActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity$8;->val$events:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoActivity;->access$1800(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1600(Lcom/android/calendar/EventInfoActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity$8;->val$events:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoActivity;->access$1902(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1900(Lcom/android/calendar/EventInfoActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity$8;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2, v0, v0, v3}, Lcom/android/calendar/Utils;->setAllDayEvents(Ljava/util/ArrayList;IILandroid/content/Context;)I

    goto :goto_0
.end method
