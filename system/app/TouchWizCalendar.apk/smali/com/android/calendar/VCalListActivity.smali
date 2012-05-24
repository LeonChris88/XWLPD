.class public Lcom/android/calendar/VCalListActivity;
.super Landroid/app/Activity;
.source "VCalListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/VCalListActivity$ICSEventAdapter;,
        Lcom/android/calendar/VCalListActivity$VCSEventAdapter;,
        Lcom/android/calendar/VCalListActivity$ImportVCalTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCalendar:Lcom/android/calendarcommon/ICalendar$Component;

.field private mCalendarType:I

.field private mContent:Landroid/net/Uri;

.field private mContentValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/lang/String;

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

.field private mVCalManager:Lcom/android/calendar/vcal/VCalManager;

.field private mVcalList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "VCalListActivity"

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/VCalListActivity;->mCalendar:Lcom/android/calendarcommon/ICalendar$Component;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    iput-object v1, p0, Lcom/android/calendar/VCalListActivity;->mContent:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/VCalListActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/VCalListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mContentValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/VCalListActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mContent:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/VCalListActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/calendar/VCalListActivity;->importCalendar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/VCalListActivity;)Lcom/android/calendar/vcal/VCalManager;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/VCalListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method private importCalendar()Ljava/lang/String;
    .locals 11

    const v10, 0x7f0a00c5

    const v9, 0x7f0a00c4

    const/4 v7, 0x0

    iget v2, p0, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/VCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    invoke-virtual {v2}, Lcom/android/calendar/vcal/VCalManager;->save()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/VCalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/VCalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/VCalListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v8, 0x0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon/ICalendar$Component;

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->insertVEvent(Landroid/content/ContentResolver;Lcom/android/calendarcommon/ICalendar$Component;JILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    if-lez v8, :cond_4

    invoke-virtual {p0}, Lcom/android/calendar/VCalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/VCalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private isVersion20(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    const-string v5, "\nVERSION:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v1, "vcalendar1.0"

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    :try_start_0
    const-string v5, "\n"

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "2.0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    const-string v1, "vcalendar2.0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v5, "vcalendar2.0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    return v4

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private parseICalendar(Ljava/lang/String;)Z
    .locals 14

    const v13, 0x7f0a00c3

    const/4 v10, 0x0

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/calendar/VCalListActivity;->mCalendar:Lcom/android/calendarcommon/ICalendar$Component;

    :try_start_0
    invoke-static {p1}, Lcom/android/calendarcommon/ICalendar;->parseCalendar(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;

    move-result-object v11

    iput-object v11, p0, Lcom/android/calendar/VCalListActivity;->mCalendar:Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v11, p0, Lcom/android/calendar/VCalListActivity;->mCalendar:Lcom/android/calendarcommon/ICalendar$Component;

    invoke-virtual {v11}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_0

    invoke-static {p0, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    :goto_0
    return v10

    :catch_0
    move-exception v6

    invoke-static {p0, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v11, p0, Lcom/android/calendar/VCalListActivity;->mCalendar:Lcom/android/calendarcommon/ICalendar$Component;

    invoke-virtual {v11}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon/ICalendar$Component;

    const-string v11, "VEVENT"

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v8, Landroid/text/format/Time;

    const-string v11, "UTC"

    invoke-direct {v8, v11}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v11, "DTSTART"

    invoke-virtual {v5, v11}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "TZID"

    invoke-virtual {v3, v11}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v11, v9, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v9, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    :cond_2
    :try_start_1
    invoke-virtual {v8, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    const-string v11, "DTEND"

    invoke-virtual {v5, v11}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    :try_start_2
    invoke-virtual {v8, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    iget-object v11, p0, Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1

    :cond_5
    iget-object v11, p0, Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_6

    invoke-static {p0, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method private parseVCalendar(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/vcal/VCalManager;->parseVCalendar(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity;->mContentValues:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mContentValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 27

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v23, "ics"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v23, "android.intent.extra.STREAM"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    :cond_0
    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/calendar/VCalListActivity;->mContent:Landroid/net/Uri;

    const/16 v18, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->available()I

    move-result v19

    if-lez v19, :cond_2

    move/from16 v0, v19

    new-array v4, v0, [B

    const/4 v5, -0x1

    const/16 v21, 0x0

    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_1

    move/from16 v0, v21

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int v21, v21, v5

    goto :goto_0

    :cond_1
    new-instance v23, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    const-string v25, "UTF-8"

    invoke-direct/range {v23 .. v25}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :cond_2
    if-eqz v18, :cond_3

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    const v23, 0x7f0a00c3

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalListActivity;->finish()V

    :goto_2
    return-void

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v12

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v18, :cond_3

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v17

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v18, :cond_3

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v16

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v18, :cond_3

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    :catch_6
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_7
    move-exception v9

    :try_start_8
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v18, :cond_3

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_1

    :catch_8
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v23

    if-eqz v18, :cond_4

    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_4
    :goto_3
    throw v23

    :catch_9
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_5
    new-instance v23, Lcom/android/calendar/vcal/VCalManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/VCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity;->parseVCalendar(Ljava/lang/String;)Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity;->isVersion20(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity;->parseICalendar(Ljava/lang/String;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "calendar type = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v22, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalListActivity;->finish()V

    goto/16 :goto_2

    :cond_6
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    goto :goto_4

    :cond_7
    if-nez p1, :cond_8

    sget-boolean v23, Lcom/android/calendar/Utils;->CHECK_ACCOUNT:Z

    if-eqz v23, :cond_8

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    const-string v24, "com.google"

    invoke-virtual/range {v23 .. v24}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    const-string v24, "com.android.exchange"

    invoke-virtual/range {v23 .. v24}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    const-string v24, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual/range {v23 .. v24}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    array-length v0, v13

    move/from16 v23, v0

    array-length v0, v10

    move/from16 v24, v0

    add-int v23, v23, v24

    array-length v0, v11

    move/from16 v24, v0

    add-int v6, v23, v24

    if-nez v6, :cond_8

    new-instance v20, Landroid/content/Intent;

    const-string v23, "android.settings.ADD_ACCOUNT_SETTINGS"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v23, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v23, "authorities"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "com.android.calendar"

    aput-object v26, v24, v25

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalListActivity;->finish()V

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->requestWindowFeature(I)Z

    goto/16 :goto_2

    :cond_8
    const v23, 0x7f03003a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->setContentView(I)V

    const v23, 0x7f0f00d4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ListView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/VCalListActivity;->mVcalList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    move/from16 v23, v0

    if-nez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mVcalList:Landroid/widget/ListView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;-><init>(Lcom/android/calendar/VCalListActivity;Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mVcalList:Landroid/widget/ListView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/calendar/VCalListActivity$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity$1;-><init>(Lcom/android/calendar/VCalListActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_5
    const v23, 0x7f0f00c9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    const v23, 0x7f0a0057

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setText(I)V

    new-instance v23, Lcom/android/calendar/VCalListActivity$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity$3;-><init>(Lcom/android/calendar/VCalListActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v23, 0x7f0f00ca

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const v23, 0x7f0a0086

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(I)V

    new-instance v23, Lcom/android/calendar/VCalListActivity$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity$4;-><init>(Lcom/android/calendar/VCalListActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mVcalList:Landroid/widget/ListView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;-><init>(Lcom/android/calendar/VCalListActivity;Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mVcalList:Landroid/widget/ListView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/calendar/VCalListActivity$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity$2;-><init>(Lcom/android/calendar/VCalListActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_5
.end method
