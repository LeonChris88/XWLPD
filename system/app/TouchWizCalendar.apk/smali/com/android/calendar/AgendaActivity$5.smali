.class Lcom/android/calendar/AgendaActivity$5;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaActivity;->windowOnLoadLoadCompleted(Lcom/android/calendar/AgendaWindowAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;

.field final synthetic val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;Lcom/android/calendar/AgendaWindowAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$5;->this$0:Lcom/android/calendar/AgendaActivity;

    iput-object p2, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCompleted()V
    .locals 15

    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v13}, Lcom/android/calendar/AgendaActivity;->access$100(Lcom/android/calendar/AgendaActivity;)Lcom/android/calendar/AgendaInterface;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v13}, Lcom/android/calendar/AgendaListView;->getCount()I

    move-result v2

    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v0

    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckStrings()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v2, :cond_1

    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13, v5}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v13

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13, v5}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13, v5}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x1

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/4 v13, 0x1

    if-ne v10, v13, :cond_6

    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13, v3}, Lcom/android/calendar/AgendaWindowAdapter;->setCheckIds(Ljava/util/HashMap;)V

    :goto_3
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v13}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v13}, Lcom/android/calendar/AgendaActivity;->access$200(Lcom/android/calendar/AgendaActivity;)V

    :cond_5
    return-void

    :cond_6
    iget-object v13, p0, Lcom/android/calendar/AgendaActivity$5;->val$windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/calendar/AgendaWindowAdapter;->setAllChecked(Z)V

    goto :goto_3
.end method
