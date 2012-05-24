.class Lcom/android/calendar/EventListActivity$3;
.super Ljava/lang/Object;
.source "EventListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventListActivity;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventListActivity;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventListActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    iput-object p2, p0, Lcom/android/calendar/EventListActivity$3;->val$events:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const v6, 0x7f0f0076

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$200(Lcom/android/calendar/EventListActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    iget-object v1, p0, Lcom/android/calendar/EventListActivity$3;->val$events:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v2}, Lcom/android/calendar/EventListActivity;->access$500(Lcom/android/calendar/EventListActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v3}, Lcom/android/calendar/EventListActivity;->access$500(Lcom/android/calendar/EventListActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/EventListActivity;->access$600(Lcom/android/calendar/EventListActivity;Ljava/util/ArrayList;II)V

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$000(Lcom/android/calendar/EventListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$800(Lcom/android/calendar/EventListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-virtual {v0, v6}, Lcom/android/calendar/EventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    iget-object v1, p0, Lcom/android/calendar/EventListActivity$3;->val$events:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/calendar/EventListActivity;->access$700(Lcom/android/calendar/EventListActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-virtual {v0, v6}, Lcom/android/calendar/EventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$900(Lcom/android/calendar/EventListActivity;)Lcom/android/calendar/EventListActivity$EventAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    new-instance v1, Lcom/android/calendar/EventListActivity$EventAdapter;

    iget-object v2, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    iget-object v3, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-direct {v1, v2, v3}, Lcom/android/calendar/EventListActivity$EventAdapter;-><init>(Lcom/android/calendar/EventListActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/calendar/EventListActivity;->access$902(Lcom/android/calendar/EventListActivity;Lcom/android/calendar/EventListActivity$EventAdapter;)Lcom/android/calendar/EventListActivity$EventAdapter;

    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$800(Lcom/android/calendar/EventListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v1}, Lcom/android/calendar/EventListActivity;->access$900(Lcom/android/calendar/EventListActivity;)Lcom/android/calendar/EventListActivity$EventAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_2
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$800(Lcom/android/calendar/EventListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$3;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$900(Lcom/android/calendar/EventListActivity;)Lcom/android/calendar/EventListActivity$EventAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/EventListActivity$EventAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method
