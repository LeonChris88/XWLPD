.class Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventCountHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$000(Lcom/android/calendar/AgendaWindowAdapter;)I

    move-result v10

    move-object/from16 v8, p2

    check-cast v8, Landroid/text/format/Time;

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/android/calendar/AgendaListView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0078

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f007a

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0079

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$400(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$400(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;->onLoadCompleted()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/calendar/AgendaWindowAdapter;->access$402(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaDeleteActivity;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/calendar/AgendaDeleteActivity;->updateEmtpy(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f007d

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f00c9

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/AgendaActivity;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v13}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0079

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v13, 0x7f0a0105

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f007a

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0079

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f007d

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f00c9

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0076

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0079

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$500(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "date_format"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$500(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00e1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_6

    const-string v13, "MM-dd-yyyy"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$500(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00e2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_6
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v14}, Lcom/android/calendar/AgendaWindowAdapter;->access$500(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0a004f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0078

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f007d

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const-string v13, "yyyy-MM-dd"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$500(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00e3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/SearchResult;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0078

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/calendar/AgendaListView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0078

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    const/16 v14, 0x3f7

    invoke-virtual {v13, v14}, Landroid/app/Activity;->showDialog(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaDeleteActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/calendar/AgendaDeleteActivity;->updateEmtpy(Z)V

    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move v9, v10

    if-eqz v2, :cond_b

    const-string v13, "android.intent.action.PICK"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v13, :cond_f

    :cond_c
    const v9, 0x24dc87

    const v6, 0x259d23

    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v14, 0x2

    invoke-static {v13, v9, v6, v8, v14}, Lcom/android/calendar/AgendaWindowAdapter;->access$900(Lcom/android/calendar/AgendaWindowAdapter;IILandroid/text/format/Time;I)Z

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/AgendaActivity;

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/SearchResult;

    if-eqz v13, :cond_a

    goto :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/calendar/SearchResult;

    if-eqz v13, :cond_10

    const v9, 0x24dc87

    const v6, 0x259d23

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$700(Lcom/android/calendar/AgendaWindowAdapter;)Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-static {v13}, Lcom/android/calendar/AgendaWindowAdapter;->access$800(Lcom/android/calendar/AgendaWindowAdapter;)V

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v6, v9, 0x1e

    const v13, 0x259d23

    if-le v6, v13, :cond_d

    const v6, 0x259d23

    goto :goto_3
.end method
