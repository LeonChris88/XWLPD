.class Lcom/android/calendar/AgendaExpandableListView$2;
.super Ljava/lang/Object;
.source "AgendaExpandableListView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaExpandableListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaExpandableListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaExpandableListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-static {v5}, Lcom/android/calendar/AgendaExpandableListView;->access$000(Lcom/android/calendar/AgendaExpandableListView;)Lcom/android/calendar/AgendaExpandableListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/AgendaExpandableListAdapter;->getGroupCount()I

    move-result v0

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-ne v1, p3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-virtual {v5, v1}, Lcom/android/calendar/AgendaExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-virtual {v5, p3}, Lcom/android/calendar/AgendaExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v3, 0x1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-virtual {v5, p3}, Lcom/android/calendar/AgendaExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    :cond_4
    if-eq v3, v2, :cond_5

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-static {v5, v3}, Lcom/android/calendar/AgendaExpandableListView;->access$202(Lcom/android/calendar/AgendaExpandableListView;Z)Z

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-static {v5, v2}, Lcom/android/calendar/AgendaExpandableListView;->access$302(Lcom/android/calendar/AgendaExpandableListView;Z)Z

    :cond_5
    return v4

    :cond_6
    move v3, v4

    goto :goto_2
.end method
