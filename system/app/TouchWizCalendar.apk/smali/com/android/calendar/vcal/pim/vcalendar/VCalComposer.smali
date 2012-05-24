.class public Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;
.super Ljava/lang/Object;
.source "VCalComposer.java"


# static fields
.field private static mNewLine:Ljava/lang/String;


# instance fields
.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\r\n"

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    return-void
.end method

.method private buildEventStr(Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BEGIN:VEVENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "DESCRIPTION;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    if-ne p2, v8, :cond_b

    iget-boolean v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->allday:Z

    if-eqz v5, :cond_a

    const-string v5, "DTEND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->endday:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    if-ne p2, v8, :cond_e

    iget-boolean v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->allday:Z

    if-eqz v5, :cond_d

    const-string v5, "DTSTART:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->startday:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "DUE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "LOCATION;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "COMPLETED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "RRULE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "SUMMARY;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v3, "TENTATIVE"

    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_2
    const-string v5, "STATUS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->has_alarm:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    if-eqz v5, :cond_11

    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_11

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    const-string v6, "vcalendar1.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v2, ""

    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    const-string v2, "DALARM"

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    const-string v5, "DTEND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    iget-boolean v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->allday:Z

    if-eqz v5, :cond_c

    const-string v5, "DTEND;VALUE=DATE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->endday:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_c
    const-string v5, "DTEND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_d
    const-string v5, "DTSTART:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_e
    iget-boolean v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->allday:Z

    if-eqz v5, :cond_f

    const-string v5, "DTSTART;VALUE=DATE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->startday:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_f
    const-string v5, "DTSTART:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_0
    const-string v3, "TENTATIVE"

    goto/16 :goto_2

    :pswitch_1
    const-string v3, "CONFIRMED"

    goto/16 :goto_2

    :pswitch_2
    const-string v3, "CANCELLED"

    goto/16 :goto_2

    :pswitch_3
    const-string v2, "DALARM"

    goto/16 :goto_4

    :pswitch_4
    const-string v2, "AALARM"

    goto/16 :goto_4

    :pswitch_5
    const-string v2, "MALARM"

    goto/16 :goto_4

    :cond_10
    const-string v5, "BEGIN:VALARM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ACTION:AUDIO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TRIGGER:-PT10M"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "END:VALARM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v5, "END:VEVENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private foldingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v5, "\r\n"

    const-string v6, "\n"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    const-string v7, "=3D"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\r"

    const-string v7, "=0D"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "=0A"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/BitSet;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private isNull(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createVCal(Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/VCalException;
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eq p2, v5, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    new-instance v3, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;

    const-string v4, "version not match 1.0 or 2.0."

    invoke-direct {v3, v4}, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-ne p2, v5, :cond_2

    const-string v3, "vcalendar1.0"

    iput-object v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    :goto_0
    const-string v3, "BEGIN:VCALENDAR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, v5, :cond_3

    const-string v3, "VERSION:1.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, "PRODID:vCal ID default"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-ne p2, v5, :cond_4

    const-string v3, "TZ:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {p0, v3, p2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->buildEventStr(Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    const-string v3, "vcalendar2.0"

    iput-object v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v3, "VERSION:2.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v3, "BEGIN:VTIMEZONE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TZID:vCal default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BEGIN:STANDARD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DTSTART:16010101T000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TZOFFSETFROM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TZOFFSETTO:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END:STANDARD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END:VTIMEZONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_5
    const-string v3, "END:VCALENDAR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
