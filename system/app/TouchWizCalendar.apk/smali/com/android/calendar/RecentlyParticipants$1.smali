.class Lcom/android/calendar/RecentlyParticipants$1;
.super Ljava/lang/Object;
.source "RecentlyParticipants.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/RecentlyParticipants;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/RecentlyParticipants;


# direct methods
.method constructor <init>(Lcom/android/calendar/RecentlyParticipants;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/RecentlyParticipants$1;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/calendar/RecentlyParticipants$1;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-static {v4}, Lcom/android/calendar/RecentlyParticipants;->access$000(Lcom/android/calendar/RecentlyParticipants;)Lcom/android/calendar/RecentlyParticipants$EventAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/RecentlyParticipants$EventAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v4, "EVENT_ID"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/calendar/RecentlyParticipants$1;->this$0:Lcom/android/calendar/RecentlyParticipants;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/calendar/RecentlyParticipants;->setResult(ILandroid/content/Intent;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v4, p0, Lcom/android/calendar/RecentlyParticipants$1;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-virtual {v4}, Lcom/android/calendar/RecentlyParticipants;->finish()V

    return-void
.end method
