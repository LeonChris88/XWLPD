.class public Lcom/android/calendar/EventInfoActivity;
.super Landroid/app/Activity;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;,
        Lcom/android/calendar/EventInfoActivity$Attendee;,
        Lcom/android/calendar/EventInfoActivity$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/ViewSwitcher$ViewFactory;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEE_VALUES:[I

.field private static final CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static HAS_REPLY_MENU:Z

.field private static HORIZONTAL_FLING_THRESHOLD:I

.field private static final MAP_PROJECTION:[Ljava/lang/String;

.field private static final PRESENCE_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DIALOG_RESPONSE:I

.field PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

.field PRESENCE_PROJECTION_EMAIL_INDEX:I

.field PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

.field PRESENCE_PROJECTION_PRESENCE_INDEX:I

.field private address:Landroid/widget/TextView;

.field mAcceptedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mAttendeeResponseFromIntent:I

.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mCalendarOwnerAccount:Ljava/lang/String;

.field private mCalendarOwnerAttendeeId:J

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCanModifyCalendar:Z

.field private mCanModifyEvent:Z

.field private mColor:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDayMillis:J

.field mDeclinedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

.field private mEndMillis:J

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventId:J

.field private mEventJulianDay:I

.field private mEventListType:I

.field private mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mFromAlert:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHasAttendeeData:Z

.field private mInAnimationFuture:Landroid/view/animation/Animation;

.field private mInAnimationPast:Landroid/view/animation/Animation;

.field private mInstancesCursor:Landroid/database/Cursor;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsBusyFreeCalendar:Z

.field private mIsOrganizer:Z

.field private mIsRepeating:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLoader:Landroid/content/CursorLoader;

.field private mMoreEventId:J

.field private mNumOfAttendees:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mOrganizer:Ljava/lang/String;

.field private mOriginalAttendeeResponse:I

.field private mOriginalMinutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOutAnimationFuture:Landroid/view/animation/Animation;

.field private mOutAnimationPast:Landroid/view/animation/Animation;

.field private mPresenceQueryHandler:Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;

.field mQuickContactListener:Landroid/view/View$OnClickListener;

.field private mReminderAdder:Landroid/widget/LinearLayout;

.field private mReminderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRemindersContainer:Landroid/widget/LinearLayout;

.field private mResponseContainer:Landroid/view/View;

.field private mResponseOffset:I

.field private mResponseTextView:Landroid/widget/TextView;

.field private mResponseType:I

.field private mResponseValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartMillis:J

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTempResponseType:I

.field mTentativeAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

.field private mUpdateCounts:I

.field private mUri:Landroid/net/Uri;

.field private mViewHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/EventInfoActivity$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mWildcardPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "rrule"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v7

    const-string v1, "calendar_id"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "guestsCanInviteOthers"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "contact_account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "facebook_service_provider"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "facebook_owner"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "attendeeName"

    aput-object v1, v0, v3

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v7

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "attendee_contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "minutes"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "startDay"

    aput-object v1, v0, v5

    const-string v1, "endDay"

    aput-object v1, v0, v7

    const-string v1, "begin"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "end"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->PROJECTION:[Ljava/lang/String;

    sput-boolean v3, Lcom/android/calendar/EventInfoActivity;->HAS_REPLY_MENU:Z

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/EventInfoActivity;->HORIZONTAL_FLING_THRESHOLD:I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "map"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->MAP_PROJECTION:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v3, p0, Lcom/android/calendar/EventInfoActivity;->DIALOG_RESPONSE:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mWildcardPattern:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mViewHolders:Ljava/util/HashMap;

    iput v2, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

    iput v3, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PRESENCE_INDEX:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_EMAIL_INDEX:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/calendar/EventInfoActivity$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoActivity$5;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mQuickContactListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/calendar/EventInfoActivity$9;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoActivity$9;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/calendar/EventInfoActivity$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/EventInfoActivity$10;-><init>(Lcom/android/calendar/EventInfoActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private UpdateView(Landroid/view/View;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_41

    :cond_1
    const v3, 0x7f0a0024

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    move v10, v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x9

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x3e8

    if-le v3, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\r"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0xa

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    move v12, v3

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0xc

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    if-nez v3, :cond_2

    const v3, -0x222223

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    const v5, -0x44000001

    and-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x12

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x13

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x14

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x16

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x15

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x17

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_3

    if-eqz v19, :cond_11

    const-string v3, "com.sec.android.app.snsaccountfacebook.account_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_3
    const/4 v3, 0x1

    move v13, v3

    :goto_5
    const v3, 0x7f0f001a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    if-eqz v4, :cond_4

    const v3, 0x7f0f0013

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    :cond_4
    const v3, 0x7f0f0087

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00e1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_3f

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :goto_6
    if-eqz v10, :cond_14

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iget-object v5, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const-string v6, "UTC"

    iput-object v6, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v3, v8, v9}, Landroid/text/format/Time;->set(J)V

    iput-object v5, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->normalize(Z)J

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const-string v3, "UTC"

    iput-object v3, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    iput-object v5, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->normalize(Z)J

    iget v3, v4, Landroid/text/format/Time;->hour:I

    if-nez v3, :cond_5

    iget v3, v4, Landroid/text/format/Time;->minute:I

    if-nez v3, :cond_5

    iget v3, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Landroid/text/format/Time;->monthDay:I

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->normalize(Z)J

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    cmp-long v3, v8, v5

    if-nez v3, :cond_13

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    :goto_7
    const v5, 0x7f0f0083

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    const v5, 0x7f0f0084

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    const v5, 0x7f0f0085

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    :goto_8
    const v5, 0x7f0f0081

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v4, 0x7f0f0081

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    if-nez v3, :cond_21

    const v3, 0x7f0f0082

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    :goto_9
    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/calendar/EventInfoActivity;->startManagingCursor(Landroid/database/Cursor;)V

    move-object v14, v3

    move-object v3, v4

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    if-nez v4, :cond_6

    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getCalendarType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_24

    const v3, 0x7f0f007f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v20, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/Utils;->FACEBOOK_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "photo"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_7

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    const v3, 0x7f0f001f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    :goto_b
    if-eqz v14, :cond_a

    const-string v3, "My calendar"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    :cond_9
    const v3, 0x7f0f004d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v14}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    :cond_a
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0xd

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mHasAttendeeData:Z

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0xb

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_26

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0xb

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_27

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0xe

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_28

    :cond_b
    const/4 v3, 0x1

    :goto_10
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mCanModifyEvent:Z

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    const/4 v4, 0x0

    if-nez v18, :cond_30

    const v3, 0x7f0f002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    if-eqz v17, :cond_29

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mWildcardPattern:Ljava/util/regex/Pattern;

    const-string v5, "geo:0,0?q="

    invoke-static {v3, v4, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    new-instance v4, Lcom/android/calendar/EventInfoActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/calendar/EventInfoActivity$4;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_c
    const v3, 0x7f0f002b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    const/4 v4, 0x1

    const/4 v3, 0x1

    :goto_11
    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/EventInfoActivity;->setMapImage(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2a

    const v3, 0x7f0f0055

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    const/4 v4, 0x1

    const/4 v3, 0x1

    :goto_12
    if-eqz v3, :cond_2b

    const v3, 0x7f0f0052

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x17

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x19

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v4}, Lcom/android/calendar/EventInfoActivity;->initFacebookAttendeesCursor(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_d

    const/4 v3, 0x4

    move/from16 v0, v21

    if-ne v0, v3, :cond_2e

    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/calendar/EventInfoActivity;->updateAttendeesStr(IZ)Ljava/lang/String;

    move-result-object v4

    const v3, 0x7f0f008c

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v3, :cond_2d

    const v5, 0x7f0f008d

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0f008e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v5, 0x7f0f008f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    :goto_15
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    :goto_16
    if-eqz v12, :cond_34

    const v3, 0x7f070001

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v5, :cond_31

    aget-object v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_e
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\r"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_3

    :cond_10
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_4

    :cond_11
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_5

    :cond_12
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_6

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v14, 0x7f0a0045

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0044

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    :cond_14
    if-eqz v13, :cond_17

    const-string v3, "UTC"

    :goto_18
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-wide/from16 v21, v0

    invoke-static {v7, v5, v6, v3}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v0, v21

    invoke-static {v7, v0, v1, v3}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v4, 0x201

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_15

    const/16 v4, 0x281

    :cond_15
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v4, v3}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    cmp-long v5, v5, v21

    if-nez v5, :cond_1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    :goto_19
    if-nez v13, :cond_20

    if-eqz v8, :cond_20

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const v3, 0x7f0f0083

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    new-instance v3, Lcom/android/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v3, v8}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1a
    const v4, 0x7f0f0083

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v23

    move-wide/from16 v0, v21

    invoke-static {v7, v0, v1, v8}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v23

    invoke-static {v7, v0, v1, v8}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0x201

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_16

    const/16 v3, 0x281

    :cond_16
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2, v3, v8}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2, v3, v8}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    cmp-long v8, v21, v23

    if-nez v8, :cond_1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    :goto_1b
    const v7, 0x7f0f0084

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v4}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v4, 0x7f0f0084

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v7}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    if-nez v3, :cond_1f

    const v3, 0x7f0f0085

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    :goto_1c
    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_8

    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    new-instance v3, Lcom/android/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v3, v4}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1d
    const v5, 0x7f0f0080

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    const v5, 0x7f0f0080

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v3}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    move-object v3, v4

    goto/16 :goto_18

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v5, v3}, Lcom/android/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    :cond_19
    const v3, 0x7f0f0080

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    move-object v3, v4

    goto/16 :goto_18

    :cond_1a
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    goto/16 :goto_19

    :cond_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v21, 0x7f0a0045

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v21, 0x7f0a0044

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_19

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v4, v3}, Lcom/android/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1a

    :cond_1d
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    goto/16 :goto_1b

    :cond_1e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v21, 0x7f0a0045

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, " : "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v14, 0x7f0a0044

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1b

    :cond_1f
    const v4, 0x7f0f0085

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v3, 0x7f0f0085

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_1c

    :cond_20
    const v3, 0x7f0f0083

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    const v3, 0x7f0f0084

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    const v3, 0x7f0f0085

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_8

    :cond_21
    const v4, 0x7f0f0082

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v3, 0x7f0f0082

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_9

    :cond_22
    if-eqz v19, :cond_23

    const-string v3, "com.sec.android.app.snsaccountfacebook.account_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const v3, 0x7f0f001f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_b

    :cond_23
    const v3, 0x7f0f001f

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_b

    :cond_24
    const v3, 0x7f0f004c

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_c

    :cond_25
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_26
    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_27
    const/4 v3, 0x0

    goto/16 :goto_f

    :cond_28
    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_29
    const v3, 0x7f0f002b

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    move v3, v4

    move v4, v5

    goto/16 :goto_11

    :cond_2a
    const v5, 0x7f0f0055

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_12

    :cond_2b
    const v3, 0x7f0f0052

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_13

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v5, v6, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Landroid/content/CursorLoader;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mLoader:Landroid/content/CursorLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v3}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/calendar/EventInfoActivity;->initAttendeesCursor(Z)V

    goto/16 :goto_14

    :cond_2d
    const v4, 0x7f0f008d

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_15

    :cond_2e
    const v3, 0x7f0f008d

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/calendar/EventInfoActivity;->updateAttendees(IZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-eqz v3, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f008e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v4, 0x7f0f008c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_15

    :cond_2f
    const v4, 0x7f0f008c

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_15

    :cond_30
    const v3, 0x7f0f0052

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    const v3, 0x7f0f008c

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    const v3, 0x7f0f008d

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_16

    :cond_31
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    const/high16 v3, 0x7f07

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "event_id=%d AND (method=1 OR method=0)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/calendar/EventInfoActivity;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const v3, 0x7f0f0092

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v4, -0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    invoke-static {v4, v5, v8}, Lcom/android/calendar/EditEvent;->reminderMinuteToLabel(Ljava/util/ArrayList;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3d

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v4}, Lcom/android/calendar/EditEvent;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_1f
    const v4, 0x7f03001e

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v14, -0x2

    invoke-direct {v8, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x14

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v9, 0x14

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-eqz v9, :cond_32

    const/16 v9, 0xc

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_32
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1e

    :catchall_0
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_34
    const v4, 0x7f0f0090

    if-eqz v12, :cond_37

    const/4 v3, 0x0

    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    if-eqz v15, :cond_3c

    new-instance v3, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v3}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    :try_start_1
    invoke-virtual {v3, v15}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v15

    :goto_21
    if-eqz v4, :cond_3b

    new-instance v5, Landroid/text/format/Time;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_35

    const-string v6, "UTC"

    iput-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :cond_35
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v5, v6, v7}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v3, v5}, Lcom/android/calendarcommon/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v13}, Lcom/android/calendar/EventInfoActivity;->isCustomRecurrence(Lcom/android/calendarcommon/EventRecurrence;ZZ)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/calendar/EventRecurrenceFormatter;->getCustomRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    const v3, 0x7f0a0065

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_36
    :goto_22
    const v5, 0x7f0f0093

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v3}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    move-object v3, v4

    :goto_23
    const v4, 0x7f0f005b

    if-eqz v3, :cond_39

    const/4 v3, 0x0

    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    if-eqz v11, :cond_3a

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3a

    const v3, 0x7f0f0062

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v11}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v3, 0x7f0f0094

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->updateResponse()V

    goto/16 :goto_0

    :cond_37
    const/16 v3, 0x8

    goto/16 :goto_20

    :catch_0
    move-exception v4

    const/4 v4, 0x0

    goto :goto_21

    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/calendar/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    :cond_39
    const/16 v3, 0x8

    goto :goto_24

    :cond_3a
    const v3, 0x7f0f0094

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto :goto_25

    :cond_3b
    move-object v3, v4

    goto :goto_23

    :cond_3c
    move-object v3, v15

    goto :goto_23

    :cond_3d
    move-object v5, v4

    goto/16 :goto_1f

    :cond_3e
    move-object v14, v3

    move-object v3, v4

    goto/16 :goto_a

    :cond_3f
    move-object v7, v3

    goto/16 :goto_6

    :cond_40
    move-object v11, v3

    goto/16 :goto_3

    :cond_41
    move-object v4, v3

    goto/16 :goto_1
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/calendar/EventInfoActivity;->HORIZONTAL_FLING_THRESHOLD:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/calendar/EventInfoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/EventInfoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mTempResponseType:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/EventInfoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EventInfoActivity;->mTempResponseType:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/calendar/EventInfoActivity;)Lcom/android/calendar/EditResponseHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/EventInfoActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mViewHolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/EventInfoActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mDayMillis:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/EventInfoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/EventInfoActivity;->setAllDayEvents(Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoActivity;->setMoreEvents(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/calendar/EventInfoActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calendar/EventInfoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoActivity;->goTo(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/ViewSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/EventInfoActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoActivity;->UpdateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/EventInfoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/EventInfoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/EventInfoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/EventInfoActivity;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/EventInfoActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addAttendeesToLayout(ILjava/util/ArrayList;Landroid/widget/LinearLayout;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data1 IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41b0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x10

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0106

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v5, v7, v6, v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/high16 v5, 0x3f80

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mQuickContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f02002d

    packed-switch p4, :pswitch_data_0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v4, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030030

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_0
    const v0, 0x7f02002b

    goto :goto_2

    :pswitch_1
    const v0, 0x7f02002c

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addAttendeesToStr(ILjava/util/ArrayList;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    move v3, v1

    move-object v2, v0

    :goto_1
    if-ge v3, v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    const-string v1, ""

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private canAddReminders()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createExceptionResponse(Landroid/content/ContentResolver;JJI)V
    .locals 8

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "title"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "eventTimezone"

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "allDay"

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "calendar_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "dtstart"

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "dtend"

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "original_id"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "originalInstanceTime"

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "originalAllDay"

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "eventStatus"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "selfAttendeeStatus"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private doDelete()V
    .locals 7

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;I)V

    return-void
.end method

.method private doEdit()V
    .locals 4

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "beginTime"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "endTime"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-class v0, Lcom/android/calendar/EditEvent;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    return-void
.end method

.method private findResponseIndexFor(I)I
    .locals 3

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private goTo(Z)V
    .locals 14

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const/4 v7, -0x1

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    if-nez v0, :cond_0

    new-instance v12, Landroid/text/format/Time;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mDayMillis:J

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mDayMillis:J

    iget-wide v2, v12, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    :cond_0
    new-instance v13, Ljava/lang/StringBuffer;

    const-string v0, "visible=1 AND "

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endDay>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.android.calendar/instances"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "startDay ASC, begin ASC, title ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDay<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_4

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    :cond_4
    if-eqz p1, :cond_9

    add-int/lit8 v0, v9, -0x1

    if-ge v7, v0, :cond_1

    add-int/lit8 v7, v7, 0x1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_4
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_6
    iget-object v11, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v9, :cond_7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Event;

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v8, Lcom/android/calendar/Event;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    if-nez v8, :cond_4

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_9
    if-lez v7, :cond_1

    add-int/lit8 v7, v7, -0x1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    :cond_a
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-wide v2, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->setMapImage(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    const v0, 0x7f0f0055

    const/4 v1, 0x0

    invoke-direct {p0, v6, v0, v1}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    :cond_c
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/calendar/EventInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoActivity$2;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method private initAttendeesCursor(Z)V
    .locals 12

    const/4 v8, -0x1

    iput v8, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    const/4 v4, -0x1

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_5

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_5

    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :cond_5
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_e

    iput-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    :cond_6
    :goto_1
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    iget-object v8, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v4, v7

    :cond_8
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    iget-object v8, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v4, v7

    :cond_a
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    iget-object v8, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    move v4, v7

    :cond_c
    const/4 v8, -0x1

    if-ne v4, v8, :cond_2

    iget-wide v8, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->isLocalCalendar()Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x2

    if-ne v6, v8, :cond_f

    :cond_d
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    goto/16 :goto_0

    :cond_e
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    iput-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    packed-switch v7, :pswitch_data_0

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/calendar/EventInfoActivity$Attendee;

    invoke-direct {v9, v5, v2, v1}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_0
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/calendar/EventInfoActivity$Attendee;

    invoke-direct {v9, v5, v2, v1}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/calendar/EventInfoActivity$Attendee;

    invoke-direct {v9, v5, v2, v1}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initCalendarsCursor()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-void
.end method

.method private initEventCursor()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v4, v3

    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v1}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private initFacebookAttendeesCursor(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/Utils;->SNS_EVENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    :cond_0
    sget-object v2, Lcom/android/calendar/Utils;->SNS_RSVP_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/Utils;->SNS_RSVP_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_4

    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "event_member_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v2, "event_type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v8, Lcom/android/calendar/EventInfoActivity$Attendee;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v8, v10, v2, v4}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "attending"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "declined"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method private isCustomRecurrence(Lcom/android/calendarcommon/EventRecurrence;ZZ)Z
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-ne v2, v4, :cond_1

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-ne v2, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/android/calendar/EventInfoActivity;->isWeekdayEvent(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-nez v2, :cond_3

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    if-eq v2, v1, :cond_3

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-le v2, v1, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v2, :pswitch_data_0

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p2, p3}, Lcom/android/calendar/EventInfoActivity;->isWeekdayEvent(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_6

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_6

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-ne v2, v1, :cond_6

    goto :goto_0

    :pswitch_3
    iget-object v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    if-eqz v2, :cond_6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isExchangeCalendar()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.exchange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isLocalCalendar()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LOCAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWeekdayEvent(ZZ)Z
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const-string v3, "UTC"

    iput-object v3, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v1, v3, v4}, Landroid/text/format/Time;->set(J)V

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->normalize(Z)J

    :goto_0
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-eqz v2, :cond_2

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    :goto_1
    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const-string v3, "UTC"

    iput-object v3, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v1, v3, v4}, Landroid/text/format/Time;->set(J)V

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/android/calendar/vcal/VCalManager;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "Invite.vcs"

    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/calendar/EventInfoActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private relpy(Z)V
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    move v1, v4

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_2
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v0, v0

    move v6, v0

    :goto_3
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v6, v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    if-nez v6, :cond_8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.email"

    const-string v2, "com.android.email.activity.setup.AccountSetupBasics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    :goto_4
    return-void

    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.android.email"

    const-string v2, "com.android.email.activity.MessageCompose"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "text/x-vCalendar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0a0024

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    move v6, v4

    goto/16 :goto_3
.end method

.method private saveResponse(Landroid/content/ContentResolver;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->isLocalCalendar()Z

    move-result v7

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mHasAttendeeData:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v1, :cond_0

    :cond_2
    if-nez v7, :cond_0

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseType:I

    iget v2, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    sub-int v8, v1, v2

    if-lez v8, :cond_0

    sget-object v1, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    aget v6, v1, v8

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eq v6, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    if-nez v1, :cond_3

    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->updateResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->createExceptionResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    goto :goto_0

    :pswitch_2
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->updateResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendToParticipants()V
    .locals 5

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoActivity;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    const-string v4, "mailto:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "text/x-vCalendar"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALENDAR_SEND_CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendVia()V
    .locals 4

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vCalendar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "_id"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALENDAR_SEND_CHOOSER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setAllDayEvents(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;II)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    iget v4, v1, Lcom/android/calendar/Event;->startDay:I

    if-gt v4, p3, :cond_0

    iget v4, v1, Lcom/android/calendar/Event;->endDay:I

    if-lt v4, p2, :cond_0

    :cond_1
    iget v4, v1, Lcom/android/calendar/Event;->eventType:I

    if-eqz v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v4, v1, Lcom/android/calendar/Event;->startDay:I

    iget v5, v1, Lcom/android/calendar/Event;->endDay:I

    if-ge v4, v5, :cond_3

    iget-boolean v4, v1, Lcom/android/calendar/Event;->allDay:Z

    if-nez v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-boolean v4, v1, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private setMapImage(Landroid/view/View;)Z
    .locals 12

    const/4 v4, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->MAP_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    array-length v0, v10

    invoke-static {v10, v11, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    const v0, 0x7f0f0056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v11

    goto :goto_0
.end method

.method private setMoreEvents(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    const/4 v3, -0x1

    invoke-static {p1, v3, v3, p0}, Lcom/android/calendar/Utils;->setAllDayEvents(Ljava/util/ArrayList;IILandroid/content/Context;)I

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-wide v3, v0, Lcom/android/calendar/Event;->id:J

    iget-wide v5, p0, Lcom/android/calendar/EventInfoActivity;->mMoreEventId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getGroupId()I

    move-result v1

    :cond_1
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getGroupId()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setVisibilityCommon(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateAttendees(IZ)V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f030030

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mUpdateCounts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/EventInfoActivity;->mUpdateCounts:I

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToLayout(ILjava/util/ArrayList;Landroid/widget/LinearLayout;I)V

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToLayout(ILjava/util/ArrayList;Landroid/widget/LinearLayout;I)V

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToLayout(ILjava/util/ArrayList;Landroid/widget/LinearLayout;I)V

    :cond_3
    return-void
.end method

.method private updateAttendeesStr(IZ)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToStr(ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {p0, p1, v2, v3}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToStr(ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {p0, p1, v2, v3}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToStr(ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private updateRemindersVisibility()V
    .locals 4

    const/16 v1, 0x8

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderAdder:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->canAddReminders()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private updateResponse(Landroid/content/ContentResolver;JJI)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "attendeeStatus"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0f007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoScrollView;

    new-instance v2, Lcom/android/calendar/EventInfoActivity$7;

    invoke-direct {v2, p0}, Lcom/android/calendar/EventInfoActivity$7;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/calendar/EventInfoScrollView;->setOnFlingListener(Lcom/android/calendar/EventInfoScrollView$OnFlingListener;)V

    return-object v1
.end method

.method public onBackPressed()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoActivity;->saveResponse(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7f0a00fa

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->updateRemindersVisibility()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v0, "beginTime"

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    const-string v0, "endTime"

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    const-string v0, "event_day_time"

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mDayMillis:J

    const-string v0, "eventlist_type"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    const-string v0, "more_event_id"

    const-wide/16 v1, -0x1

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mMoreEventId:J

    const-string v0, "FROM_ALERT"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mFromAlert:Z

    const-string v0, "event_julianday"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    const-string v0, "attendeeStatus"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    new-instance v0, Lcom/android/calendar/EventLoader;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v3, "deleted=0 AND (eventStatus!=2 OR eventStatus is null)"

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->startManagingCursor(Landroid/database/Cursor;)V

    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->setContentView(I)V

    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->UpdateView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    new-instance v0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;

    invoke-direct {v0, p0, p0, v6}, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;-><init>(Lcom/android/calendar/EventInfoActivity;Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mPresenceQueryHandler:Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;

    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    new-instance v0, Lcom/android/calendar/EditResponseHelper;

    invoke-direct {v0, p0}, Lcom/android/calendar/EditResponseHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    const v0, 0x7f040003

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/EventInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoActivity$1;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mGestureDetector:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    if-nez v0, :cond_0

    const v0, 0x7f070009

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0108

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/EventInfoActivity$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/EventInfoActivity$3;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f07000a

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v5

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "event_id=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v6, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/android/calendar/EventInfoActivity;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v6, "attendeeName ASC, attendeeEmail ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    const v0, 0x7f0a002a

    invoke-interface {p1, v1, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202014c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const v0, 0x7f0a002b

    invoke-interface {p1, v4, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202014a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v0, 0x7f0a007b

    invoke-interface {p1, v5, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202016a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-boolean v0, Lcom/android/calendar/EventInfoActivity;->HAS_REPLY_MENU:Z

    if-nez v0, :cond_0

    const v0, 0x7f0a007d

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ac

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f0a0168

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200aa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x9

    const/16 v1, 0x9

    const v2, 0x7f0a0167

    invoke-interface {p1, v0, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ab

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v0

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    add-int/2addr v1, v0

    if-eq p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v2}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doDelete()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/EventInfoActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doEdit()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doDelete()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->sendVia()V

    goto :goto_0

    :pswitch_4
    sget-boolean v0, Lcom/android/calendar/EventInfoActivity;->HAS_REPLY_MENU:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->sendToParticipants()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoActivity;->relpy(Z)V

    goto :goto_0

    :pswitch_5
    sget-boolean v0, Lcom/android/calendar/EventInfoActivity;->HAS_REPLY_MENU:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->relpy(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v2}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    :cond_0
    iget v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/calendar/EventInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v3, 0x2

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyEvent:Z

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyEvent:Z

    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyEvent:Z

    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    const/4 v0, 0x3

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/4 v0, 0x3

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    const/4 v0, 0x7

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    sget-boolean v0, Lcom/android/calendar/EventInfoActivity;->HAS_REPLY_MENU:Z

    if-nez v0, :cond_0

    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-lez v0, :cond_2

    :goto_2
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-le v0, v1, :cond_4

    move v0, v1

    :goto_3
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-le v0, v1, :cond_5

    move v0, v1

    :goto_4
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-lez v0, :cond_6

    move v0, v1

    :goto_5
    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-lez v0, :cond_7

    :goto_6
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->reloadEvents()V

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initCalendarsCursor()V

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/EventInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method reloadEvents()V
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    const/4 v1, 0x1

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mDayMillis:J

    new-instance v5, Lcom/android/calendar/EventInfoActivity$8;

    invoke-direct {v5, p0, v2}, Lcom/android/calendar/EventInfoActivity$8;-><init>(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showContactInfo(Lcom/android/calendar/EventInfoActivity$Attendee;Landroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, p2, v0, v1, v4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "mailto"

    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/text/util/Rfc822Token;

    iget-object v2, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method updateResponse()V
    .locals 12

    const v11, 0x7f0f0088

    const/16 v10, 0x8

    const v9, 0x7f0f0089

    const/4 v8, 0x0

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->isLocalCalendar()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->isExchangeCalendar()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mHasAttendeeData:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v3, :cond_1

    :cond_0
    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0, v0, v9, v10}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    invoke-direct {p0, v0, v11, v10}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0, v9, v8}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    invoke-direct {p0, v0, v11, v8}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseContainer:Landroid/view/View;

    const v1, 0x7f0f008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseTextView:Landroid/widget/TextView;

    iput v8, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseValues:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eq v0, v7, :cond_3

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseValues:Ljava/util/ArrayList;

    iput v7, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    :cond_3
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    if-eq v0, v7, :cond_4

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v0

    :goto_1
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseType:I

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseValues:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EventInfoActivity;->mResponseType:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseContainer:Landroid/view/View;

    new-instance v1, Lcom/android/calendar/EventInfoActivity$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoActivity$6;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v0

    goto :goto_1
.end method
