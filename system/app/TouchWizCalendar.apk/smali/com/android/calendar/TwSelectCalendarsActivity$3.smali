.class Lcom/android/calendar/TwSelectCalendarsActivity$3;
.super Ljava/lang/Object;
.source "TwSelectCalendarsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/TwSelectCalendarsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/TwSelectCalendarsActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v0, p2, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarItemView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-static {v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$100(Lcom/android/calendar/TwSelectCalendarsActivity;)V

    const v0, 0x7f0f001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    iget-object v0, v0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    iget-object v0, v0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    const-string v1, "visible"

    iget-object v2, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-static {v2}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$200(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "_id=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-virtual {v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-static {v2}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$300(Lcom/android/calendar/TwSelectCalendarsActivity;)[Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-static {v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$200(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    iget-object v0, v0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    const-string v1, "sync_events"

    iget-object v2, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-static {v2}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$200(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-static {v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$400(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    iget-object v1, v1, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v8, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void
.end method
