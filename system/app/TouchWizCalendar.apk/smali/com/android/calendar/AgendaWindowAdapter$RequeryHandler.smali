.class Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequeryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p2

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/AgendaWindowAdapter;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$2200(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    new-instance v4, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$500(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    invoke-static {v4, v6}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    new-instance v5, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$500(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$2200(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    :try_start_1
    iput-object p3, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    iget-object v6, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v6, v0}, Lcom/android/calendar/AgendaByDayAdapter;->changeCursor(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V

    iget-object v6, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v6}, Lcom/android/calendar/AgendaByDayAdapter;->getCount()I

    move-result v6

    iput v6, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/calendar/AgendaWindowAdapter;->access$2002(Lcom/android/calendar/AgendaWindowAdapter;I)I

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$2000(Lcom/android/calendar/AgendaWindowAdapter;)I

    move-result v6

    iput v6, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    iget v8, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v6, v8}, Lcom/android/calendar/AgendaWindowAdapter;->access$2012(Lcom/android/calendar/AgendaWindowAdapter;I)I

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v6}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$400(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$400(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;->onLoadCompleted()V

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v6, v9}, Lcom/android/calendar/AgendaWindowAdapter;->access$402(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    goto/16 :goto_0
.end method
