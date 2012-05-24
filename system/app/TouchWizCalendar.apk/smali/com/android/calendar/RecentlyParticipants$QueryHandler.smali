.class Lcom/android/calendar/RecentlyParticipants$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "RecentlyParticipants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/RecentlyParticipants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/RecentlyParticipants;


# direct methods
.method public constructor <init>(Lcom/android/calendar/RecentlyParticipants;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-virtual {v0}, Lcom/android/calendar/RecentlyParticipants;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-static {v0}, Lcom/android/calendar/RecentlyParticipants;->access$000(Lcom/android/calendar/RecentlyParticipants;)Lcom/android/calendar/RecentlyParticipants$EventAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/calendar/RecentlyParticipants$EventAdapter;->changeCursor(Landroid/database/Cursor;)V

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-static {v0}, Lcom/android/calendar/RecentlyParticipants;->access$100(Lcom/android/calendar/RecentlyParticipants;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-static {v0}, Lcom/android/calendar/RecentlyParticipants;->access$200(Lcom/android/calendar/RecentlyParticipants;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-static {v0}, Lcom/android/calendar/RecentlyParticipants;->access$100(Lcom/android/calendar/RecentlyParticipants;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-static {v0}, Lcom/android/calendar/RecentlyParticipants;->access$200(Lcom/android/calendar/RecentlyParticipants;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
