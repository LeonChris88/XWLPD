.class public Lcom/android/calendar/vcal/VCalManager;
.super Ljava/lang/Object;
.source "VCalManager.java"


# instance fields
.field private mCalendars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContentVCalValues:Landroid/content/ContentValues;

.field private final mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;

.field private mVCalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mCalendars:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mCalendars:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/calendar/vcal/VCalManager;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mCalendars:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/calendar/vcal/VCalManager;->parseVCalendar(Ljava/lang/String;)Ljava/util/ArrayList;

    return-void
.end method

.method private static convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v2, "UTC"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    if-eqz p3, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "%Y%m%d"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "%Y%m%dT%H%M%S"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v2, "UTC"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private getFirstIDFromCalendar()I
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v7, -0x1

    goto :goto_0
.end method

.method private parseTimezoneId(Ljava/lang/String;Lcom/android/calendar/vcal/pim/PropertyNode;)Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v22, 0x0

    const-string v23, "0"

    aput-object v23, v18, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v18, v22

    const-string v22, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string v22, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    :cond_0
    :goto_0
    if-eqz v18, :cond_3

    const/16 v22, 0x0

    aget-object v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const/16 v22, 0x1

    aget-object v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const v23, 0x36ee80

    mul-int v22, v22, v23

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const v24, 0xea60

    mul-int v23, v23, v24

    add-int v16, v22, v23

    const-string v22, "-"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    mul-int/lit8 v16, v16, -0x1

    :cond_1
    const/16 v20, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v16

    if-ne v5, v0, :cond_5

    const-string v22, "GMT"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_5

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    aput-object v6, v20, v22

    :goto_1
    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070021

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x0

    move-object/from16 v3, v20

    array-length v13, v3

    const/4 v9, 0x0

    move v10, v9

    :goto_2
    if-ge v10, v13, :cond_3

    aget-object v21, v3, v10

    move-object v4, v12

    array-length v14, v4

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v14, :cond_2

    aget-object v11, v4, v9

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 p1, v21

    const/4 v7, 0x1

    :cond_2
    if-eqz v7, :cond_7

    :cond_3
    return-object p1

    :cond_4
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v18, v22

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    const/16 v22, 0x1

    const/16 v23, 0x2

    const/16 v24, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v18, v22

    goto/16 :goto_0

    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_2
.end method

