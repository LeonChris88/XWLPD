.class public Lcom/android/calendar/EditEvent;
.super Landroid/app/Activity;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EditEvent$LengthFilter;,
        Lcom/android/calendar/EditEvent$InvalidCharsFiler;,
        Lcom/android/calendar/EditEvent$MyWatcher;,
        Lcom/android/calendar/EditEvent$Attendee;,
        Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;,
        Lcom/android/calendar/EditEvent$RepeatDateListener;,
        Lcom/android/calendar/EditEvent$DateClickListener;,
        Lcom/android/calendar/EditEvent$DateListener;,
        Lcom/android/calendar/EditEvent$DateChangeListener;,
        Lcom/android/calendar/EditEvent$TimeClickListener;,
        Lcom/android/calendar/EditEvent$TimeListener;
    }
.end annotation


# static fields
.field private static final ATTENDEES_DELETE_PREFIX:[Ljava/lang/String;

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static DEFAULT_DOMAIN:Ljava/lang/String;

.field private static EVENT_INDEX_SET_LUNAR:I

.field private static EVENT_PROJECTION:[Ljava/lang/String;

.field private static final LOCATIONMAP_PROJECTION:[Ljava/lang/String;

.field private static final MAP_PROJECTION:[Ljava/lang/String;

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;

.field public static mF:Ljava/util/Formatter;

.field public static mSB:Ljava/lang/StringBuilder;


# instance fields
.field private final ACCOUNT_LOGIN:I

.field private final CONTACTSCONTRACT_DATA_FIELD:I

.field private final CONTACTSCONTRACT_PROJECTION:[Ljava/lang/String;

.field private final CONTACTSCONTRACT_PROJECTION_DISPLAY_NAME:[Ljava/lang/String;

.field private final CONTACTSCONTRACT_PROJECTION_EMAIL_DATA:[Ljava/lang/String;

.field private final CONTACTSCONTRACT_PROJECTION_PHONE_NUMBER:[Ljava/lang/String;

.field private final CONTACTS_INDEX_DISPLAY_NAME:I

.field private final CONTACTS_INDEX_ID:I

.field private final CONTACTS_INDEX_REVERSE_NAME:I

.field private final CONTACTS_LOOKUP_KEY:I

.field private final CONTACTS_ROW_ID:I

.field private final COnTACTS_INDEX_DATA1:I

.field private final DELETE_ALARM:I

.field private final MAP_PICK_BITMAP:I

.field private final MAP_PICK_LOCATION:I

.field private final MAX_ATTENDEE_SIZE:I

.field private final MENU_GROUP_HIDE_OPTIONS:I

.field private final MENU_GROUP_SHOW_OPTIONS:I

.field private final MENU_ITEM_HIDE_OPTIONS:I

.field private final MENU_ITEM_SHOW_OPTIONS:I

.field private final PARTICIPANTS_PICK_CONTACT:I

.field private final PARTICIPANTS_PICK_GROUP:I

.field private final PARTICIPANTS_PICK_RECENTLY:I

.field private final SELECT_CALENDAR_ID:I

.field deleteContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isNoData:Z

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

.field private mAlarmCustomizeDialog:Landroid/app/Dialog;

.field private mAllDayCheckBox:Landroid/widget/CheckBox;

.field private mAllDayCheckText:Landroid/view/View;

.field private mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

.field private mAvailability:I

.field private mAvailabilityLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailabilityTextView:Landroid/widget/TextView;

.field private mCalendarId:I

.field private mCalendarPosition:I

.field private mCalendarsContainer:Landroid/view/View;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

.field private mDatePicker:Landroid/app/Dialog;

.field private mDescriptionEditText:Landroid/widget/EditText;

.field private mDialog:Landroid/app/Dialog;

.field private mDiscardButton:Landroid/widget/Button;

.field private mEndDateButton:Landroid/widget/Button;

.field private mEndDateHome:Landroid/widget/TextView;

.field private mEndTime:Landroid/text/format/Time;

.field private mEndTimeButton:Landroid/widget/Button;

.field private mEndTimeHome:Landroid/widget/TextView;

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

.field private mExtraOptions:Landroid/widget/LinearLayout;

.field private mFirstDayOfWeek:I

.field private mGoogleEventDialog:Landroid/app/AlertDialog;

.field private mGoogleEventDialogChecked:Z

.field private mGoogleLogin:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasAttendeeData:Z

.field private mHasRepeatCount:Z

.field private mInitialValues:Landroid/content/ContentValues;

.field private mIsExchangeCalendar:Z

.field private mIsGoogleCalendar:Z

.field private mIsGooglemailDomain:Z

.field private mIsLeapMonth:Z

.field private mIsLocalCalendar:Z

.field private mIsRingtone:Z

.field private mLatitude:I

.field private mLocationBitmap:Landroid/graphics/Bitmap;

.field private mLocationEditText:Landroid/widget/EditText;

.field private mLocationSearchButton:Landroid/widget/ImageButton;

.field private mLongitude:I

.field private mMap:Landroid/widget/ImageView;

.field private mMapContainer:Landroid/view/View;

.field private mMapDeleteButton:Landroid/widget/ImageView;

.field private mMessageAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageUri:Landroid/net/Uri;

.field private mModification:I

.field private mNewEventDialog:Landroid/app/AlertDialog;

.field private mNewEventDialogChecked:Z

.field private mNoCalendarsDialog:Landroid/app/AlertDialog;

.field private mOriginalAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EditEvent$Attendee;",
            ">;"
        }
    .end annotation
.end field

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

.field private mOwnerAccount:Ljava/lang/String;

.field private mParticipantsContactButton:Landroid/widget/ImageButton;

.field private mPresenceContainer:Landroid/view/View;

.field private mPrevCalendarId:J

.field private mPrevRepeatSelection:I

.field private mPrevRepeatUntilDate:Landroid/text/format/Time;

.field private mPrevRepeatUntilType:I

.field private mPrevRepeatUserSelection:I

.field private mPrivacyContainer:Landroid/view/View;

.field private mRecurrenceIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderAddButton:Landroid/widget/ImageButton;

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

.field private mReminderMinutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderNextIndex:I

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

.field private mRepeatArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatContainer:Landroid/view/View;

.field private mRepeatSelection:I

.field private mRepeatTypeTextView:Landroid/widget/TextView;

.field private mRepeatUntilDate:Landroid/text/format/Time;

.field private mRepeatUntilDateButton:Landroid/widget/Button;

.field private mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

.field private mRepeatUntilDayButton:Landroid/widget/Button;

.field private mRepeatUntilDayDialog:Landroid/app/Dialog;

.field private mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

.field private mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

.field private mRepeatUntilType:I

.field private mRepeatUserSelection:I

.field private mRingtoneIndex:I

.field private mRrule:Ljava/lang/String;

.field private mSaveButton:Landroid/widget/Button;

.field private mSaving:Z

.field public mScheduleButton:Landroid/widget/ImageView;

.field private mSelectedReminderItem:I

.field private mSelectedReminderValue:I

.field private mSetLunarCalendar:Z

.field private mStartDateButton:Landroid/widget/Button;

.field private mStartDateHome:Landroid/widget/TextView;

.field private mStartTime:Landroid/text/format/Time;

.field private mStartTimeButton:Landroid/widget/Button;

.field private mStartTimeHome:Landroid/widget/TextView;

.field private mStatus:Landroid/view/View;

.field private mStatusContainer:Landroid/view/View;

.field private mStatusLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusTypeText:Landroid/widget/TextView;

.field private mStatusValue:I

.field private mSyncId:Ljava/lang/String;

.field private mTimePicker:Landroid/app/Dialog;

.field private mTimezone:Ljava/lang/String;

.field private mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

.field private mTimezoneButton:Landroid/widget/Button;

.field private mTimezoneContainer:Landroid/widget/LinearLayout;

.field private mTimezoneDialog:Landroid/app/AlertDialog;

.field private mTimezoneFooterView:Landroid/widget/TextView;

.field private mTimezoneSeperator:Landroid/view/View;

.field private mTitleEditText:Landroid/widget/EditText;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;

.field private mUtillRepeatCount:I

.field private mVisibility:I

.field private mVisibilityLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    sput v0, Lcom/android/calendar/EditEvent;->EVENT_INDEX_SET_LUNAR:I

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EditEvent;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v3

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v4

    const-string v1, "attendee_contact_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/EditEvent;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "event_id=? AND attendeeEmail IN ("

    aput-object v1, v0, v3

    const-string v1, "event_id=? AND attendeePhoneNumber IN ("

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EditEvent;->ATTENDEES_DELETE_PREFIX:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "map"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/EditEvent;->LOCATIONMAP_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EditEvent;->MAP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v4, p0, Lcom/android/calendar/EditEvent;->MENU_GROUP_SHOW_OPTIONS:I

    iput v5, p0, Lcom/android/calendar/EditEvent;->MENU_GROUP_HIDE_OPTIONS:I

    iput v4, p0, Lcom/android/calendar/EditEvent;->MENU_ITEM_SHOW_OPTIONS:I

    iput v5, p0, Lcom/android/calendar/EditEvent;->MENU_ITEM_HIDE_OPTIONS:I

    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    iput v3, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    iput v3, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mNewEventDialogChecked:Z

    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialogChecked:Z

    iput-boolean v4, p0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mIsExchangeCalendar:Z

    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mIsGoogleCalendar:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iput v3, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mMessageAttendees:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mMessageUri:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    iput v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    iput v3, p0, Lcom/android/calendar/EditEvent;->mModification:I

    iput v3, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    iput v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    iput v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUserSelection:I

    iput v3, p0, Lcom/android/calendar/EditEvent;->mRingtoneIndex:I

    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mIsRingtone:Z

    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mGoogleLogin:Z

    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mSetLunarCalendar:Z

    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mIsLeapMonth:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/EditEvent;->mPrevCalendarId:J

    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/calendar/EditEvent;->mUtillRepeatCount:I

    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mHasRepeatCount:Z

    new-instance v0, Lcom/android/calendar/EditEvent$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/EditEvent$1;-><init>(Lcom/android/calendar/EditEvent;)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mSaving:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/calendar/EditEvent;->MAP_PICK_LOCATION:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/calendar/EditEvent;->MAP_PICK_BITMAP:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/calendar/EditEvent;->PARTICIPANTS_PICK_CONTACT:I

    const/16 v0, 0xc9

    iput v0, p0, Lcom/android/calendar/EditEvent;->PARTICIPANTS_PICK_GROUP:I

    const/16 v0, 0xca

    iput v0, p0, Lcom/android/calendar/EditEvent;->PARTICIPANTS_PICK_RECENTLY:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/calendar/EditEvent;->ACCOUNT_LOGIN:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/android/calendar/EditEvent;->SELECT_CALENDAR_ID:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/calendar/EditEvent;->DELETE_ALARM:I

    iput v5, p0, Lcom/android/calendar/EditEvent;->CONTACTS_LOOKUP_KEY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/EditEvent;->CONTACTS_ROW_ID:I

    iput v3, p0, Lcom/android/calendar/EditEvent;->CONTACTSCONTRACT_DATA_FIELD:I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->CONTACTSCONTRACT_PROJECTION_PHONE_NUMBER:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->CONTACTSCONTRACT_PROJECTION_EMAIL_DATA:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->CONTACTSCONTRACT_PROJECTION_DISPLAY_NAME:[Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/calendar/EditEvent;->MAX_ATTENDEE_SIZE:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_reverse"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->CONTACTSCONTRACT_PROJECTION:[Ljava/lang/String;

    iput v3, p0, Lcom/android/calendar/EditEvent;->CONTACTS_INDEX_ID:I

    iput v4, p0, Lcom/android/calendar/EditEvent;->CONTACTS_INDEX_DISPLAY_NAME:I

    iput v5, p0, Lcom/android/calendar/EditEvent;->CONTACTS_INDEX_REVERSE_NAME:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/EditEvent;->COnTACTS_INDEX_DATA1:I

    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->isNoData:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EditEvent;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->getAttendeesCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/EditEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateHomeTime()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mTimePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/EditEvent;Landroid/view/View;IIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/calendar/EditEvent;->processDataSetEvent(Landroid/view/View;IIIZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/calendar/EditEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/TimezoneAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/EditEvent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent;->setTimezone(I)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/calendar/EditEvent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent;->showAllTimezone(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/calendar/EditEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->finishWithResult()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/calendar/EditEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->sendToParticipants()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mModification:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/EditEvent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/calendar/EditEvent;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAvailabilityLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAvailabilityTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mVisibilityLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mVisibilityTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent;->hideSoftInput(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/calendar/EditEvent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/EditEvent;->mNewEventDialogChecked:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/android/calendar/EditEvent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialogChecked:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/calendar/EditEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->saveEvent()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mUtillRepeatCount:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/calendar/EditEvent;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/EditEvent;->setAlarmCustomize(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    return p1
.end method

.method static synthetic access$5600(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUserSelection:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUserSelection:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/EditEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateRepeats()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatTypeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilType:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilType:I

    return p1
.end method

.method static synthetic access$6200(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/calendar/EditEvent;Landroid/view/View;IIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/calendar/EditEvent;->processDataSetRepeatDate(Landroid/view/View;IIIZZ)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/android/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/calendar/EditEvent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/calendar/EditEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->setParticipantsSchedule()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/calendar/EditEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->checkleap()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/calendar/EditEvent;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mLatitude:I

    return p1
.end method

.method static synthetic access$7202(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mLongitude:I

    return p1
.end method

.method static synthetic access$7300(Lcom/android/calendar/EditEvent;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMapContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/android/calendar/EditEvent;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/android/calendar/EditEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isExchangeCalendar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/android/calendar/EditEvent;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->getExchangeCal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mCalendarPosition:I

    return v0
.end method

.method static synthetic access$7800(Lcom/android/calendar/EditEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    return v0
.end method

.method static synthetic access$7900(Lcom/android/calendar/EditEvent;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/EditEvent;->addReminder(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/EditEvent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/calendar/EditEvent;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent;->setAllday(Z)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/calendar/EditEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->showTimezoneDialog()V

    return-void
.end method

.method static synthetic access$8402(Lcom/android/calendar/EditEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderValue:I

    return p1
.end method

.method static synthetic access$8500(Lcom/android/calendar/EditEvent;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderAddButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    return-void
.end method

.method private addAttendee(Lcom/android/calendar/EditEvent$Attendee;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->getAttendeesCount()I

    move-result v0

    const-string v1, ""

    const/16 v4, 0x14

    if-gt v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EditEvent$Attendee;

    iget-object v5, v0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    iput v2, v0, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    invoke-virtual {v0}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const v0, 0x7f0a00b0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    move v1, v3

    goto :goto_0
.end method

.method private addRecurrenceRule(Landroid/content/ContentValues;)V
    .locals 7

    const-wide/32 v5, 0x5265c00

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {p0, v0}, Lcom/android/calendar/EditEvent;->updateRecurrenceRule(Landroid/text/format/Time;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "rrule"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    sub-long/2addr v0, v2

    add-long/2addr v0, v5

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "duration"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private addReminder(IZ)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderAddButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    iget v1, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v0, 0x7f0f005e

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f030016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0f0038

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    invoke-static {v2, p1, v3}, Lcom/android/calendar/EditEvent;->reminderMinuteToLabel(Ljava/util/ArrayList;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {p0, p1, v4}, Lcom/android/calendar/EditEvent;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/calendar/EditEvent$72;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$72;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0039

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/calendar/EditEvent$73;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$73;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v4

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    rem-int v0, v1, v0

    goto :goto_1
.end method

.method private checkTimeDependentFields(Landroid/content/ContentValues;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v2, "beginTime"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v2, "endTime"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v2, "allDay"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v7, "rrule"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v8, "eventTimezone"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v2, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-string v2, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string v13, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    if-eqz v7, :cond_3

    const-string v15, "COUNT"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    cmp-long v15, v3, v9

    if-nez v15, :cond_4

    cmp-long v5, v5, v11

    if-nez v5, :cond_4

    if-ne v1, v2, :cond_4

    invoke-static {v7, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v8, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_0

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/EditEvent;->mModification:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v5, v3, v9

    if-eqz v5, :cond_5

    sub-long v3, v9, v3

    add-long/2addr v1, v3

    :cond_5
    const-string v3, "dtstart"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2
.end method

.method private checkleap()V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preferences_confirm_leap_event"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    :cond_0
    return-void
.end method

.method static constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    rem-int/lit8 v0, p1, 0x3c

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const v0, 0x7f0c0001

    :goto_0
    invoke-virtual {v1, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0a00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/high16 v0, 0x7f0c

    goto :goto_0

    :cond_1
    rem-int/lit16 v0, p1, 0x5a0

    if-eqz v0, :cond_2

    div-int/lit8 p1, p1, 0x3c

    const v0, 0x7f0c0002

    goto :goto_0

    :cond_2
    rem-int/lit16 v0, p1, 0x2760

    if-eqz v0, :cond_3

    div-int/lit16 p1, p1, 0x5a0

    const v0, 0x7f0c0003

    goto :goto_0

    :cond_3
    div-int/lit16 p1, p1, 0x2760

    const v0, 0x7f0c0004

    goto :goto_0
.end method

.method private createAlarmCustomizeDialog()Landroid/app/Dialog;
    .locals 5

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0f0011

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a00ae

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0a00b8

    new-instance v4, Lcom/android/calendar/EditEvent$44;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/calendar/EditEvent$44;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0086

    new-instance v2, Lcom/android/calendar/EditEvent$43;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$43;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$42;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$42;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createRepeatCustomizeDialog()Landroid/app/Dialog;
    .locals 4

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0097

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0200ae

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00b8

    new-instance v3, Lcom/android/calendar/EditEvent$37;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/EditEvent$37;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0086

    new-instance v2, Lcom/android/calendar/EditEvent$36;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$36;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/calendar/EditEvent$38;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$38;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/calendar/EditEvent$39;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$39;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createRepeatUntilDialog()Landroid/app/Dialog;
    .locals 7

    const/4 v2, 0x0

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030029

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const v0, 0x7f0f00c1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    new-instance v3, Lcom/android/calendar/EditEvent$48;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$48;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f00c2

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    new-instance v3, Lcom/android/calendar/EditEvent$49;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$49;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f00c3

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    new-instance v3, Lcom/android/calendar/EditEvent$50;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$50;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a0075

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0097

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$52;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$52;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0076

    new-instance v2, Lcom/android/calendar/EditEvent$51;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$51;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private finishWithResult()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "date"

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "allday"

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/EditEvent;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    return-void
.end method

.method private getAttendeesCount()I
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getContentValuesFromUi()Landroid/content/ContentValues;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    if-eqz v10, :cond_2

    const-string v7, "UTC"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    iput v2, v1, Landroid/text/format/Time;->hour:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    iput v2, v1, Landroid/text/format/Time;->minute:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    iput v2, v1, Landroid/text/format/Time;->second:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iput-object v7, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    iput v2, v1, Landroid/text/format/Time;->hour:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    iput v2, v1, Landroid/text/format/Time;->minute:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    iput v2, v1, Landroid/text/format/Time;->second:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iput-object v7, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    int-to-long v1, v1

    move-object v8, v7

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v6, v18

    move-wide/from16 v4, v16

    move-wide/from16 v20, v1

    move-wide/from16 v2, v20

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v14, 0x6

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v14, v1

    cmp-long v1, v14, v2

    if-eqz v1, :cond_0

    :cond_0
    :goto_1
    const-string v1, "calendar_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "eventTimezone"

    invoke-virtual {v13, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v13, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "allDay"

    if-eqz v10, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "dtstart"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "dtend"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "description"

    invoke-virtual {v13, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "availability"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "contactEventType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "eventLocation"

    invoke-virtual {v13, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "latitude"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mLatitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "longitude"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mLongitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    add-int/lit8 v1, v1, 0x1

    :goto_3
    const-string v2, "accessLevel"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "availability"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mAvailability:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v2, "calendar_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v8, v7

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v6, v18

    move-wide/from16 v4, v16

    move-wide/from16 v20, v1

    move-wide/from16 v2, v20

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iput-object v7, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iput-object v7, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v2, "calendar_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v8, v7

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v6, v18

    move-wide/from16 v4, v16

    move-wide/from16 v20, v1

    move-wide/from16 v2, v20

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    int-to-long v1, v1

    move-object v8, v7

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v6, v18

    move-wide/from16 v4, v16

    move-wide/from16 v20, v1

    move-wide/from16 v2, v20

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    goto/16 :goto_3
.end method

.method private getExchangeCal()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.exchange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private hideSoftInput()V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private hideSoftInput(Landroid/app/Dialog;)V
    .locals 4

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method private initAlarmCustomizeDialog(Landroid/app/AlertDialog;)V
    .locals 12

    const/16 v11, 0x2760

    const/4 v8, -0x1

    invoke-virtual {p1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    const v0, 0x7f0f0011

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    const v0, 0x7f0f0010

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    const-string v0, ""

    iget v1, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderValue:I

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v2, 0x7f0a00a9

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00aa

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a00ab

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v9, 0x7f0a00ac

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-lez v1, :cond_8

    const/16 v9, 0x3c

    if-ge v1, v9, :cond_0

    move-object v8, v2

    move v9, v1

    :goto_0
    new-instance v0, Lcom/android/calendar/EditEvent$45;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EditEvent$45;-><init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-lez v9, :cond_6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2
    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    const/high16 v0, 0x1000

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setInputType(I)V

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-instance v0, Lcom/android/calendar/EditEvent$46;

    invoke-direct {v0, p0, v7, v10}, Lcom/android/calendar/EditEvent$46;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/android/calendar/EditEvent$47;

    invoke-direct {v0, p0, v7}, Lcom/android/calendar/EditEvent$47;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/EditText;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    const/16 v9, 0x5a0

    if-ge v1, v9, :cond_2

    rem-int/lit8 v0, v1, 0x3c

    if-eqz v0, :cond_1

    move-object v8, v2

    move v9, v1

    goto :goto_0

    :cond_1
    div-int/lit8 v0, v1, 0x3c

    move-object v8, v3

    move v9, v0

    goto :goto_0

    :cond_2
    if-ge v1, v11, :cond_4

    rem-int/lit16 v0, v1, 0x5a0

    if-eqz v0, :cond_3

    div-int/lit8 v0, v1, 0x3c

    move-object v8, v3

    move v9, v0

    goto :goto_0

    :cond_3
    div-int/lit16 v0, v1, 0x5a0

    move-object v8, v4

    move v9, v0

    goto :goto_0

    :cond_4
    if-lt v1, v11, :cond_8

    rem-int/lit16 v0, v1, 0x2760

    if-eqz v0, :cond_5

    div-int/lit16 v0, v1, 0x5a0

    move-object v8, v4

    move v9, v0

    goto/16 :goto_0

    :cond_5
    div-int/lit16 v0, v1, 0x2760

    move-object v8, v5

    move v9, v0

    goto/16 :goto_0

    :cond_6
    const-string v0, ""

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :cond_8
    move v9, v8

    move-object v8, v0

    goto/16 :goto_0
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v8, 0x0

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "eventLocation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "rrule"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v1, v0}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    :cond_3
    const-string v0, "beginTime"

    invoke-virtual {p1, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "endTime"

    invoke-virtual {p1, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "allDay"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DatefromEmail start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " all: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v5, v0, v8

    if-eqz v5, :cond_4

    cmp-long v5, v2, v8

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-direct {p0, v4}, Lcom/android/calendar/EditEvent;->setAllday(Z)V

    :cond_5
    return-void
.end method

.method private initMultiAutoCompleteTextView(I)Lcom/android/calendar/EnterActionMultiEdit;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EnterActionMultiEdit;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {v0, v1}, Lcom/android/calendar/EnterActionMultiEdit;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;

    invoke-direct {v1}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/calendar/EnterActionMultiEdit;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    new-instance v1, Lcom/android/calendar/EditEvent$MyWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/EditEvent$MyWatcher;-><init>(Lcom/android/calendar/EditEvent;Lcom/android/calendar/EditEvent$1;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/EnterActionMultiEdit;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v0
.end method

.method private initRepeatUntilDialog(Landroid/app/Dialog;)V
    .locals 8

    const/16 v7, 0x7f4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0f00c1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    const v0, 0x7f0f00c2

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    const v0, 0x7f0f000a

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateButton:Landroid/widget/Button;

    const v0, 0x7f0f00c3

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    const v0, 0x7f0f00c4

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayButton:Landroid/widget/Button;

    iget v4, p0, Lcom/android/calendar/EditEvent;->mUtillRepeatCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/calendar/EditEvent$53;

    invoke-direct {v4, p0}, Lcom/android/calendar/EditEvent$53;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07001e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    if-eqz v4, :cond_0

    array-length v5, v4

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    aget-object v0, v4, v0

    invoke-virtual {v5, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    iget v4, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    if-ne v0, v4, :cond_7

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_2
    :goto_1
    new-instance v3, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "date_format"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    iget v2, v3, Landroid/text/format/Time;->year:I

    if-le v2, v7, :cond_4

    iput v7, v3, Landroid/text/format/Time;->year:I

    const/16 v2, 0xb

    iput v2, v3, Landroid/text/format/Time;->month:I

    const/16 v2, 0x1f

    iput v2, v3, Landroid/text/format/Time;->monthDay:I

    :cond_4
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v0, v3, v4, v1}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/EditEvent$54;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$54;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_0
    move v0, v1

    goto/16 :goto_0

    :pswitch_1
    move v0, v2

    goto/16 :goto_0

    :pswitch_2
    move v0, v3

    goto/16 :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v3, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    packed-switch v0, :pswitch_data_1

    :goto_3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_8
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v3, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x6

    iput v3, v0, Landroid/text/format/Time;->month:I

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->year:I

    goto :goto_3

    :pswitch_7
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Landroid/text/format/Time;->year:I

    goto :goto_3

    :cond_9
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private isCustomRecurrence()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-le v2, v1, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v2, :pswitch_data_0

    :cond_5
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_5

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-ne v2, v1, :cond_5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private isEmpty()Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isExchangeCalendar()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

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

.method private isGoogleCalendar()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isLocalCalendar()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/calendar/EditEvent;->mCalendarPosition:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOCAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isOverlap()Z
    .locals 10

    const-wide/32 v8, 0x5265c00

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    div-long/2addr v3, v8

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    div-long/2addr v5, v8

    sub-long v0, v3, v5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    if-ne v3, v7, :cond_0

    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-gtz v3, :cond_6

    :cond_0
    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_1
    const-wide/16 v3, 0x7

    cmp-long v3, v0, v3

    if-gtz v3, :cond_6

    :cond_2
    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    const-wide/16 v3, 0xe

    cmp-long v3, v0, v3

    if-gtz v3, :cond_6

    :cond_3
    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    :cond_4
    const-wide/16 v3, 0x1f

    cmp-long v3, v0, v3

    if-gtz v3, :cond_6

    :cond_5
    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    const-wide/16 v3, 0x164

    cmp-long v3, v0, v3

    if-lez v3, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method private isWeekdayEvent()Z
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateReminder()V
    .locals 3

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/EditEvent;->addReminder(IZ)Z

    goto :goto_0
.end method

.method private populateRepeats()V
    .locals 14

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    :goto_0
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const/4 v5, 0x2

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x3

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x4

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const/4 v5, 0x5

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const/4 v5, 0x6

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const/4 v5, 0x7

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const v0, 0x7f070008

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isCustomRecurrence()Z

    move-result v8

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v3

    new-instance v9, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    const v5, 0x7f0a005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f0a005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/calendar/EditEvent;->mSetLunarCalendar:Z

    if-nez v3, :cond_0

    const v3, 0x7f0a005e

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const v3, 0x7f0a005f

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "%A"

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0a00c8

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "%A"

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/android/calendar/EditEvent;->mSetLunarCalendar:Z

    if-nez v3, :cond_1

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x7

    const v5, 0x7f0a0060

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v0, v0, v3

    aput-object v0, v6, v7

    const/4 v0, 0x1

    iget v3, v1, Landroid/text/format/Time;->weekDay:I

    aget-object v2, v2, v3

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, v1, Landroid/text/format/Time;->monthDay:I

    const v2, 0x7f0a0063

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsLeapMonth:Z

    if-nez v0, :cond_3

    const v0, 0x7f0a0064

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/calendar/util/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x80

    :cond_2
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v7, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v0, p0

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/util/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-static {v0, v1}, Lcom/android/calendar/EventRecurrenceFormatter;->getCustomRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v10, p0, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    iput-object v9, p0, Lcom/android/calendar/EditEvent;->mRepeatArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz v8, :cond_a

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_5
    :goto_1
    if-ltz v0, :cond_6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    :goto_2
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    :cond_7
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    :cond_8
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRepeatTypeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_9
    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v1, v1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v0}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_c
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v0}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populateTimezone()V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/calendar/EditEvent$70;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$70;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070020

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v2, :cond_3

    const/16 v2, 0x2d

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    int-to-long v6, v4

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v2, 0xea60

    div-int v2, v4, v2

    rem-int/lit8 v2, v2, 0x3c

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v3, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    const v1, 0x7f0a00d1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->setVariableTimezone()V

    return-void

    :cond_3
    const/16 v2, 0x2b

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private populateWhen()V
    .locals 7

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v3, v5}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v1, v5}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v3, v5}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v1, v5}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$DateClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$DateClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$TimeClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$TimeClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private prepareRepeatCustomizeDialog(Landroid/app/AlertDialog;)V
    .locals 4

    const v0, 0x7f0f00c5

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/EditEvent$40;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/EditEvent$40;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Lcom/android/calendar/EditEvent$41;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/EditEvent$41;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/EditText;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processDataSetEvent(Landroid/view/View;IIIZZ)V
    .locals 15

    iget-object v10, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    new-instance v7, Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_4

    iget v12, v4, Landroid/text/format/Time;->year:I

    iget v13, v10, Landroid/text/format/Time;->year:I

    sub-int v11, v12, v13

    iget v12, v4, Landroid/text/format/Time;->month:I

    iget v13, v10, Landroid/text/format/Time;->month:I

    sub-int v6, v12, v13

    iget v12, v4, Landroid/text/format/Time;->monthDay:I

    iget v13, v10, Landroid/text/format/Time;->monthDay:I

    sub-int v5, v12, v13

    invoke-virtual {v7, v10}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    move/from16 v0, p2

    iput v0, v7, Landroid/text/format/Time;->year:I

    move/from16 v0, p3

    iput v0, v7, Landroid/text/format/Time;->month:I

    move/from16 v0, p4

    iput v0, v7, Landroid/text/format/Time;->monthDay:I

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    invoke-static {v7}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v12

    if-nez v12, :cond_0

    const v12, 0x7f0a00a0

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    add-int v12, p2, v11

    iput v12, v1, Landroid/text/format/Time;->year:I

    add-int v12, p3, v6

    iput v12, v1, Landroid/text/format/Time;->month:I

    add-int v12, p4, v5

    iput v12, v1, Landroid/text/format/Time;->monthDay:I

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-static {v1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v12

    if-nez v12, :cond_1

    const v12, 0x7f0a00a0

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v10, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    invoke-virtual {v4, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/calendar/EditEvent;->mSetLunarCalendar:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/calendar/EditEvent;->mIsLeapMonth:Z

    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Landroid/text/format/Time;->set(J)V

    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateRepeats()V

    :cond_3
    :goto_1
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v12, v8, v9, v13}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v12, v2, v3, v13}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v12, v2, v3, v13}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateHomeTime()V

    goto :goto_0

    :cond_4
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    move/from16 v0, p2

    iput v0, v1, Landroid/text/format/Time;->year:I

    move/from16 v0, p3

    iput v0, v1, Landroid/text/format/Time;->month:I

    move/from16 v0, p4

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-static {v1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v12

    if-nez v12, :cond_5

    const v12, 0x7f0a00a0

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    invoke-virtual {v4, v10}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v4, v10}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    move-wide v2, v8

    const v12, 0x7f0a00a1

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    goto :goto_1
.end method

.method private processDataSetRepeatDate(Landroid/view/View;IIIZZ)V
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p3, p2}, Landroid/text/format/Time;->set(III)V

    invoke-static {v1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a00a0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    if-le v0, v2, :cond_1

    const v0, 0x7f0a00a2

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    const-string v0, "EditEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "year:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " month:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " monthDay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput p2, v0, Landroid/text/format/Time;->year:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput p3, v0, Landroid/text/format/Time;->month:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput p4, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "MM-dd-yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v0, v3, v4, v1}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private reminderItemsToMinutes()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v4, 0x7f0f0038

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method static reminderMinuteToLabel(Ljava/util/ArrayList;ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private save()I
    .locals 17

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    :goto_0
    return v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentValuesFromUi()Landroid/content/ContentValues;

    move-result-object v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    const-string v2, "availabilityStatus"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/calendar/TimezoneAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    :cond_2
    const-string v2, "organizer"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->reminderItemsToMinutes()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    const/4 v2, 0x1

    :goto_2
    if-nez v11, :cond_8

    const-string v3, "hasAttendeeData"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v3, "dtend"

    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    const/4 v2, 0x1

    :goto_3
    move v7, v3

    move v6, v2

    :goto_4
    const/4 v2, -0x1

    if-eq v7, v2, :cond_12

    const/4 v2, 0x1

    move v8, v2

    :goto_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v2}, Lcom/android/calendar/EnterActionMultiEdit;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v4, v3

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/EditEvent$Attendee;

    invoke-virtual {v3}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-virtual {v2}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getDisplay()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v4, 0x1

    move v3, v4

    :goto_8
    move v4, v3

    goto :goto_7

    :cond_6
    const-string v2, "availabilityStatus"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v2, "dtend"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :cond_9
    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v3

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v4, "rrule"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    const-string v2, "dtend"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v3

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mModification:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "beginTime"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_c

    const-string v4, "original_sync_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xb

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v4, "originalInstanceTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "allDay"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_9
    const-string v3, "originalAllDay"

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "hasAttendeeData"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    move v7, v2

    goto/16 :goto_4

    :cond_d
    const/4 v2, 0x0

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    goto :goto_a

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mModification:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v2}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-nez v2, :cond_10

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "hasAttendeeData"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    move v7, v2

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    const-string v2, "dtend"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    move v7, v3

    goto/16 :goto_4

    :cond_12
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_5

    :cond_13
    if-nez v4, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_32

    new-instance v3, Lcom/android/calendar/EditEvent$Attendee;

    invoke-virtual {v2}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v2, v13}, Lcom/android/calendar/EditEvent$Attendee;-><init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v3

    :goto_b
    if-eqz v2, :cond_14

    const/16 v3, 0x1000

    iput v3, v2, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_14
    const/4 v1, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_16
    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/EditEvent$Attendee;

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v4, v3

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    invoke-virtual {v3}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v14, :cond_17

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_17

    iget-object v15, v2, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    :cond_17
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_31

    iget-object v14, v2, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    :cond_18
    const/4 v4, 0x1

    move v3, v4

    :goto_e
    move v4, v3

    goto :goto_d

    :cond_19
    if-nez v4, :cond_16

    iget v3, v2, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_16

    iget v3, v2, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    goto :goto_c

    :cond_1a
    const/16 v3, 0x8

    iput v3, v2, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    goto :goto_c

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v2, :cond_1e

    if-eqz v8, :cond_1e

    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/EditEvent;->mCalendarPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1d
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1e

    const-string v3, "attendeeEmail"

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attendeeRelationship"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "attendeeType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "attendeeStatus"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "event_id"

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v2, :cond_25

    if-nez v8, :cond_1f

    if-eqz v11, :cond_25

    :cond_1f
    if-eqz v11, :cond_20

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    move-wide v3, v2

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v12, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lcom/android/calendar/EditEvent;->ATTENDEES_DELETE_PREFIX:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    aput-object v2, v13, v15

    const-string v2, ")"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_20
    const-wide/16 v2, -0x1

    move-wide v3, v2

    goto :goto_f

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v2}, Lcom/android/calendar/ComposeHeaderView;->validateEmailAddress()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-boolean v2, v2, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v1}, Lcom/android/calendar/ComposeHeaderView;->setFocusToRecipient()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/calendar/ComposeHeaderView;->getRecipients(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_25

    const-string v5, "/~/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    aget-object v5, v5, v12

    const-string v12, "/,/"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v5, "/~/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aget-object v2, v2, v5

    const-string v5, "/,/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x0

    :goto_11
    array-length v5, v12

    if-ge v2, v5, :cond_25

    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    const-string v5, "attendeeName"

    aget-object v14, v12, v2

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v13, v2

    if-eqz v5, :cond_23

    const-string v5, "attendeeEmail"

    aget-object v14, v13, v2

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const-string v5, "attendee_contact_id"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "attendeeRelationship"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "attendeeType"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "attendeeStatus"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v8, :cond_24

    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v14, "event_id"

    invoke-virtual {v5, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    :goto_12
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_24
    const-string v5, "event_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    goto :goto_12

    :cond_25
    if-eqz v8, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static {v1, v7, v2, v3, v6}, Lcom/android/calendar/EditEvent;->saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    :cond_26
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2f

    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v3, "map"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    if-nez v8, :cond_2e

    if-eqz v11, :cond_2e

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v5, v2

    const-string v2, "event_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EditEvent;->MAP_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    :goto_14
    if-eqz v3, :cond_27

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_27
    :goto_15
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_16
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.calendar"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    :goto_17
    if-nez v8, :cond_29

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "organizer"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "event_id=%d AND attendeeEmail=\"%s\""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_29
    if-eqz v8, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    if-eqz v2, :cond_2a

    if-eqz v1, :cond_2a

    array-length v2, v1

    if-lez v2, :cond_2a

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mMessageUri:Landroid/net/Uri;

    :cond_2a
    if-eqz v1, :cond_2b

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>EVENT_CREATED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v1, v4

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " </GATE-M>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_2b
    move v1, v9

    goto/16 :goto_0

    :cond_2c
    if-eqz v11, :cond_26

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/EditEvent;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    goto/16 :goto_13

    :cond_2d
    sget-object v2, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    goto/16 :goto_14

    :cond_2e
    sget-object v2, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "event_id"

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_15

    :cond_2f
    if-nez v8, :cond_28

    if-eqz v11, :cond_28

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EditEvent;->MAP_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_30

    sget-object v3, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    if-eqz v2, :cond_28

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_16

    :catch_0
    move-exception v2

    const-wide/16 v3, 0x32

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_18
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.calendar"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v1

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/OperationApplicationException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_17

    :catch_2
    move-exception v1

    const v1, 0x7f0a00b7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x2

    goto/16 :goto_0

    :catch_3
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_18

    :catch_4
    move-exception v1

    const-string v2, "EditEvent"

    const-string v3, "Ignoring unexpected remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v9

    goto/16 :goto_0

    :catch_5
    move-exception v1

    const-string v2, "EditEvent"

    const-string v3, "Ignoring unexpected exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    move v1, v9

    goto/16 :goto_0

    :cond_31
    move v3, v4

    goto/16 :goto_e

    :cond_32
    move-object v2, v3

    goto/16 :goto_b

    :cond_33
    move v3, v4

    goto/16 :goto_8

    :cond_34
    move v2, v4

    goto/16 :goto_2
.end method

.method private saveDefaultCalendar()V
    .locals 6

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/android/calendar/EditEvent;->mPrevCalendarId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "preference_default_calendar_sync_account"

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "preference_default_calendar_owner_account"

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "preference_default_calendar_sync_account_type"

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private saveEvent()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mSaving:Z

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->save()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/calendar/EditEvent;->mSaving:Z

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->saveDefaultCalendar()V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMessageAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a00fa

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->finishWithResult()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0a00a3

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p3 .. p4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-nez p5, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    const-string v12, "event_id=?"

    const/4 v13, 0x1

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v1, v13

    sget-object v13, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v12, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v13, -0x1

    if-ne v9, v13, :cond_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    const-string v13, "minutes"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "method"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "event_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v13, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v13, -0x1

    if-eq v8, v13, :cond_4

    const/4 v3, 0x1

    :cond_5
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method static saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez p4, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    sget-object v8, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v8, "event_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    const-string v8, "minutes"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "method"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v8, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v8, "event_id"

    invoke-virtual {v0, v8, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private sendToParticipants()V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMessageAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/android/calendar/EditEvent;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

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

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setAlarmCustomize(ILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0038

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00aa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a00ab

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a00ac

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    mul-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1, v6}, Lcom/android/calendar/EditEvent;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    mul-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    mul-int/lit16 v3, p1, 0x5a0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    mul-int/lit16 v1, p1, 0x5a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    mul-int/lit16 v3, p1, 0x2760

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    mul-int/lit16 v1, p1, 0x2760

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setAllday(Z)V
    .locals 8

    const/16 v6, 0x7f4

    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_2

    const-string v0, "UTC"

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->setVariableTimezone()V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneSeperator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateTimezone()V

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateHomeTime()V

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    new-instance v0, Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/EditEvent;->setTimezone(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    if-le v0, v6, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/16 v2, 0x3b

    const/16 v3, 0x17

    const/16 v4, 0x1f

    const/16 v5, 0xb

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneSeperator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    if-le v0, v6, :cond_6

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    :cond_6
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    goto :goto_1
.end method

.method private setCalendarData(I)V
    .locals 10

    const/4 v4, 0x0

    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput p1, p0, Lcom/android/calendar/EditEvent;->mCalendarPosition:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    iget-wide v1, p0, Lcom/android/calendar/EditEvent;->mPrevCalendarId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    int-to-long v1, v0

    iput-wide v1, p0, Lcom/android/calendar/EditEvent;->mPrevCalendarId:J

    :cond_4
    if-eq v0, v9, :cond_b

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/calendar/EditEvent;->setLunarEnable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_5

    const v0, -0x222223

    :cond_5
    const v1, -0x44000001

    and-int/2addr v1, v0

    const v0, 0x7f0f001a

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/EditEvent;->DEFAULT_DOMAIN:Ljava/lang/String;

    sget-object v1, Lcom/android/calendar/EditEvent;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v2, "googlemail.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/EditEvent;->mIsGooglemailDomain:Z

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/calendar/EditEvent;->mIsGooglemailDomain:Z

    if-eqz v1, :cond_6

    const-string v1, "gmail"

    const-string v2, "googlemail"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v1, "My calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    const v1, 0x7f0f004d

    invoke-direct {p0, v1, v0}, Lcom/android/calendar/EditEvent;->setTextCommon(ILjava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isLocalCalendar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isExchangeCalendar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsExchangeCalendar:Z

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isGoogleCalendar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsGoogleCalendar:Z

    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStatusContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsExchangeCalendar:Z

    if-eqz v0, :cond_c

    move v0, v6

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-boolean v1, p0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    if-eqz v1, :cond_d

    :goto_3
    invoke-virtual {v0, v7}, Lcom/android/calendar/ComposeHeaderView;->setVisibility(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->setScheduleButtonVisible()V

    goto/16 :goto_0

    :cond_b
    const-string v0, "local"

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/calendar/EditEvent;->setLunarEnable(Z)V

    goto/16 :goto_1

    :cond_c
    move v0, v7

    goto :goto_2

    :cond_d
    move v7, v6

    goto :goto_3
.end method

.method private setDate(Landroid/widget/TextView;JLjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0, p2, p3, p4}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setLocationMap()Z
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/EditEvent;->LOCATIONMAP_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    array-length v0, v8

    invoke-static {v8, v9, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMapContainer:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    goto :goto_0
.end method

.method private setLunarEnable(Z)V
    .locals 0

    return-void
.end method

.method private setParticipantsSchedule()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->showErrorMessage()V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/calendar/ComposeHeaderView;->getRecipients(Z)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "owner_account"

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "recipients"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "timezone"

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "start_time"

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "end_time"

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setTextCommon(ILjava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTime(Landroid/widget/TextView;JLjava/lang/String;)V
    .locals 3

    const/16 v0, 0x201

    invoke-static {p0}, Lcom/android/calendar/util/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v0, v0, 0x80

    :cond_0
    invoke-static {p0, p2, p3, v0, p4}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTimezone(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/TimezoneAdapter;->getCount()I

    move-result v1

    if-le p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->setVariableTimezone()V

    goto :goto_0
.end method

.method private setVariableTimezone()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    return-void
.end method

.method private showAllTimezone(Landroid/widget/ListView;)V
    .locals 4

    move-object v0, p1

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/TimezoneAdapter;->showAllTimezones()V

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/android/calendar/EditEvent$71;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/calendar/EditEvent$71;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showTimezoneDialog()V
    .locals 6

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/android/calendar/TimezoneAdapter;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move v0, v2

    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a00cc

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    new-instance v5, Lcom/android/calendar/EditEvent$3;

    invoke-direct {v5, p0}, Lcom/android/calendar/EditEvent$3;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0076

    new-instance v5, Lcom/android/calendar/EditEvent$2;

    invoke-direct {v5, p0}, Lcom/android/calendar/EditEvent$2;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    new-instance v4, Lcom/android/calendar/EditEvent$4;

    invoke-direct {v4, p0, v1}, Lcom/android/calendar/EditEvent$4;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/calendar/EditEvent$5;

    invoke-direct {v4, p0, v1}, Lcom/android/calendar/EditEvent$5;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateHomeTime()V
    .locals 15

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/android/calendar/util/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v6, 0x81

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v8, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v9, v0

    :goto_1
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v8, v1, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v1, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    move-object v0, p0

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/util/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v3, v7}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    sget-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v3, v7}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    if-eq v9, v8, :cond_5

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_2
    const/4 v6, 0x1

    if-eqz v11, :cond_1

    const/16 v6, 0x81

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v1, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    move-object v0, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/util/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    invoke-direct {p0, v0, v12, v13, v7}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    sget-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    invoke-direct {p0, v0, v12, v13, v7}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_2
    const/4 v0, 0x0

    move v8, v0

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    move v9, v0

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    move-object v8, v10

    goto :goto_2
.end method

.method private updateRecurrenceRule(Landroid/text/format/Time;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mSetLunarCalendar:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-ne v0, v6, :cond_e

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {p1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/16 v2, 0x7f4

    iput v2, v0, Landroid/text/format/Time;->year:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/16 v2, 0xb

    iput v2, v0, Landroid/text/format/Time;->month:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/16 v2, 0x1f

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->hour:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->minute:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->second:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput-boolean v6, v0, Landroid/text/format/Time;->allDay:Z

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const-string v2, "UTC"

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mHasRepeatCount:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    :cond_3
    :goto_4
    iput-boolean v1, p0, Lcom/android/calendar/EditEvent;->mHasRepeatCount:Z

    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v1, p0, Lcom/android/calendar/EditEvent;->mFirstDayOfWeek:I

    invoke-static {v1}, Lcom/android/calendarcommon/EventRecurrence;->calendarDay2Day(I)I

    move-result v1

    iput v1, v0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v0}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x4

    iput v2, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    goto/16 :goto_1

    :cond_6
    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v5, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    new-array v2, v5, [I

    new-array v3, v5, [I

    const/high16 v0, 0x2

    aput v0, v2, v1

    const/high16 v0, 0x4

    aput v0, v2, v6

    const/high16 v0, 0x8

    aput v0, v2, v4

    const/high16 v0, 0x10

    aput v0, v2, v7

    const/4 v0, 0x4

    const/high16 v4, 0x20

    aput v4, v2, v0

    move v0, v1

    :goto_5
    if-ge v0, v5, :cond_7

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v3, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isExchangeCalendar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    goto/16 :goto_1

    :cond_8
    if-ne v0, v7, :cond_9

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v5, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    new-array v0, v6, [I

    new-array v2, v6, [I

    iget v3, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v3}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v3

    aput v3, v0, v1

    aput v1, v2, v1

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, v3, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isExchangeCalendar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x4

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v5, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    new-array v0, v6, [I

    new-array v2, v6, [I

    iget v3, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v3}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v3

    aput v3, v0, v1

    aput v1, v2, v1

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, v3, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v4, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x6

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x6

    iput v2, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v1, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    new-array v0, v6, [I

    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    aput v2, v0, v1

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    goto/16 :goto_1

    :cond_b
    if-ne v0, v5, :cond_d

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x6

    iput v2, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v1, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    new-array v2, v6, [I

    new-array v3, v6, [I

    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_c

    const/4 v0, -0x1

    :cond_c
    aput v0, v3, v1

    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v0}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v0

    aput v0, v2, v1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v3, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x7

    iput v2, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v1, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    new-array v0, v6, [I

    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    aput v2, v0, v1

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    new-array v0, v6, [I

    iget v2, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/text/format/Time;->year:I

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/text/format/Time;->year:I

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, 0xa

    iput v2, v0, Landroid/text/format/Time;->year:I

    goto/16 :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, 0x32

    iput v2, v0, Landroid/text/format/Time;->year:I

    goto/16 :goto_2

    :cond_e
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-ne v0, v7, :cond_2

    iput-boolean v6, p0, Lcom/android/calendar/EditEvent;->mHasRepeatCount:Z

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mUtillRepeatCount:I

    iput v2, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    goto/16 :goto_3

    :cond_f
    new-instance v0, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const-string v2, "UTC"

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    iget-boolean v2, p0, Lcom/android/calendar/EditEvent;->mHasRepeatCount:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public contactAdd()V
    .locals 5

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isExchangeCalendar()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->getExchangeCal()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "additional"

    const-string v4, "email-multi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "app"

    const-string v4, "calendar"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "account"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v2, v0}, Lcom/android/calendar/EditEvent;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;
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

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/calendar/EditEvent;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const/4 v4, 0x1

    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-eq p2, v10, :cond_1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->requestFocus()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    :sswitch_2
    const-string v0, "latitude"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mLatitude:I

    const-string v0, "longitude"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mLongitude:I

    const-string v0, "location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "map"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMapContainer:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :sswitch_3
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "datatype"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "mode"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v7

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x1e

    if-le v1, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->setFocusToRecipient()V

    goto/16 :goto_0

    :cond_4
    if-eqz v5, :cond_5

    const-string v2, "onlineSearch"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-object v2, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v3

    :goto_3
    iget-object v8, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v8, v0, v3, v2, v7}, Lcom/android/calendar/ComposeHeaderView;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    const-string v2, "recent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lcom/android/calendar/Utils;->getNameByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-static {p0, v0}, Lcom/android/calendar/ConvNameEditText;->getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :sswitch_4
    const-string v1, "EVENT_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v8, -0x1

    cmp-long v1, v2, v8

    if-nez v1, :cond_8

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->requestFocus()Z

    goto/16 :goto_0

    :cond_8
    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    sget-object v2, Lcom/android/calendar/EditEvent;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id=? AND (attendeeRelationship<>2 or attendeeRelationship is null)"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_9

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->requestFocus()Z

    goto/16 :goto_0

    :cond_9
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_a
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->getAttendeesCount()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_e

    sget-object v0, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/android/calendar/EditEvent$Attendee;

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EditEvent$Attendee;-><init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct {p0, v0}, Lcom/android/calendar/EditEvent;->addAttendee(Lcom/android/calendar/EditEvent$Attendee;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v1}, Lcom/android/calendar/EnterActionMultiEdit;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_c

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/EnterActionMultiEdit;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->requestFocus()Z

    goto/16 :goto_0

    :cond_e
    const v0, 0x7f0a00b0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :sswitch_5
    const-string v0, "_id"

    invoke-virtual {p3, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v10, :cond_10

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v2, "calendar_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    const-string v1, "_id=%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-direct {p0, v7}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/calendar/EditEvent;->mCalendarPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "deleteAlarmIndices"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_0

    const v0, 0x7f0f005e

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    array-length v8, v6

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_11

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateReminder()V

    :cond_11
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v4, v7

    :goto_5
    if-ge v4, v8, :cond_13

    aget v9, v6, v4

    if-ne v9, v10, :cond_12

    :goto_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    :cond_12
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v9, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v9, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0xca -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_3
        0xca -> :sswitch_4
        0x190 -> :sswitch_5
        0x1f4 -> :sswitch_6
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->hideSoftInput()V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->save()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    :goto_1
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->saveDefaultCalendar()V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMessageAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0a00fa

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->finishWithResult()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_1

    :pswitch_3
    const v0, 0x7f0a00a3

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->hideSoftInput()V

    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mSaving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isOverlap()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->saveEvent()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->hideSoftInput()V

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->dismissDropDown()V

    :cond_1
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    invoke-static {v1, p1, v0}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimePicker:Landroid/app/Dialog;

    invoke-static {v1, p1, v0}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    invoke-static {v1, p1, v0}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    invoke-static {v1, p1, v0}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    const v1, 0x7f0f00c5

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView;->procToButtonMenu(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f00d5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    if-nez p1, :cond_1

    sget-boolean v2, Lcom/android/calendar/Utils;->CHECK_ACCOUNT:Z

    if-eqz v2, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.android.exchange"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v2, v2

    array-length v3, v3

    add-int/2addr v2, v3

    array-length v3, v4

    add-int/2addr v2, v3

    if-nez v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "authorities"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.android.calendar"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EditEvent;->mGoogleLogin:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->requestWindowFeature(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f030017

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->setContentView(I)V

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAccountManager:Landroid/accounts/AccountManager;

    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "eventLocation"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "allDay"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "hasAlarm"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "calendar_id"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "eventTimezone"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "rrule"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "_sync_id"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "availability"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "accessLevel"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "ownerAccount"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "hasAttendeeData"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "latitude"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "longitude"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "contactEventType"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "availabilityStatus"

    aput-object v4, v2, v3

    sput-object v2, Lcom/android/calendar/EditEvent;->EVENT_PROJECTION:[Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/android/calendar/ContactInfoCache;->init(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EditEvent;->mFirstDayOfWeek:I

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EditEvent;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->startManagingCursor(Landroid/database/Cursor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v2, 0x7f0f0013

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    const v2, 0x7f0f002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    const v2, 0x7f0f0062

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    const v2, 0x7f0f003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    const v2, 0x7f0f0042

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    const v2, 0x7f0f003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    const v2, 0x7f0f0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    const v2, 0x7f0f004a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckText:Landroid/view/View;

    const v2, 0x7f0f004b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    const v2, 0x7f0f004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsContainer:Landroid/view/View;

    const v2, 0x7f0f005a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mParticipantsContactButton:Landroid/widget/ImageButton;

    const v2, 0x7f0f0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mLocationSearchButton:Landroid/widget/ImageButton;

    const v2, 0x7f0f0055

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mMapContainer:Landroid/view/View;

    const v2, 0x7f0f0056

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mMap:Landroid/widget/ImageView;

    const v2, 0x7f0f0057

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mMapDeleteButton:Landroid/widget/ImageView;

    const v2, 0x7f0f005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatContainer:Landroid/view/View;

    const v2, 0x7f0f005d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatTypeTextView:Landroid/widget/TextView;

    const v2, 0x7f0f0063

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0064

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mPresenceContainer:Landroid/view/View;

    const v2, 0x7f0f0067

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mPrivacyContainer:Landroid/view/View;

    const v2, 0x7f0f0066

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAvailabilityTextView:Landroid/widget/TextView;

    const v2, 0x7f0f0069

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mVisibilityTextView:Landroid/widget/TextView;

    const v2, 0x7f0f0049

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    const v2, 0x7f0f0046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneSeperator:Landroid/view/View;

    const v2, 0x7f0f0047

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    const v2, 0x7f0f003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    const v2, 0x7f0f0045

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    const v2, 0x7f0f0044

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    const v2, 0x7f030034

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    const v2, 0x7f0f0060

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mReminderAddButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/calendar/ComposeHeaderView;

    const v2, 0x7f0f0022

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v2}, Lcom/android/calendar/ComposeHeaderView;-><init>(Lcom/android/calendar/EditEvent;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const v2, 0x7f0f004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStatusContainer:Landroid/view/View;

    const v2, 0x7f0f004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStatus:Landroid/view/View;

    const v2, 0x7f0f0051

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    const v2, 0x7f0f0028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mScheduleButton:Landroid/widget/ImageView;

    const-string v2, "beginTime"

    const-wide/16 v3, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v2, "endTime"

    const-wide/16 v3, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStatus:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$55;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$55;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mScheduleButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/calendar/EditEvent$56;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$56;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xf

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    move v8, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xe

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xa

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-nez v8, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x9

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x9

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    :goto_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v6, "beginTime"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v6, "endTime"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v7, "allDay"

    if-eqz v8, :cond_11

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v6, "rrule"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "calendar_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "eventLocation"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "latitude"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v7, 0x10

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "longitude"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v7, 0x11

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "contactEventType"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "organizer"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "eventTimezone"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->setLocationMap()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EditEvent;->mAvailability:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    :cond_9
    move v10, v9

    move v9, v8

    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-eqz v2, :cond_17

    if-eqz v9, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const-string v3, "UTC"

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v13, v14}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    const/16 v3, 0x7f4

    if-le v2, v3, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v6, 0x1f

    const/16 v7, 0xb

    const/16 v8, 0x7f4

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EditEvent;->mIsLeapMonth:Z

    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-eqz v2, :cond_1a

    if-eqz v9, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const-string v3, "UTC"

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    :cond_b
    new-instance v2, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/16 v3, 0x7f4

    iput v3, v2, Landroid/text/format/Time;->year:I

    new-instance v2, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatContainer:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$57;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$57;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mLocationSearchButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/calendar/EditEvent$58;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$58;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mMapDeleteButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/calendar/EditEvent$59;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$59;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mParticipantsContactButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/calendar/EditEvent$60;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$60;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsContainer:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$61;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$61;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mReminderAddButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/calendar/EditEvent$62;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$62;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/calendar/EmailAddressAdapter;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/calendar/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

    const v2, 0x7f0f0059

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->initMultiAutoCompleteTextView(I)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    new-instance v3, Lcom/android/calendar/EditEvent$63;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$63;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/EnterActionMultiEdit;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v2, :cond_1b

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/calendar/EditEvent$64;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$64;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckText:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$65;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$65;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v2, 0x7f0f00c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f0a0084

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0f00ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    const v3, 0x7f0a0086

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v2}, Lcom/android/calendar/ComposeHeaderView;->getToRecipientLayout()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/EditEvent$66;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$66;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v2, 0x7f0f002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/calendar/EditEvent$67;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$67;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f070001

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v4, :cond_1c

    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_3

    :cond_f
    new-instance v2, Landroid/text/format/Time;

    const-string v6, "UTC"

    invoke-direct {v2, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/16 v6, 0x7f4

    iput v6, v2, Landroid/text/format/Time;->year:I

    new-instance v2, Landroid/text/format/Time;

    const-string v6, "UTC"

    invoke-direct {v2, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->setAllday(Z)V

    goto/16 :goto_4

    :cond_10
    const-string v2, "UTC"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    goto/16 :goto_4

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v11, 0x1

    const-string v2, "allDay"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "account_name"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_name=\'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "account_type=\'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.seven.Z7.work"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    move v9, v10

    move v10, v11

    goto/16 :goto_6

    :cond_13
    sget-object v2, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    sget-object v2, Lcom/android/calendar/Utils;->sTaskId:Ljava/lang/Integer;

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/calendar/Utils;->sTaskId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getTaskId()I

    move-result v4

    if-ne v2, v4, :cond_14

    const-string v2, "account_name=\'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    move v9, v10

    move v10, v11

    goto/16 :goto_6

    :cond_14
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "preference_default_calendar_sync_account"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "preference_default_calendar_owner_account"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "preference_default_calendar_sync_account_type"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_15

    const-string v7, "account_type=\'com.google\' AND calendar_access_level>=500 AND sync_events=1"

    new-instance v2, Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;-><init>(Lcom/android/calendar/EditEvent;Landroid/content/ContentResolver;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    move v10, v11

    goto/16 :goto_6

    :cond_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account_name=\'%s\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ownerAccount=\'%s\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_type=\'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    move v9, v10

    move v10, v11

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v13, v14}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->hour:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->hour:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/format/Time;->minute:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/format/Time;->second:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto/16 :goto_7

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x76e

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    goto/16 :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_9

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/calendar/ComposeHeaderView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    const/high16 v2, 0x7f07

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    const v2, 0x7f070022

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EditEvent;->mStatusLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1d

    const-wide/16 v2, -0x1

    move-wide v8, v2

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    :goto_d
    if-eqz v3, :cond_20

    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "event_id=%d AND (method=1 OR method=0)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/android/calendar/EditEvent;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :goto_e
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide v8, v2

    goto :goto_c

    :cond_1e
    const/4 v3, 0x0

    goto :goto_d

    :cond_1f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v3, :cond_24

    const-wide/16 v3, -0x1

    cmp-long v3, v8, v3

    if-eqz v3, :cond_24

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    sget-object v4, Lcom/android/calendar/EditEvent;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v5, "event_id=? AND (attendeeRelationship<>2 or attendeeRelationship is null)"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_21
    :goto_f
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_22

    move-object v2, v3

    :cond_22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v6, v5, v2, v3}, Lcom/android/calendar/ComposeHeaderView;->addRecipientQuickly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_f

    :catchall_1
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_23
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v2}, Lcom/android/calendar/ComposeHeaderView;->addRecipientQuicklyDone()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_24
    const v2, 0x7f070006

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EditEvent;->mAvailabilityLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mAvailabilityTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAvailabilityLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/EditEvent;->mAvailability:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mPresenceContainer:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$68;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$68;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f070007

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EditEvent;->mVisibilityLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mVisibilityTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mVisibilityLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mPrivacyContainer:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$69;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$69;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/calendar/EditEvent;->initFromIntent(Landroid/content/Intent;)V

    :cond_25
    if-eqz p1, :cond_26

    const-string v2, "mNewEventDialogChecked"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EditEvent;->mNewEventDialogChecked:Z

    const-string v2, "mGoogleEventDialogChecked"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EditEvent;->mGoogleEventDialogChecked:Z

    :cond_26
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "preferences_confirm_new_event"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "preferences_confirm_new_event_google"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    if-eqz v10, :cond_27

    array-length v5, v4

    if-eqz v5, :cond_27

    if-nez v3, :cond_28

    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    :cond_27
    :goto_10
    if-nez v2, :cond_0

    if-eqz v10, :cond_0

    array-length v2, v4

    if-nez v2, :cond_0

    const/16 v2, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto/16 :goto_0

    :cond_28
    if-eqz v3, :cond_27

    if-nez v2, :cond_27

    const/16 v3, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto :goto_10
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/ContextMenu;->close()V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    instance-of v1, p2, Lcom/android/calendar/ComposeHeaderView$ToButton;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/ComposeHeaderView;->clearFocusAllBtn()V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    const/high16 v2, 0x7f0e

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, v5, :cond_0

    aget-object v2, v1, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v5

    aget-object v3, v1, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "%s (%s)"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v1, v5

    aput-object v4, v2, v3

    aget-object v3, v1, v6

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aget-object v2, v1, v6

    invoke-static {v2}, Lcom/android/calendar/Utils;->isExistsInContact(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0f00d7

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_0
    const v2, 0x7f0f00d8

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    aget-object v0, v1, v6

    :cond_1
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const v4, 0x7f0a0076

    const v3, 0x7f030031

    const v6, 0x7f0a0075

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a003a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/EditEvent$8;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$8;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$7;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a007f

    new-instance v2, Lcom/android/calendar/EditEvent$10;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$10;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0080

    new-instance v2, Lcom/android/calendar/EditEvent$9;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$9;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->createRepeatUntilDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/CharSequence;

    :goto_1
    add-int/lit8 v2, v1, 0x1

    const v2, 0x7f0a0067

    invoke-virtual {p0, v2}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/calendar/EditEvent$12;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$12;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/EditEvent$11;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$11;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v3, 0x7f0a0066

    invoke-virtual {p0, v3}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_1

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$13;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$13;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$14;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$14;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAvailabilityLabels:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0049

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    new-instance v3, Lcom/android/calendar/EditEvent$16;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$16;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$15;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$15;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mVisibilityLabels:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a004a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    new-instance v3, Lcom/android/calendar/EditEvent$18;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$18;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$17;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$17;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->createAlarmCustomizeDialog()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    new-instance v5, Landroid/text/format/Time;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget v0, v5, Landroid/text/format/Time;->year:I

    const/16 v1, 0x7f4

    if-le v0, v1, :cond_2

    const/16 v0, 0x7f4

    iput v0, v5, Landroid/text/format/Time;->year:I

    const/16 v0, 0xb

    iput v0, v5, Landroid/text/format/Time;->month:I

    const/16 v0, 0x1f

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    :cond_2
    new-instance v0, Lcom/android/calendar/TwDatePickerDialog;

    new-instance v2, Lcom/android/calendar/EditEvent$RepeatDateListener;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$RepeatDateListener;-><init>(Lcom/android/calendar/EditEvent;)V

    iget v3, v5, Landroid/text/format/Time;->year:I

    iget v4, v5, Landroid/text/format/Time;->month:I

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    check-cast v0, Landroid/app/DatePickerDialog;

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/EditEvent$19;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$19;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    new-instance v1, Lcom/android/calendar/EditEvent$20;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$20;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    new-instance v1, Lcom/android/calendar/EditEvent$21;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$21;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    goto/16 :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->createRepeatCustomizeDialog()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialogChecked:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030019

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f006e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/calendar/EditEvent$22;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/EditEvent$22;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a00ff

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0100

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/calendar/EditEvent$24;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$24;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/calendar/EditEvent$23;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/EditEvent$23;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030018

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f006b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/calendar/EditEvent$25;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/EditEvent$25;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0023

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0098

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/calendar/EditEvent$26;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/EditEvent$26;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialogChecked:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f03001a

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v1, 0x7f0f0071

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0f0074

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0f0072

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v4, 0x7f0f0075

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/calendar/EditEvent$27;

    invoke-direct {v5, p0, v3}, Lcom/android/calendar/EditEvent$27;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/calendar/EditEvent$28;

    invoke-direct {v1, p0, v4}, Lcom/android/calendar/EditEvent$28;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a00ff

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0101

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$30;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$30;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$29;

    invoke-direct {v1, p0, v3, v4}, Lcom/android/calendar/EditEvent$29;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStatusLabels:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0139

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    new-instance v3, Lcom/android/calendar/EditEvent$32;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$32;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$31;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$31;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    div-long/2addr v5, v7

    sub-long/2addr v3, v5

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/calendar/EditEvent$35;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$35;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0097

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a007f

    new-instance v2, Lcom/android/calendar/EditEvent$34;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$34;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0080

    new-instance v2, Lcom/android/calendar/EditEvent$33;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$33;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_b
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const v4, 0x2020176

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0a00c6

    invoke-interface {p1, v2, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v0, 0x7f0a00c7

    invoke-interface {p1, v3, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->releaseResources()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->pauseQuery()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 8

    const/16 v7, 0x7f4

    const/4 v6, 0x1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    if-ne p1, v6, :cond_2

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelection(I)V

    new-instance v4, Lcom/android/calendar/EditEvent$6;

    invoke-direct {v4, p0}, Lcom/android/calendar/EditEvent$6;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/calendar/EditEvent;->mDialog:Landroid/app/Dialog;

    return-void

    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    const v4, 0x1020252

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/calendar/EditEvent;->initRepeatUntilDialog(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_4
    const/16 v4, 0x9

    if-ne p1, v4, :cond_5

    move-object v4, p2

    check-cast v4, Landroid/app/AlertDialog;

    invoke-direct {p0, v4}, Lcom/android/calendar/EditEvent;->initAlarmCustomizeDialog(Landroid/app/AlertDialog;)V

    goto :goto_0

    :cond_5
    const/16 v4, 0xa

    if-ne p1, v4, :cond_7

    new-instance v2, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    iget v4, v2, Landroid/text/format/Time;->year:I

    if-le v4, v7, :cond_6

    iput v7, v2, Landroid/text/format/Time;->year:I

    const/16 v4, 0xb

    iput v4, v2, Landroid/text/format/Time;->month:I

    const/16 v4, 0x1f

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    :cond_6
    move-object v4, p2

    check-cast v4, Landroid/app/DatePickerDialog;

    iget v5, v2, Landroid/text/format/Time;->year:I

    iget v6, v2, Landroid/text/format/Time;->month:I

    iget v7, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    :cond_7
    const/16 v4, 0xe

    if-eq p1, v4, :cond_1

    const/16 v4, 0xf

    if-ne p1, v4, :cond_1

    move-object v4, p2

    check-cast v4, Landroid/app/AlertDialog;

    invoke-direct {p0, v4}, Lcom/android/calendar/EditEvent;->prepareRepeatCustomizeDialog(Landroid/app/AlertDialog;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsGoogleCalendar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v8

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v0, Lcom/android/calendar/EditEvent$Attendee;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "contactId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "status"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EditEvent$Attendee;-><init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_3
    const-string v0, "calendar_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    const-string v0, "isLocalCalendar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v1, "calendar_id"

    iget v2, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const-string v0, "_id=%d"

    new-array v1, v9, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v4, v10

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-direct {p0, v6}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    const-string v0, "starttime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    const-string v0, "endtime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    const-string v0, "prevrepeatselection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    const-string v0, "prevrepeatuserselection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUserSelection:I

    const-string v0, "prevrepeatuntiltype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilType:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    const-string v1, "prevrepeatuntildate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const-string v0, "repeatselection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const-string v0, "repeatuserselection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    const-string v0, "repeatuntiltype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const-string v1, "repeatuntildate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const-string v0, "reminderminutes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    const-string v0, "reminderOriginalminutes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    const-string v0, "reminderNextIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-string v2, "customreminder"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v0, "locationbitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mLatitude:I

    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mLongitude:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMapContainer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMap:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    const-string v0, "owneraccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mVisibilityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mVisibilityLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "availability"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAvailabilityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAvailabilityLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    const-string v1, "extraOptionVisibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "modification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    const-string v0, "timezone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "/~/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    const-string v2, "/,/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "/~/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    const-string v2, "/,/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v6

    :goto_3
    array-length v3, v1

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    aget-object v4, v1, v0

    aget-object v5, v2, v0

    aget-object v7, v2, v0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/calendar/ComposeHeaderView;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_6
    const-string v0, "syncId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 9

    const/16 v1, 0x1e

    const/4 v8, 0x2

    const/16 v2, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mGoogleLogin:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/calendar/EditEvent;->mModification:I

    if-nez v1, :cond_13

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isCustomRecurrence()Z

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v1, v1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_e

    :try_start_1
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v1, v1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/text/format/Time;->set(J)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    if-le v1, v2, :cond_18

    move v0, v1

    :goto_3
    new-instance v3, Lcom/android/calendar/EditEvent$LengthFilter;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/EditEvent$LengthFilter;-><init>(Lcom/android/calendar/EditEvent;I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    aput-object v3, v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    if-le v1, v2, :cond_19

    move v0, v1

    :goto_4
    new-instance v3, Lcom/android/calendar/EditEvent$LengthFilter;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/EditEvent$LengthFilter;-><init>(Lcom/android/calendar/EditEvent;I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    aput-object v3, v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->length()I

    move-result v1

    if-le v1, v2, :cond_1a

    move v0, v1

    :goto_5
    new-instance v3, Lcom/android/calendar/EditEvent$LengthFilter;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/EditEvent$LengthFilter;-><init>(Lcom/android/calendar/EditEvent;I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    aput-object v3, v4, v6

    invoke-virtual {v0, v4}, Lcom/android/calendar/ConvNameEditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0, v1}, Lcom/android/calendar/ConvNameEditText;->setSelection(I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->refreshRecipientButton()V

    :cond_8
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iput v6, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    :cond_9
    iget v0, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    packed-switch v0, :pswitch_data_0

    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->length()I

    move-result v1

    if-le v1, v2, :cond_1b

    move v0, v1

    :goto_7
    new-instance v3, Lcom/android/calendar/EditEvent$InvalidCharsFiler;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "\n"

    aput-object v5, v4, v6

    invoke-direct {v3, p0, v4}, Lcom/android/calendar/EditEvent$InvalidCharsFiler;-><init>(Lcom/android/calendar/EditEvent;[Ljava/lang/String;)V

    new-instance v4, Lcom/android/calendar/EditEvent$LengthFilter;

    invoke-direct {v4, p0, v0}, Lcom/android/calendar/EditEvent$LengthFilter;-><init>(Lcom/android/calendar/EditEvent;I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    new-array v5, v8, [Landroid/text/InputFilter;

    aput-object v3, v5, v6

    aput-object v4, v5, v7

    invoke-virtual {v0, v5}, Lcom/android/calendar/EnterActionMultiEdit;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0, v1}, Lcom/android/calendar/EnterActionMultiEdit;->setSelection(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-le v0, v2, :cond_c

    move v2, v0

    :cond_c
    new-instance v1, Lcom/android/calendar/EditEvent$LengthFilter;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/EditEvent$LengthFilter;-><init>(Lcom/android/calendar/EditEvent;I)V

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    new-array v3, v7, [Landroid/text/InputFilter;

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_d
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateWhen()V

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateRepeats()V

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateTimezone()V

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateHomeTime()V

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateReminder()V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->resumeQuery()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    :try_start_3
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v1, v1, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-nez v1, :cond_f

    if-ne v0, v7, :cond_11

    :cond_f
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    iput v0, p0, Lcom/android/calendar/EditEvent;->mUtillRepeatCount:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    :cond_10
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_12
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_13
    iget v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    if-ne v0, v8, :cond_14

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_14
    iget v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatContainer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_16
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iput v6, v0, Landroid/text/format/Time;->second:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    if-lez v0, :cond_17

    if-gt v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->minute:I

    :goto_8
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const-wide/32 v4, 0x36ee80

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_2

    :cond_17
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iput v6, v0, Landroid/text/format/Time;->minute:I

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v1, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->hour:I

    goto :goto_8

    :cond_18
    move v0, v2

    goto/16 :goto_3

    :cond_19
    move v0, v2

    goto/16 :goto_4

    :cond_1a
    move v0, v2

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    const v1, 0x7f0a013b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    const v1, 0x7f0a013c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    const v1, 0x7f0a013d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    const v1, 0x7f0a013e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    :cond_1b
    move v0, v2

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EditEvent$Attendee;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name"

    iget-object v6, v0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "email"

    iget-object v6, v0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "contactId"

    iget v6, v0, Lcom/android/calendar/EditEvent$Attendee;->mContactId:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "status"

    iget v0, v0, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "calendar_id"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isLocalCalendar"

    iget-boolean v1, p0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    const-string v0, "starttime"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    if-eqz v0, :cond_2

    const-string v0, "endtime"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    const-string v0, "prevrepeatselection"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "prevrepeatuserselection"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUserSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "prevrepeatuntiltype"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "prevrepeatuntildate"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "repeatselection"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "repeatuserselection"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "repeatuntiltype"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "repeatuntildate"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "reminderminutes"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "reminderOriginalminutes"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "reminderNextIndex"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const-string v1, "customreminder"

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "locationbitmap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "latitude"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "longitude"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    const-string v0, "owneraccount"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    const-string v0, "extraOptionVisibility"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    const-string v0, "visibility"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "availability"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "modification"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mModification:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "timezone"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->getNumberOfRecipients()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "recipients"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v1, v7}, Lcom/android/calendar/ComposeHeaderView;->getRecipients(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "syncId"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "mNewEventDialogChecked"

    iget-boolean v1, p0, Lcom/android/calendar/EditEvent;->mNewEventDialogChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mGoogleEventDialogChecked"

    iget-boolean v1, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialogChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setScheduleButtonGone()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mScheduleButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setScheduleButtonVisible()V
    .locals 2

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mScheduleButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsExchangeCalendar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showErrorMessage()V
    .locals 2

    const v0, 0x7f0a014c

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
