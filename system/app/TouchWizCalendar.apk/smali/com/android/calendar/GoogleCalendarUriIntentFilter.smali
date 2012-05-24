.class public Lcom/android/calendar/GoogleCalendarUriIntentFilter;
.super Landroid/app/Activity;
.source "GoogleCalendarUriIntentFilter.java"


# static fields
.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->getIntent()Landroid/content/Intent;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    if-eqz v22, :cond_2

    const-string v3, "eid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync_data3 LIKE \"%eid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v9, 0x0

    const-string v3, "RESPOND"

    const-string v4, "action"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    const-string v3, "rst"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v17

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "beginTime"

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "endTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v9, :cond_1

    const-string v3, "attendeeStatus"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->finish()V

    :goto_1
    return-void

    :pswitch_0
    const/4 v9, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v9, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v9, 0x4

    goto :goto_0

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->startNextMatchingActivity(Landroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->finish()V

    goto :goto_1

    :catch_1
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