.method private setEventMap(Lcom/android/calendar/vcal/pim/VNode;ILjava/lang/String;)Landroid/content/ContentValues;
    .locals 12

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "calendar_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, p1, Lcom/android/calendar/vcal/pim/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/vcal/pim/PropertyNode;

    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    if-eqz v8, :cond_0

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "DESCRIPTION"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "description"

    iget-object v9, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    const-string v10, "\r\n"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "DTEND"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p1, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v9, "VTODO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "COMPLETED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    :try_start_0
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    iget-boolean v8, v6, Landroid/text/format/Time;->allDay:Z

    if-eqz v8, :cond_3

    const-string v8, "UTC"

    iput-object v8, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->normalize(Z)J

    :cond_3
    const-string v8, "dtend"

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "DTSTART"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p1, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v9, "VTODO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "DUE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_5
    :try_start_1
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    iget-boolean v8, v6, Landroid/text/format/Time;->allDay:Z

    if-eqz v8, :cond_6

    const-string v8, "UTC"

    iput-object v8, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->normalize(Z)J

    :cond_6
    const-string v8, "dtstart"

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "allDay"

    iget-boolean v8, v6, Landroid/text/format/Time;->allDay:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "SUMMARY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "SUBJECT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    const-string v8, "title"

    iget-object v9, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    const-string v10, "\r\n"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "LOCATION"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "eventLocation"

    iget-object v9, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    const-string v10, "\r\n"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "DUE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "duration"

    iget-object v9, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "RRULE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v2}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    :try_start_2
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    const-string v8, "rrule"

    iget-object v9, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "COMPLETED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    :try_start_3
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    const-string v8, "lastDate"

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_e
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "TZ"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0, p3, v4}, Lcom/android/calendar/vcal/VCalManager;->parseTimezoneId(Ljava/lang/String;Lcom/android/calendar/vcal/pim/PropertyNode;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    :cond_f
    if-eqz p3, :cond_10

    const-string v8, "eventTimezone"

    invoke-virtual {v7, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string v8, "dtstart"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    const-string v8, "dtend"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v5, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v8, "dtstart"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_11
    if-eqz v1, :cond_12

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_13

    :cond_12
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v8, "dtend"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_13
    const-string v8, "allDay"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string v8, "allDay"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_14
    return-object v7
.end method


# virtual methods
.method calculateLastDate(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/DateException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    move-wide v6, v4

    :goto_1
    return-wide v6

    :cond_0
    new-instance v2, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct {v2}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V

    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V

    :cond_1
    const/4 v8, 0x0

    :try_start_0
    new-instance v8, Lcom/android/calendarcommon/RecurrenceSet;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-direct {v8, v0, v10, v11, v12}, Lcom/android/calendarcommon/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/calendarcommon/RecurrenceSet;->hasRecurrence()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string p6, "UTC"

    :cond_2
    new-instance v1, Landroid/text/format/Time;

    move-object/from16 v0, p6

    invoke-direct {v1, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    new-instance v9, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;

    invoke-direct {v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;-><init>()V

    invoke-virtual {v9, v1, v8}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;)J

    move-result-wide v4

    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-nez v10, :cond_4

    move-wide v6, v4

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    move-wide v4, p1

    :cond_4
    invoke-virtual {v2, v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->addTo(J)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getAllday()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v2, "allDay"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getAllday(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v2, "allDay"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getData()Ljava/lang/String;
    .locals 29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/vcal/VCalManager;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/vcal/VCalManager;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/vcal/VCalManager;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    if-nez v10, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v11, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;

    invoke-direct {v11}, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;-><init>()V

    const-string v3, "eventTimezone"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v23

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    if-gez v22, :cond_7

    const/16 v3, 0x2d

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, "%02d"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x36ee80

    div-int v28, v23, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v26

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v3, 0xea60

    div-int v20, v23, v3

    rem-int/lit8 v20, v20, 0x3c

    const/16 v3, 0xa

    move/from16 v0, v20

    if-ge v0, v3, :cond_3

    const/16 v3, 0x30

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    :goto_2
    new-instance v17, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;

    invoke-direct/range {v17 .. v17}, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;-><init>()V

    const-string v3, "dtstart"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x0

    const-string v3, "dtend"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "dtend"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :cond_4
    const-string v3, "duration"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "rrule"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    const-wide/16 v18, -0x1

    move-object/from16 v3, p0

    :try_start_2
    invoke-virtual/range {v3 .. v9}, Lcom/android/calendar/vcal/VCalManager;->calculateLastDate(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v18

    :goto_3
    if-nez v6, :cond_5

    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    :try_start_3
    new-instance v15, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct {v15}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v15, v7}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    invoke-virtual {v15}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->getMillis()J

    move-result-wide v26

    add-long v26, v26, v4

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :cond_5
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    const-string v3, "description"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-string v3, "UTC"

    const/16 v28, 0x0

    move-wide/from16 v0, v26

    move/from16 v2, v28

    invoke-static {v0, v1, v3, v2}, Lcom/android/calendar/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-string v3, "UTC"

    const/16 v28, 0x1

    move-wide/from16 v0, v26

    move/from16 v2, v28

    invoke-static {v0, v1, v3, v2}, Lcom/android/calendar/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->endday:Ljava/lang/String;

    const-string v3, "UTC"

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v4, v5, v3, v0}, Lcom/android/calendar/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    const-string v3, "UTC"

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-static {v4, v5, v3, v0}, Lcom/android/calendar/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->startday:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    const-string v3, "allDay"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->allday:Z

    const-string v3, "eventLocation"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    const-wide/16 v26, -0x1

    cmp-long v3, v18, v26

    if-eqz v3, :cond_6

    const-string v3, "UTC"

    const/16 v26, 0x0

    move-wide/from16 v0, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v3, v2}, Lcom/android/calendar/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    :cond_6
    move-object/from16 v0, v17

    iput-object v8, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    const-string v3, "eventStatus"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    const-string v3, "title"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->addEventList(Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v12, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;

    invoke-direct {v12}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v12, v11, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->createVCal(Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x2b

    :try_start_7
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_8
    :try_start_8
    const-string v3, "+00:00"

    iput-object v3, v11, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    goto/16 :goto_2

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V

    goto/16 :goto_3

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    :catch_2
    move-exception v16

    const/4 v3, 0x0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getEndTime()Ljava/lang/Long;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v3, "dtend"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getEndTime(I)Ljava/lang/Long;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v3, "dtend"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v3, "dtstart"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getStartTime(I)Ljava/lang/Long;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v3, "dtstart"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertEventDB()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v1, "rrule"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v1, "rrule"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v1, "dtend"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseVCalendar(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;

    invoke-direct {v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;-><init>()V

    new-instance v0, Lcom/android/calendar/vcal/pim/VDataBuilder;

    invoke-direct {v0}, Lcom/android/calendar/vcal/pim/VDataBuilder;-><init>()V

    if-nez p1, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    const-string v11, "\r\n"

    const-string v12, "\n"

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\n"

    const-string v13, "\r\n"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v6, v2, v0}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->parse(Ljava/lang/String;Lcom/android/calendar/vcal/pim/VDataBuilder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v11, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    const/4 v8, 0x0

    iget-object v11, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/vcal/pim/VNode;

    iget-object v11, v10, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v12, "VCALENDAR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-direct {p0}, Lcom/android/calendar/vcal/VCalManager;->getFirstIDFromCalendar()I

    move-result v1

    iget-object v11, v10, Lcom/android/calendar/vcal/pim/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/vcal/pim/PropertyNode;

    iget-object v11, v7, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v7, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v12, "TZ"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-direct {p0, v8, v7}, Lcom/android/calendar/vcal/VCalManager;->parseTimezoneId(Ljava/lang/String;Lcom/android/calendar/vcal/pim/PropertyNode;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :catch_0
    move-exception v3

    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    iget-object v11, v10, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v12, "VEVENT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v10, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v12, "VTODO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_4
    invoke-direct {p0, v10, v1, v8}, Lcom/android/calendar/vcal/VCalManager;->setEventMap(Lcom/android/calendar/vcal/pim/VNode;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    iget-object v11, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v11, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_6

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_6
    iget-object v11, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public parseVCalendar_Backup(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 12

    const/4 v9, 0x0

    new-instance v5, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;

    invoke-direct {v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;-><init>()V

    new-instance v0, Lcom/android/calendar/vcal/pim/VDataBuilder;

    invoke-direct {v0}, Lcom/android/calendar/vcal/pim/VDataBuilder;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    :try_start_0
    invoke-virtual {v5, p1, v0}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->parse(Ljava/lang/String;Lcom/android/calendar/vcal/pim/VDataBuilder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const/4 v7, 0x0

    iget-object v10, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/vcal/pim/VNode;

    iget-object v10, v8, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v11, "VCALENDAR"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-direct {p0}, Lcom/android/calendar/vcal/VCalManager;->getFirstIDFromCalendar()I

    move-result v1

    iget-object v10, v8, Lcom/android/calendar/vcal/pim/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/vcal/pim/PropertyNode;

    iget-object v10, v6, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, v6, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v11, "TZ"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-direct {p0, v7, v6}, Lcom/android/calendar/vcal/VCalManager;->parseTimezoneId(Ljava/lang/String;Lcom/android/calendar/vcal/pim/PropertyNode;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_4
    iget-object v10, v8, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v11, "VEVENT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, v8, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v11, "VTODO"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_5
    invoke-direct {p0, v8, v1, v7}, Lcom/android/calendar/vcal/VCalManager;->setEventMap(Lcom/android/calendar/vcal/pim/VNode;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    iput-object v9, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    iget-object v9, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method public save()Z
    .locals 9

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v6, "rrule"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "rrule"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "dtend"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_1
    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v3, 0x0

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "=0D"

    const-string v7, "\r"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "=0A"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "title"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v6, "eventTimezone"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    const-string v6, "dtstart"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/text/format/Time;->set(J)V

    const-string v6, "eventTimezone"

    iget-object v7, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public setVCalValues(Landroid/content/ContentValues;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
