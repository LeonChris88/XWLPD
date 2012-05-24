.class Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTZHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;


# direct methods
.method public constructor <init>(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    const/4 v8, 0x0

    if-nez p3, :cond_0

    :try_start_0
    monitor-exit v10

    :goto_0
    return-void

    :cond_0
    const-string v11, "key"

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v11, "value"

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    :cond_1
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v11, "timezoneType"

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "auto"

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$100()Z

    move-result v11

    if-eq v5, v11, :cond_1

    const/4 v8, 0x1

    invoke-static {v5}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_2
    move v5, v9

    goto :goto_2

    :cond_3
    :try_start_1
    const-string v11, "timezoneInstancesPrevious"

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v8, 0x1

    invoke-static {v6}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    if-eqz v8, :cond_5

    check-cast p2, Landroid/content/Context;

    iget-object v9, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-static {v9}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$300(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p2, v9}, Lcom/android/calendar/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v9, "preferences_home_tz_enabled"

    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$100()Z

    move-result v11

    invoke-static {v4, v9, v11}, Lcom/android/calendar/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    const-string v9, "preferences_home_tz"

    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v9, v11}, Lcom/android/calendar/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$402(Z)Z

    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
