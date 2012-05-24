.class public Lcom/android/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/Utils$LengthFilter;
    }
.end annotation


# static fields
.field public static AS_FLAG:Z

.field public static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field public static final CALENDAR_COLOR_FACEBOOK:I

.field public static final CALENDAR_TYPE_IMAGE:[I

.field public static final CALENDAR_TYPE_IMAGE_EVENT:[I

.field public static final CALENDAR_TYPE_IMAGE_SMALL:[I

.field public static final CALENDAR_TYPE_TEXT:[I

.field public static CHECK_ACCOUNT:Z

.field public static final CONTACT_EVENTS_URI:Landroid/net/Uri;

.field public static final CONTENT_VCALENDAR_URI:Landroid/net/Uri;

.field public static DEBUG:Z

.field public static final EVENTS_HAVE_ATTENDEES_URI:Landroid/net/Uri;

.field public static final FACEBOOK_URI:Landroid/net/Uri;

.field public static HORIZONTAL_SCROLL_THRESHOLD:I

.field public static final MAP_URI:Landroid/net/Uri;

.field public static final SNS_EVENT_COUNT_URI:Landroid/net/Uri;

.field static final SNS_EVENT_PROJECTION:[Ljava/lang/String;

.field public static final SNS_EVENT_URI:Landroid/net/Uri;

.field static final SNS_RSVP_PROJECTION:[Ljava/lang/String;

.field public static final SNS_RSVP_URI:Landroid/net/Uri;

.field public static VERTICAL_SCROLL_THRESHOLD:I

.field public static builder:Landroid/app/AlertDialog$Builder;

.field public static final englishNthDay:[Ljava/lang/String;

.field private static final mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

.field public static sMySingle:Ljava/lang/String;

.field public static sTaskId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    sput-boolean v5, Lcom/android/calendar/Utils;->CHECK_ACCOUNT:Z

    sput-boolean v3, Lcom/android/calendar/Utils;->DEBUG:Z

    sput-boolean v3, Lcom/android/calendar/Utils;->AS_FLAG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/Utils;->sTaskId:Ljava/lang/Integer;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/Utils;->VERTICAL_SCROLL_THRESHOLD:I

    new-instance v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    const-string v1, "com.android.calendar_preferences"

    invoke-direct {v0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, "1st"

    aput-object v1, v0, v3

    const-string v1, "2nd"

    aput-object v1, v0, v6

    const-string v1, "3rd"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "4th"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6th"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7th"

    aput-object v2, v0, v1

    const-string v1, "8th"

    aput-object v1, v0, v4

    const/16 v1, 0x9

    const-string v2, "9th"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10th"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11th"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12th"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13th"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14th"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15th"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16th"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17th"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18th"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19th"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20th"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21st"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22nd"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23rd"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "24th"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "25th"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "26th"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "27th"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "28th"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "29th"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "30th"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "31st"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Utils;->englishNthDay:[Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/Utils;->CALENDAR_TYPE_TEXT:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/calendar/Utils;->CALENDAR_TYPE_IMAGE:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/calendar/Utils;->CALENDAR_TYPE_IMAGE_SMALL:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/calendar/Utils;->CALENDAR_TYPE_IMAGE_EVENT:[I

    const/16 v0, 0x44

    const/16 v1, 0x7d

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/calendar/Utils;->CALENDAR_COLOR_FACEBOOK:I

    const-string v0, "content://com.android.calendar/contact_events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->CONTACT_EVENTS_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.calendar/maps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.calendar/facebooks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->FACEBOOK_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.calendar/events_have_attendees"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->EVENTS_HAVE_ATTENDEES_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "as_vcalendar"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->CONTENT_VCALENDAR_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.provider.sns/event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->SNS_EVENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.provider.sns/event/count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->SNS_EVENT_COUNT_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.provider.sns/event_rsvp_map/eventid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->SNS_RSVP_URI:Landroid/net/Uri;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "event_id"

    aput-object v1, v0, v3

    const-string v1, "service_provider"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "owner"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const-string v1, "post_time"

    aput-object v1, v0, v4

    const/16 v1, 0x9

    const-string v2, "place"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Utils;->SNS_EVENT_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "event_type"

    aput-object v1, v0, v5

    const-string v1, "event_rsvp_map.event_member_name AS event_member_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/Utils;->SNS_RSVP_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v3

    const-string v1, "ownerAccount"

    aput-object v1, v0, v6

    const-string v1, "calendar_color"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x11t 0x1t 0xat 0x7ft
        0x11t 0x1t 0xat 0x7ft
        0x12t 0x1t 0xat 0x7ft
        0x13t 0x1t 0xat 0x7ft
        0x14t 0x1t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3ft 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x40t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x40t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetStrFitsInPixel(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const-string v0, "W"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    div-int v1, p2, v0

    move v0, v1

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v2, v2

    if-ge p2, v2, :cond_3

    if-ge v1, v0, :cond_2

    :cond_0
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-gt v1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    return v0
.end method

.method public static IsScreenPortrait(Landroid/content/Context;)Z
    .locals 3

    if-eqz p0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static addToContact(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/android/calendar/Utils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static dateFormat(III)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE, dd/MMM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v0, "ENCODING"

    invoke-virtual {p0, v0}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v2

    const-string v0, "CHARSET"

    invoke-virtual {p0, v0}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v0, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object v4, v0

    :goto_1
    if-eqz v2, :cond_8

    iget-object v0, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "BASE64"

    iget-object v5, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "B"

    iget-object v5, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v0, :cond_0

    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v0, "UTF-8"

    move-object v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :cond_4
    const-string v0, "QUOTED-PRINTABLE"

    iget-object v2, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "= "

    const-string v5, " "

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "=\t"

    const-string v5, "\t"

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\r\n"

    const-string v5, "\n"

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\r"

    const-string v5, "\n"

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    move v2, v3

    :goto_3
    if-ge v2, v7, :cond_6

    aget-object v0, v5, v2

    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_6
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v2

    if-eqz v2, :cond_7

    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public static extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/calendar/Utils;->decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, " ()-./,"

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, " ()-./,"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;
    .locals 14

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v11, :cond_0

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    cmp-long v2, p2, p4

    if-nez v2, :cond_2

    move-wide/from16 v0, p2

    invoke-static {p0, v8, v0, v1}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-static {p0, v8, v0, v1}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-static {p0, v8, v0, v1}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-wide/from16 v0, p2

    invoke-static {p0, v8, v0, v1}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v0, p2

    invoke-static {p0, v8, v0, v1}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v7, 0x201

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit16 v7, v7, 0x80

    :cond_4
    if-eqz p7, :cond_5

    or-int/lit16 v7, v7, 0x2000

    :cond_5
    move-object v2, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    move-wide/from16 v3, p4

    move-wide/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v13

    cmp-long v2, p2, p4

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p6, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public static getCalendarType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "LOCAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    const-string v1, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    const-string v1, "com.android.exchange"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    const-string v1, "com.seven.Z7.work"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_5

    const-string v1, "com.seven.Z7.gmail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_6

    const-string v1, "com.seven.Z7.yahoo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    if-eqz p1, :cond_8

    const-string v1, "yahoo.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ymail.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    const-string v1, "gmail.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "google.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "googlemail.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    if-eqz p0, :cond_0

    const-string v1, "com.google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getCalendarsConditions(Landroid/app/Activity;)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/calendar/Utils;->sTaskId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/Utils;->sTaskId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "account_name=\'%s\'"

    new-array v1, v8, [Ljava/lang/Object;

    sget-object v2, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v0, "preference_default_calendar_sync_account"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preference_default_calendar_owner_account"

    invoke-interface {v6, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_default_calendar_sync_account_type"

    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_2

    const-string v3, "account_type=\'com.google\' AND calendar_access_level>=500 AND sync_events=1"

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "preference_default_calendar_sync_account"

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "preference_default_calendar_owner_account"

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "preference_default_calendar_sync_account_type"

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "_id=%d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const-string v0, "_id=%d"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name=\'%s\'"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ownerAccount=\'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type=\'%s\'"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getConvName(Ljava/util/List;CILandroid/graphics/Paint;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;CI",
            "Landroid/graphics/Paint;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-gtz p2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    move v1, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v0, "%c "

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    array-length v0, v5

    if-ne v0, v9, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v5

    if-gtz v4, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_4
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0033

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move v3, v4

    :goto_2
    if-ltz v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_7

    new-array v1, v9, [Ljava/lang/Object;

    add-int/lit8 v3, v4, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/calendar/Utils;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v3

    sub-int v3, p2, v3

    if-lez v3, :cond_6

    aget-object v2, v5, v2

    invoke-static {v2, p3, v3}, Lcom/android/calendar/Utils;->GetStrFitsInPixel(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_7
    if-ne v3, v4, :cond_9

    move v1, v2

    :goto_4
    if-ge v1, v3, :cond_c

    if-lez v1, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    aget-object v8, v5, v1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_5
    if-ge v1, v3, :cond_b

    if-lez v1, :cond_a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    aget-object v8, v5, v1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    new-array v1, v9, [Ljava/lang/Object;

    sub-int v8, v4, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/calendar/Utils;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v1

    if-gt p2, v1, :cond_5

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_2
.end method

.method public static getHideContactsEvents(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/android/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_hide_contacts_events"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/calendar/Utils;->getHideContactsEvents(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string v0, "contact_data_id is null"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "contact_data_id is null"

    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contact_data_id is null)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getJulianDay(JJ)I
    .locals 8

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    const-wide/32 v4, 0x5265bff

    sub-long/2addr p0, v4

    :cond_0
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    long-to-int v4, v0

    const v5, 0x253d8c

    add-int/2addr v4, v5

    return v4
.end method

.method public static getNameByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/calendar/ContactInfoCache;->getInstance()Lcom/android/calendar/ContactInfoCache;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/android/calendar/ContactInfoCache;->getContactInfo(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v1

    iget-object v2, v1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTodayMillis(Landroid/content/Context;)J
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-wide v6, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public static insertVEvent(Landroid/content/ContentResolver;Lcom/android/calendarcommon/ICalendar$Component;JILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 30

    invoke-virtual/range {p5 .. p5}, Landroid/content/ContentValues;->clear()V

    const-string v26, "SUMMARY"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    const-string v26, "=0D"

    const-string v27, "\r"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "=0A"

    const-string v28, "\n"

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v26, "title"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v26, "eventStatus"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v26, "DESCRIPTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    const-string v26, "description"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v26, "LOCATION"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "eventLocation"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v26, "calendar_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v20, 0x0

    new-instance v19, Landroid/text/format/Time;

    const-string v26, "UTC"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v22, 0x0

    const-string v26, "DTSTART"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "TZID"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v23

    if-eqz v23, :cond_3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/text/format/Time;->allDay:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    const-string v26, "allDay"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const-string v26, "dtstart"

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "eventTimezone"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v26, "DTEND"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_6

    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v26, "dtend"

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    const-string v26, "DUE"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_7

    const-string v26, "duration"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_e

    :cond_8
    const/16 v26, 0x0

    :goto_1
    return-object v26

    :catch_0
    move-exception v14

    const/16 v26, 0x0

    goto :goto_1

    :catch_1
    move-exception v14

    const/16 v26, 0x0

    goto :goto_1

    :cond_9
    const-string v26, "TZID"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v24

    if-eqz v24, :cond_a

    invoke-virtual/range {v24 .. v24}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v22

    :cond_a
    if-nez v4, :cond_b

    const-string v8, "+P0S"

    :cond_b
    if-nez v22, :cond_c

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_2
    new-instance v15, Landroid/text/format/Time;

    invoke-direct/range {v15 .. v16}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v28

    sub-long v9, v26, v28

    const-wide/16 v26, 0x3e8

    div-long v12, v9, v26

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/text/format/Time;->allDay:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    const-wide/32 v26, 0x15180

    rem-long v26, v12, v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_d

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-wide/32 v27, 0x15180

    div-long v27, v12, v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "D"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    const-string v26, "duration"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v16, v22

    goto :goto_2

    :cond_d
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "S"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_e
    new-instance v17, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct/range {v17 .. v17}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    :try_start_2
    const-string v26, "RRULE"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    const-string v26, "rrule"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    const-string v26, "rrule"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    const-string v26, "rrule"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_f

    const-string v26, "dtend"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_f
    sget-object v26, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    goto/16 :goto_1

    :catch_2
    move-exception v26

    goto :goto_4
.end method

.method public static isExistsInContact(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/calendar/ContactInfoCache;->getInstance()Lcom/android/calendar/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/android/calendar/ContactInfoCache;->getContactInfo(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v1

    iget-object v3, v1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .locals 3

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const-string v0, "0123456789()-./+ "

    if-eqz p0, :cond_2

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    const-string v3, "0123456789()-./+ "

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    :goto_1
    return v1

    :cond_0
    if-nez v2, :cond_1

    const/16 v4, 0x9

    if-gt v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static isValidRange(Landroid/text/format/Time;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v3

    const v4, 0x24dc87

    if-lt v3, v4, :cond_0

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v3

    const v4, 0x259d23

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return v2
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static keypadShow(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object v2, p1

    move-object v0, p0

    new-instance v3, Lcom/android/calendar/Utils$1;

    invoke-direct {v3, v0, v2}, Lcom/android/calendar/Utils$1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static sendEmail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Send mail..."

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static setAllDayEvents(Ljava/util/ArrayList;IILandroid/content/Context;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;II",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    const/4 v7, -0x1

    if-eq p1, v7, :cond_3

    iget v7, v3, Lcom/android/calendar/Event;->startDay:I

    if-gt v7, p2, :cond_2

    iget v7, v3, Lcom/android/calendar/Event;->endDay:I

    if-ge v7, p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    iget v7, v3, Lcom/android/calendar/Event;->eventType:I

    if-eqz v7, :cond_4

    iput-boolean v9, v3, Lcom/android/calendar/Event;->allDay:Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    iget v7, v3, Lcom/android/calendar/Event;->startDay:I

    iget v8, v3, Lcom/android/calendar/Event;->endDay:I

    if-ge v7, v8, :cond_5

    iget-boolean v7, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v7, :cond_5

    iput-boolean v9, v3, Lcom/android/calendar/Event;->allDay:Z

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v7, v3, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v7, :cond_6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p3}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_0
.end method

.method public static setDayView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->setDayView(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setFirstdayOfWeek(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->setFirstDayOfWeek(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setJulianDay(Landroid/text/format/Time;I)J
    .locals 9

    const/4 v8, 0x0

    const v4, 0x253d8c

    sub-int v4, p1, v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long v2, v4, v6

    invoke-virtual {p0, v2, v3}, Landroid/text/format/Time;->set(J)V

    iget-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    sub-int v1, p1, v0

    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    iput v8, p0, Landroid/text/format/Time;->hour:I

    iput v8, p0, Landroid/text/format/Time;->minute:I

    iput v8, p0, Landroid/text/format/Time;->second:I

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    return-wide v2
.end method

.method static setTimeToStartOfDay(Landroid/text/format/Time;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    return-void
.end method

.method public static setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/calendar/Utils$2;

    invoke-direct {v2}, Lcom/android/calendar/Utils$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivityForDelete(Landroid/content/Context;JJIII)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "endTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "event_start_day"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "event_end_day"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "delete_type"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final timeFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/text/format/Time;
    .locals 3

    new-instance v0, Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    return-object v0
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J
    .locals 10

    const-wide/16 v8, -0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v6, "beginTime"

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v6, v2, v8

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "time"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_0
    :goto_0
    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_1
    new-instance v5, Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Landroid/text/format/Time;->set(J)V

    invoke-static {v5}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v6

    if-nez v6, :cond_2

    const v6, 0x256859

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->setJulianDay(I)J

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    :cond_2
    return-wide v2

    :catch_0
    move-exception v1

    const-string v6, "Calendar"

    const-string v7, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
