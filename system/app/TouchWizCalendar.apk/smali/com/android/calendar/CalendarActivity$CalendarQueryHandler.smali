.class Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    const-string v1, ""

    const-string v0, ""

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v4, v4, Lcom/android/calendar/CalendarActivity;->mCalendarIcons:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getCalendarType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget-object v4, Lcom/android/calendar/Utils;->CALENDAR_TYPE_IMAGE_EVENT:[I

    aget v3, v4, v2

    if-lez v3, :cond_2

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v4, v4, Lcom/android/calendar/CalendarActivity;->mCalendarIcons:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method
