.class Lcom/android/calendar/ImportVCalListActivity$2;
.super Ljava/lang/Object;
.source "ImportVCalListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ImportVCalListActivity;->initSDLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ImportVCalListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/ImportVCalListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v6}, Lcom/android/calendar/ImportVCalListActivity;->access$900(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportExportVCalendar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v7}, Lcom/android/calendar/ImportVCalListActivity;->access$800(Lcom/android/calendar/ImportVCalListActivity;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/calendar/ImportExportVCalendar;->getVCalFilePathList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/calendar/ImportVCalListActivity;->access$702(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$700(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$700(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    if-lez v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$700(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-virtual {v5, v0}, Lcom/android/calendar/ImportVCalListActivity;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    new-instance v6, Lcom/android/calendar/vcal/VCalManager;

    iget-object v7, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v7}, Lcom/android/calendar/ImportVCalListActivity;->access$800(Lcom/android/calendar/ImportVCalListActivity;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Lcom/android/calendar/ImportVCalListActivity;->access$1102(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/vcal/VCalManager;)Lcom/android/calendar/vcal/VCalManager;

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5, v4}, Lcom/android/calendar/ImportVCalListActivity;->access$1200(Lcom/android/calendar/ImportVCalListActivity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Calendar"

    const-string v6, "[ImportVCalListActivity] initSDLists : !parseVCalendar()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lcom/android/calendar/ImportVCalListActivity;->access$1002(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/calendar/Event;

    invoke-direct {v1}, Lcom/android/calendar/Event;-><init>()V

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1100(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/vcal/VCalManager;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1100(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/vcal/VCalManager;->getStartTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/Event;->startMillis:J

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1100(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/vcal/VCalManager;->getEndTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/Event;->endMillis:J

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1100(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/vcal/VCalManager;->getAllday()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/calendar/Event;->allDay:Z

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1400(Lcom/android/calendar/ImportVCalListActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/calendar/ImportVCalListActivity$2$1;

    invoke-direct {v6, p0}, Lcom/android/calendar/ImportVCalListActivity$2$1;-><init>(Lcom/android/calendar/ImportVCalListActivity$2;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1400(Lcom/android/calendar/ImportVCalListActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/calendar/ImportVCalListActivity$2$2;

    invoke-direct {v6, p0}, Lcom/android/calendar/ImportVCalListActivity$2$2;-><init>(Lcom/android/calendar/ImportVCalListActivity$2;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method
