.class Lcom/android/calendar/AgendaDeleteActivity$4;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f02009c

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v6}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v6

    invoke-interface {v4, v5, v8, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v6}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v6

    invoke-interface {v4, v5, v8, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    if-nez p2, :cond_2

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/AgendaListView;->getSelectedItemId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
