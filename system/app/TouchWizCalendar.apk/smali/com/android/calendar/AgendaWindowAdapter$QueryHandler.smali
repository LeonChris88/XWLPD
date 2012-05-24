.class Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private processNewCursor(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I
    .locals 7

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    iget v6, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;-><init>(Landroid/app/Activity;)V

    :goto_0
    iget v4, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    iget v4, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    iput-object p2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4, v1}, Lcom/android/calendar/AgendaByDayAdapter;->changeCursor(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V

    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getCount()I

    move-result v4

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v6, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    :goto_1
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$2002(Lcom/android/calendar/AgendaWindowAdapter;I)I

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$2000(Lcom/android/calendar/AgendaWindowAdapter;)I

    move-result v4

    iput v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    iget v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$2012(Lcom/android/calendar/AgendaWindowAdapter;I)I

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    neg-int v3, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$2102(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 23

    move-object/from16 v6, p2

    check-cast v6, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v17

    const/16 v18, 0x3f7

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->removeDialog(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/AgendaWindowAdapter;)Z

    move-result v17

    if-eqz v17, :cond_2

    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v5, 0x0

    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    :cond_3
    if-gtz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v17, v0

    if-nez v17, :cond_7

    iget-object v0, v6, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/calendar/AgendaListView;->shiftSelection(I)V

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/calendar/AgendaActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/AgendaActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/AgendaWindowAdapter;)Z

    move-result v17

    if-nez v17, :cond_6

    new-instance v9, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;-><init>(Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1400(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1600(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$1600(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/LinearLayout;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendar/AgendaListView;->addFooterView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$1302(Lcom/android/calendar/AgendaWindowAdapter;Z)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v18

    monitor-enter v18

    const/4 v15, -0x1

    const/4 v14, -0x1

    if-eqz v5, :cond_b

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, v17

    iget v15, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v15, v14}, Lcom/android/calendar/AgendaWindowAdapter;->access$1900(Lcom/android/calendar/AgendaWindowAdapter;II)V

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$400(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$400(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;->onLoadCompleted()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$402(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    :cond_8
    iget-object v8, v6, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/android/calendar/AgendaWindowAdapter;->access$1100(Lcom/android/calendar/AgendaWindowAdapter;Landroid/text/format/Time;)I

    move-result v12

    if-ltz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$1200(Lcom/android/calendar/AgendaWindowAdapter;)I

    move-result v18

    add-int v18, v18, v12

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendar/AgendaListView;->setSelection(I)V

    goto/16 :goto_1

    :cond_9
    iget v0, v6, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    :cond_a
    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-object v13, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v17, v0

    iget v0, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    :cond_c
    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v17, v0

    iget v0, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_d

    iget v0, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    :cond_d
    iget v15, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    iget v14, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    :goto_3
    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget v15, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, -0x3c

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/AgendaWindowAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    goto/16 :goto_2

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    :cond_e
    :try_start_2
    iget v15, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    iget v14, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_3

    :pswitch_1
    iget v14, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x3c

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/AgendaWindowAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto/16 :goto_2

    :pswitch_2
    iget v15, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    iget v14, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, -0x1e

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/AgendaWindowAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1e

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/AgendaWindowAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
