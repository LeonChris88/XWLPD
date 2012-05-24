.class public Lcom/android/calendar/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_DELETE:[Ljava/lang/String;

.field public static final PROJECTION_SEARCH:[Ljava/lang/String;

.field private static mGroupCount:I


# instance fields
.field public allDay:Z

.field public alldayOrg:Z

.field public availabilityStatus:Ljava/lang/String;

.field public bedrawed:Z

.field public bottom:F

.field public calendarId:I

.field public color:I

.field public contactAccountType:Ljava/lang/String;

.field public contactDataId:I

.field public contactRawId:I

.field public description:Ljava/lang/CharSequence;

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public eventType:I

.field public facebook_photo_url:Ljava/lang/CharSequence;

.field public facebook_scheudle_id:Ljava/lang/CharSequence;

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public latitude:I

.field public left:F

.field public location:Ljava/lang/CharSequence;

.field public longitude:I

.field private mColumn:I

.field private mGroupId:I

.field private mMaxColumns:I

.field public nextDown:Lcom/android/calendar/Event;

.field public nextLeft:Lcom/android/calendar/Event;

.field public nextRight:Lcom/android/calendar/Event;

.field public nextUp:Lcom/android/calendar/Event;

.field public organizer:Ljava/lang/String;

.field public right:F

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public timezone:Ljava/lang/CharSequence;

.field public title:Ljava/lang/CharSequence;

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "eventLocation"

    aput-object v1, v0, v4

    const-string v1, "allDay"

    aput-object v1, v0, v5

    const-string v1, "calendar_color"

    aput-object v1, v0, v6

    const-string v1, "eventTimezone"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "contact_data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "contact_account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "facebook_photo_url"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "availabilityStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Event;->PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "eventLocation"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    const-string v1, "hasAlarm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_data_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "contact_account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "facebook_photo_url"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Event;->PROJECTION_DELETE:[Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Events._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "eventLocation"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    const-string v1, "hasAlarm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_data_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "contact_account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "facebook_photo_url"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Event;->PROJECTION_SEARCH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method static computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput v0, Lcom/android/calendar/Event;->mGroupCount:I

    invoke-static {p0, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public static constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "II)V"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_e

    new-instance v2, Lcom/android/calendar/Event;

    invoke-direct {v2}, Lcom/android/calendar/Event;-><init>()V

    const/4 v10, 0x5

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/calendar/Event;->id:J

    const/4 v10, 0x0

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    const/4 v10, 0x1

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    const/4 v10, 0x2

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, v2, Lcom/android/calendar/Event;->allDay:Z

    const/4 v10, 0x2

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, v2, Lcom/android/calendar/Event;->alldayOrg:Z

    const/16 v10, 0x12

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    const/16 v10, 0x13

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, v2, Lcom/android/calendar/Event;->guestsCanModify:Z

    const/16 v10, 0x10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    iget-object v10, v2, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    if-eqz v10, :cond_3

    const/16 v10, 0x10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x3e8

    if-le v10, v11, :cond_a

    const/16 v10, 0x10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\r"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    :cond_3
    :goto_5
    const/4 v10, 0x4

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->timezone:Ljava/lang/CharSequence;

    iget-object v10, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    if-eqz v10, :cond_4

    iget-object v10, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    const v10, 0x7f0a0024

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    :cond_5
    const/4 v10, 0x3

    invoke-interface {p2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v10, 0x3

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->color:I

    :goto_6
    const/4 v10, 0x6

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v10, 0x7

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v5, v2, Lcom/android/calendar/Event;->startMillis:J

    const/16 v10, 0xb

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->startTime:I

    const/16 v10, 0x9

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->startDay:I

    iput-wide v3, v2, Lcom/android/calendar/Event;->endMillis:J

    const/16 v10, 0xc

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->endTime:I

    const/16 v10, 0xa

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->endDay:I

    iget v10, v2, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, p4

    if-gt v10, v0, :cond_2

    iget v10, v2, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, p3

    if-lt v10, v0, :cond_2

    const/16 v10, 0xd

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    :goto_7
    iput-boolean v10, v2, Lcom/android/calendar/Event;->hasAlarm:Z

    const/16 v10, 0xe

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xf

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/calendar/Event;->isRepeating:Z

    :goto_8
    const/16 v10, 0x11

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    const/16 v10, 0x15

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->latitude:I

    const/16 v10, 0x16

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->longitude:I

    const/16 v10, 0x17

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->eventType:I

    const/16 v10, 0x18

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->contactDataId:I

    const/16 v10, 0x19

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->contactRawId:I

    const/16 v10, 0x1a

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    const/16 v10, 0x1b

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    const/16 v10, 0x1c

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    const/16 v10, 0x14

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->calendarId:I

    const/16 v10, 0x1d

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->availabilityStatus:Ljava/lang/String;

    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/calendar/Event;->bedrawed:Z

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_a
    const/16 v10, 0x10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\r"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_b
    const v10, -0x222223

    iput v10, v2, Lcom/android/calendar/Event;->color:I

    goto/16 :goto_6

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_d
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/calendar/Event;->isRepeating:Z

    goto/16 :goto_8

    :cond_e
    invoke-static {p1, p0}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private static doComputePositions(Ljava/util/ArrayList;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;Z)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v5, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Event;

    iget-boolean v0, v8, Lcom/android/calendar/Event;->allDay:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    invoke-virtual {v8}, Lcom/android/calendar/Event;->getAdjustStartMillis()J

    move-result-wide v15

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    invoke-virtual {v2}, Lcom/android/calendar/Event;->getAdjustEndMillis()J

    move-result-wide v17

    cmp-long v17, v17, v15

    if-gtz v17, :cond_1

    const-wide/16 v17, 0x1

    invoke-virtual {v2}, Lcom/android/calendar/Event;->getColumn()I

    move-result v19

    shl-long v17, v17, v19

    const-wide/16 v19, -0x1

    xor-long v17, v17, v19

    and-long v5, v5, v17

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    invoke-virtual {v7, v14}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    sget v17, Lcom/android/calendar/Event;->mGroupCount:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/calendar/Event;->setGroupId(I)V

    goto :goto_2

    :cond_3
    sget v17, Lcom/android/calendar/Event;->mGroupCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/android/calendar/Event;->mGroupCount:I

    const/4 v14, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_4
    invoke-static {v5, v6}, Lcom/android/calendar/Event;->findFirstZeroBit(J)I

    move-result v4

    const/16 v17, 0x40

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    const/16 v4, 0x3f

    :cond_5
    const-wide/16 v17, 0x1

    shl-long v17, v17, v4

    or-long v5, v5, v17

    invoke-virtual {v8, v4}, Lcom/android/calendar/Event;->setColumn(I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v14, v13, :cond_0

    move v14, v13

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    invoke-virtual {v7, v14}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    sget v17, Lcom/android/calendar/Event;->mGroupCount:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/calendar/Event;->setGroupId(I)V

    goto :goto_3

    :cond_7
    sget v17, Lcom/android/calendar/Event;->mGroupCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/android/calendar/Event;->mGroupCount:I

    return-void
.end method

.method public static findFirstZeroBit(J)I
    .locals 6

    const/16 v1, 0x40

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Z)V"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    new-instance v16, Landroid/text/format/Time;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v3, v4}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v18

    add-int v13, v18, p4

    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int v3, v3, p4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    const-string v8, "begin ASC, end DESC, title ASC LIMIT 15000"

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v3, "preferences_hide_declined"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v6, "deleted=0 AND (eventStatus!=2 OR eventStatus is null) AND visible=1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v15, :cond_0

    const-string v3, " AND selfAttendeeStatus!=2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/calendar/Utils;->getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :try_start_1
    sget-object v3, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-wide/32 v3, 0x5265c00

    sub-long v3, p2, v3

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-wide/32 v3, 0x5265c00

    add-long/2addr v3, v11

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/calendar/Event;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    :goto_0
    if-nez v10, :cond_3

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v14

    :try_start_2
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    :cond_3
    if-nez p7, :cond_4

    :try_start_3
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    move/from16 v0, p5

    if-eq v0, v3, :cond_4

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v10, v2, v13}, Lcom/android/calendar/Event;->constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static final newInstance()Lcom/android/calendar/Event;
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    iput-wide v3, v0, Lcom/android/calendar/Event;->id:J

    iput-object v2, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput v1, v0, Lcom/android/calendar/Event;->color:I

    iput-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->alldayOrg:Z

    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    iput-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v3, v0, Lcom/android/calendar/Event;->endMillis:J

    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/android/calendar/Event;->latitude:I

    iput v1, v0, Lcom/android/calendar/Event;->longitude:I

    iput v1, v0, Lcom/android/calendar/Event;->eventType:I

    iput v1, v0, Lcom/android/calendar/Event;->contactDataId:I

    iput v1, v0, Lcom/android/calendar/Event;->contactRawId:I

    iput-object v2, v0, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/android/calendar/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    iput v1, v0, Lcom/android/calendar/Event;->calendarId:I

    iput-object v2, v0, Lcom/android/calendar/Event;->timezone:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    iget-object v1, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/calendar/Event;->color:I

    iput v1, v0, Lcom/android/calendar/Event;->color:I

    iget-object v1, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    iget-boolean v1, p0, Lcom/android/calendar/Event;->alldayOrg:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->alldayOrg:Z

    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    iget-wide v1, p0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v1, p0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    iget-boolean v1, p0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    iget-boolean v1, p0, Lcom/android/calendar/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    iget v1, p0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iget-object v1, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->guestsCanModify:Z

    iget-object v1, p0, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/calendar/Event;->latitude:I

    iput v1, v0, Lcom/android/calendar/Event;->latitude:I

    iget v1, p0, Lcom/android/calendar/Event;->longitude:I

    iput v1, v0, Lcom/android/calendar/Event;->longitude:I

    iget v1, p0, Lcom/android/calendar/Event;->eventType:I

    iput v1, v0, Lcom/android/calendar/Event;->eventType:I

    iget v1, p0, Lcom/android/calendar/Event;->contactDataId:I

    iput v1, v0, Lcom/android/calendar/Event;->contactDataId:I

    iget v1, p0, Lcom/android/calendar/Event;->contactRawId:I

    iput v1, v0, Lcom/android/calendar/Event;->contactRawId:I

    iget-object v1, p0, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/calendar/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/calendar/Event;->calendarId:I

    iput v1, v0, Lcom/android/calendar/Event;->calendarId:I

    iget-object v1, p0, Lcom/android/calendar/Event;->timezone:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->timezone:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/calendar/Event;->availabilityStatus:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/Event;->availabilityStatus:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v0, -0x1

    move-object v1, p1

    check-cast v1, Lcom/android/calendar/Event;

    iget v3, p0, Lcom/android/calendar/Event;->startDay:I

    iget v4, v1, Lcom/android/calendar/Event;->startDay:I

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v3, p0, Lcom/android/calendar/Event;->startDay:I

    iget v4, v1, Lcom/android/calendar/Event;->startDay:I

    if-le v3, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/calendar/Event;->startTime:I

    iget v4, v1, Lcom/android/calendar/Event;->startTime:I

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/android/calendar/Event;->startTime:I

    iget v4, v1, Lcom/android/calendar/Event;->startTime:I

    if-le v3, v4, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/calendar/Event;->endDay:I

    iget v4, v1, Lcom/android/calendar/Event;->endDay:I

    if-ge v3, v4, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/calendar/Event;->endDay:I

    iget v4, v1, Lcom/android/calendar/Event;->endDay:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/calendar/Event;->endTime:I

    iget v4, v1, Lcom/android/calendar/Event;->endTime:I

    if-ge v3, v4, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/calendar/Event;->endTime:I

    iget v4, v1, Lcom/android/calendar/Event;->endTime:I

    if-gt v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v1, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v3, :cond_0

    :cond_6
    iget-boolean v3, p0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_7

    iget-boolean v3, v1, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v3, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    iget-boolean v3, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v3, :cond_8

    iget-boolean v3, v1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v3, :cond_0

    :cond_8
    iget-boolean v3, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-nez v3, :cond_9

    iget-boolean v3, v1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v3, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdjustEndMillis()J
    .locals 12

    const-wide/32 v10, 0x927c0

    iget-wide v2, p0, Lcom/android/calendar/Event;->endMillis:J

    iget-wide v4, p0, Lcom/android/calendar/Event;->endMillis:J

    iget-wide v6, p0, Lcom/android/calendar/Event;->endMillis:J

    const-wide/32 v8, 0xea60

    rem-long/2addr v6, v8

    sub-long/2addr v4, v6

    rem-long/2addr v4, v10

    sub-long v0, v2, v4

    iget-wide v2, p0, Lcom/android/calendar/Event;->endMillis:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/calendar/Event;->endMillis:J

    :goto_0
    return-wide v2

    :cond_0
    add-long v2, v0, v10

    goto :goto_0
.end method

.method public getAdjustEndTime()I
    .locals 3

    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    iget v2, p0, Lcom/android/calendar/Event;->endTime:I

    rem-int/lit8 v2, v2, 0xa

    sub-int v0, v1, v2

    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0xa

    goto :goto_0
.end method

.method public getAdjustStartMillis()J
    .locals 8

    iget-wide v0, p0, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v2, p0, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v4, p0, Lcom/android/calendar/Event;->startMillis:J

    const-wide/32 v6, 0xea60

    rem-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getAdjustStartTime()I
    .locals 2

    iget v0, p0, Lcom/android/calendar/Event;->startTime:I

    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    rem-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/Event;->mColumn:I

    return v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/Event;->mGroupId:I

    return v0
.end method

.method public getMaxColumns()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    return v0
.end method

.method public hasFacebookPhoto()Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFacebook()Z
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    const-string v1, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColumn(I)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/Event;->mColumn:I

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/Event;->mGroupId:I

    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    return-void
.end method
