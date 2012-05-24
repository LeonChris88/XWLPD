.class Lcom/android/calendar/AlertActivity$6;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v0, v0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v0, v0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v0, v0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v0}, Lcom/android/calendar/AlertActivity;->access$600(Lcom/android/calendar/AlertActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v0}, Lcom/android/calendar/AlertActivity;->access$600(Lcom/android/calendar/AlertActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AlertAdapter$AlertItem;

    invoke-virtual {v0}, Lcom/android/calendar/AlertAdapter$AlertItem;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v0, v8, v9}, Lcom/android/calendar/AlertActivity;->access$700(Lcom/android/calendar/AlertActivity;J)V

    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v0}, Lcom/android/calendar/AlertActivity;->access$600(Lcom/android/calendar/AlertActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v0}, Lcom/android/calendar/AlertActivity;->access$400(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertActivity$QueryHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/calendar/AlertActivity;->access$800()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "state=?"

    invoke-static {}, Lcom/android/calendar/AlertActivity;->access$900()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "begin ASC,title ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AlertActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AlertActivity;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/android/calendar/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    invoke-virtual {v10, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AlertActivity;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AlertActivity$6;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AlertActivity;->updateButtonState(Z)V

    return-void
.end method
