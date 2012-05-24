.class Lcom/android/calendar/AgendaDeleteActivity$3;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f02009c

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v6, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    if-nez p3, :cond_2

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->invalidate()V

    return-void

    :cond_2
    if-ne p3, v6, :cond_4

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const v4, 0x7f02009c

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method
