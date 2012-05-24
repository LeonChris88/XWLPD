.class Lcom/android/calendar/AgendaDeleteActivity$5;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v2

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$600(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v3, v3, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    iget-object v5, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v5, v5, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/AgendaDeleteActivity;->access$800(Lcom/android/calendar/AgendaDeleteActivity;Lcom/android/calendar/AgendaWindowAdapter;Ljava/util/HashMap;JJ)V

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    const/16 v3, 0x3fc

    invoke-virtual {v0, v3}, Lcom/android/calendar/AgendaDeleteActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$5;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    const/16 v3, 0x3f2

    invoke-virtual {v0, v3}, Lcom/android/calendar/AgendaDeleteActivity;->showDialog(I)V

    goto :goto_0
.end method
