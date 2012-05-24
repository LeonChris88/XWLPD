.class Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;
.super Ljava/lang/Object;
.source "AgendaExpandableListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-static {v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1400(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    new-instance v1, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1500(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    new-instance v1, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1500(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z

    goto :goto_0
.end method
