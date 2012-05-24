.class Lcom/android/calendar/AgendaActivity$12;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaActivity;->setupPickView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v15}, Lcom/android/calendar/AgendaActivity;->access$100(Lcom/android/calendar/AgendaActivity;)Lcom/android/calendar/AgendaInterface;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    const-string v16, "text/plain"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    move-object/from16 v16, v0

    sget-object v17, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/calendar/AgendaActivity;->access$600(Lcom/android/calendar/AgendaActivity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    const/16 v16, 0x3e8

    invoke-virtual/range {v15 .. v16}, Lcom/android/calendar/AgendaActivity;->showDialog(I)V

    :goto_2
    return-void

    :cond_4
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v15, "result"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "text/plain"

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lcom/android/calendar/AgendaActivity;->setResult(ILandroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaActivity;->finish()V

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_3
    :try_start_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    move-object/from16 v16, v0

    sget-object v17, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/calendar/AgendaActivity;->access$700(Lcom/android/calendar/AgendaActivity;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catch_1
    move-exception v4

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    const/16 v16, 0x3e8

    invoke-virtual/range {v15 .. v16}, Lcom/android/calendar/AgendaActivity;->showDialog(I)V

    goto :goto_2

    :cond_8
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_a

    const-string v15, "uristrings"

    invoke-virtual {v11, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_a
    const-string v15, "text/x-vCalendar"

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lcom/android/calendar/AgendaActivity;->setResult(ILandroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaActivity;->finish()V

    goto/16 :goto_2
.end method
