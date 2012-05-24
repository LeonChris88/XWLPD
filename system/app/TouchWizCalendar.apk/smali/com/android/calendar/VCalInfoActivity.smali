.class public Lcom/android/calendar/VCalInfoActivity;
.super Landroid/app/Activity;
.source "VCalInfoActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCalendarType:I

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendarcommon/ICalendar$Component;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mVCalManager:Lcom/android/calendar/vcal/VCalManager;

.field private mVCalValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "VCalInfoActivity"

    iput-object v0, p0, Lcom/android/calendar/VCalInfoActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/VCalInfoActivity;->mEvents:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/VCalInfoActivity;)Lcom/android/calendar/vcal/VCalManager;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/VCalInfoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/VCalInfoActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/VCalInfoActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/VCalInfoActivity;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method private convertValues()Landroid/content/ContentValues;
    .locals 17

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/VCalInfoActivity;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/VCalInfoActivity;->mPosition:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendarcommon/ICalendar$Component;

    const-string v14, "calendar_id"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "SUMMARY"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v11

    if-eqz v11, :cond_0

    const-string v14, "title"

    invoke-static {v11}, Lcom/android/calendar/Utils;->decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v10, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v10, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v6, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v14, "DTSTART"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "TZID"

    invoke-virtual {v5, v14}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v12

    if-eqz v12, :cond_1

    iget-object v14, v12, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    if-eqz v14, :cond_1

    iget-object v14, v12, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v10, v14}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {v10, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    const-string v14, "dtstart"

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v15, "allDay"

    iget-boolean v14, v10, Landroid/text/format/Time;->allDay:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    const/4 v14, 0x1

    :goto_0
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    const-string v14, "DTEND"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    :try_start_1
    invoke-virtual {v6, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    const-string v14, "dtend"

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    const-string v14, "LOCATION"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v14, "eventLocation"

    invoke-static {v8}, Lcom/android/calendar/Utils;->decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v14, "DESCRIPTION"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v14, "description"

    invoke-static {v1}, Lcom/android/calendar/Utils;->decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v14, "RRULE"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v9

    if-eqz v9, :cond_6

    const-string v14, "rrule"

    invoke-virtual {v9}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v13

    :cond_7
    const/4 v14, 0x0

    goto :goto_0

    :catch_0
    move-exception v14

    goto :goto_2

    :catch_1
    move-exception v14

    goto :goto_1
.end method

.method private getVCalData(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14

    const/4 v9, 0x0

    if-eqz p1, :cond_2

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v8

    if-lez v8, :cond_1

    new-array v1, v8, [B

    const/4 v2, -0x1

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_0

    invoke-virtual {v0, v1, v11, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v11, v2

    goto :goto_0

    :cond_0
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v10, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object v9, v10

    :cond_1
    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return-object v9

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v6

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v5

    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_2

    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_7
    move-exception v3

    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_2

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_1

    :catch_8
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v12

    if-eqz v7, :cond_3

    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_3
    :goto_2
    throw v12

    :catch_9
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private parseICalendar(Ljava/lang/String;)V
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/calendarcommon/ICalendar;->parseCalendar(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_1

    const-string v12, "No events in iCalendar."

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string v12, "Could not parse iCalendar."

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendarcommon/ICalendar$Component;

    const-string v12, "VEVENT"

    invoke-virtual {v6}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v10, Landroid/text/format/Time;

    const-string v12, "UTC"

    invoke-direct {v10, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v12, "DTSTART"

    invoke-virtual {v6, v12}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "TZID"

    invoke-virtual {v4, v12}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v12, v11, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    if-eqz v12, :cond_3

    iget-object v12, v11, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    :cond_3
    :try_start_1
    invoke-virtual {v10, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    const-string v12, "DTEND"

    invoke-virtual {v6, v12}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    :try_start_2
    invoke-virtual {v10, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    iget-object v12, p0, Lcom/android/calendar/VCalInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    :cond_6
    iget-object v12, p0, Lcom/android/calendar/VCalInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_0

    const-string v12, "No events in iCalendar."

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    goto/16 :goto_0
.end method

.method private setTextCommon(ILjava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setVisibilityCommon(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 47

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/VCalInfoActivity;->mCalendarType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->convertValues()Landroid/content/ContentValues;

    move-result-object v46

    :goto_0
    const-string v3, "title"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v3, 0x7f0a0024

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    :cond_1
    const-string v3, "dtstart"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Long;

    const-string v3, "dtend"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    const-string v3, "allDay"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_b

    const/4 v10, 0x1

    :goto_1
    const-string v3, "eventLocation"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    const-string v3, "description"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string v3, "rrule"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const v15, -0xfb4a01

    const v3, -0x44000001

    and-int/2addr v15, v3

    const-string v3, "calendar_id"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const v3, 0x7f0f001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    if-eqz v24, :cond_2

    const-string v3, "=0D"

    const-string v5, "\r"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "=0A"

    const-string v7, "\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const v3, 0x7f0f0013

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    :cond_2
    const v3, 0x7f0f0087

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "date_format"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00e1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v40, :cond_3

    const-string v3, "MM-dd-yyyy"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00e2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    :cond_3
    :goto_2
    if-eqz v10, :cond_e

    new-instance v39, Landroid/text/format/Time;

    invoke-direct/range {v39 .. v39}, Landroid/text/format/Time;-><init>()V

    new-instance v23, Landroid/text/format/Time;

    invoke-direct/range {v23 .. v23}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v45, v0

    const-string v3, "UTC"

    move-object/from16 v0, v39

    iput-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v45

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v37

    const-string v3, "UTC"

    move-object/from16 v0, v23

    iput-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v45

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-object/from16 v0, v23

    iget v3, v0, Landroid/text/format/Time;->hour:I

    if-nez v3, :cond_4

    move-object/from16 v0, v23

    iget v3, v0, Landroid/text/format/Time;->minute:I

    if-nez v3, :cond_4

    move-object/from16 v0, v23

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v23

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v21

    cmp-long v3, v37, v21

    if-nez v3, :cond_d

    move-object/from16 v0, v17

    move-wide/from16 v1, v37

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v43, 0x0

    :goto_3
    const v3, 0x7f0f0081

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    const v3, 0x7f0f0081

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    if-nez v43, :cond_11

    const v3, 0x7f0f0082

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    :goto_4
    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v12, 0x0

    if-eqz v14, :cond_12

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v3, 0x7f0f001f

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    const v3, 0x7f0f007f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    const/16 v3, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v12, :cond_6

    const-string v3, "My calendar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00c0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_5
    const v3, 0x7f0f004d

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    :cond_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :goto_5
    const/16 v32, 0x0

    const v3, 0x7f0f002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v31, :cond_13

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    if-eqz v9, :cond_7

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const v3, 0x7f0f002b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    const/16 v32, 0x1

    :goto_6
    const v3, 0x7f0f0055

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    if-eqz v32, :cond_14

    const v3, 0x7f0f0052

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    :goto_7
    const v3, 0x7f0f008c

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    const v3, 0x7f0f008d

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    const v3, 0x7f0f008c

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    const v3, 0x7f0f0090

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    if-eqz v33, :cond_9

    new-instance v25, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct/range {v25 .. v25}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    :try_start_0
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    new-instance v16, Landroid/text/format/Time;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_8

    const-string v3, "UTC"

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :cond_8
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/android/calendar/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;

    move-result-object v34

    const v3, 0x7f0f0093

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_8
    const v5, 0x7f0f005b

    if-eqz v33, :cond_15

    const/4 v3, 0x0

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    if-eqz v18, :cond_16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16

    const v3, 0x7f0f0062

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    const v3, 0x7f0f0094

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    :goto_a
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalInfoActivity;->mVCalValues:Landroid/content/ContentValues;

    move-object/from16 v46, v0

    goto/16 :goto_0

    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_c
    const-string v3, "yyyy-MM-dd"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00e3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0045

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    move-wide/from16 v1, v37

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0044

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_3

    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-static {v0, v7, v8, v1}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-static {v0, v7, v8, v1}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    const/16 v26, 0x201

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    move/from16 v0, v26

    or-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    :cond_f
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v41

    invoke-static {v0, v7, v8, v1, v2}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v41

    invoke-static {v0, v7, v8, v1, v2}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v43, 0x0

    goto/16 :goto_3

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0045

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0044

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_3

    :cond_11
    const v3, 0x7f0f0082

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    const v3, 0x7f0f0082

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_4

    :cond_12
    const v3, 0x7f0f004c

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_5

    :cond_13
    const v3, 0x7f0f002b

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_6

    :cond_14
    const v3, 0x7f0f0052

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_7

    :catch_0
    move-exception v19

    const/16 v33, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :cond_15
    const/16 v3, 0x8

    goto/16 :goto_9

    :cond_16
    const v3, 0x7f0f0094

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_a
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f0a00c3

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f030039

    invoke-virtual {p0, v5}, Lcom/android/calendar/VCalInfoActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "CALENDAR_TYPE"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/VCalInfoActivity;->mCalendarType:I

    const-string v5, "VCAL_POSITION"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/VCalInfoActivity;->mPosition:I

    iget v5, p0, Lcom/android/calendar/VCalInfoActivity;->mCalendarType:I

    if-nez v5, :cond_1

    const-string v5, "VCAL_DATA"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    iput-object v5, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalValues:Landroid/content/ContentValues;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v5, Lcom/android/calendar/vcal/VCalManager;

    invoke-direct {v5, p0}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    iget-object v5, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    iget-object v6, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Lcom/android/calendar/vcal/VCalManager;->setVCalValues(Landroid/content/ContentValues;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/VCalInfoActivity;->updateView()V

    const v5, 0x7f0f00c9

    invoke-virtual {p0, v5}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v5, 0x7f0a0057

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    iget v5, p0, Lcom/android/calendar/VCalInfoActivity;->mCalendarType:I

    if-nez v5, :cond_4

    new-instance v5, Lcom/android/calendar/VCalInfoActivity$1;

    invoke-direct {v5, p0}, Lcom/android/calendar/VCalInfoActivity$1;-><init>(Lcom/android/calendar/VCalInfoActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const v5, 0x7f0f00ca

    invoke-virtual {p0, v5}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v5, 0x7f0a0086

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    new-instance v5, Lcom/android/calendar/VCalInfoActivity$3;

    invoke-direct {v5, p0}, Lcom/android/calendar/VCalInfoActivity$3;-><init>(Lcom/android/calendar/VCalInfoActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v5, "VCAL_DATA"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/calendar/VCalInfoActivity;->getVCalData(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Lcom/android/calendar/VCalInfoActivity;->parseICalendar(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    goto :goto_0

    :cond_4
    new-instance v5, Lcom/android/calendar/VCalInfoActivity$2;

    invoke-direct {v5, p0}, Lcom/android/calendar/VCalInfoActivity$2;-><init>(Lcom/android/calendar/VCalInfoActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
