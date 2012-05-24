.class public Lcom/android/email/activity/setup/AccountSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    }
.end annotation


# static fields
.field public static Category:Landroid/preference/PreferenceScreen;


# instance fields
.field private final CALENDAR_SYNC_WINDOW:I

.field private final EMAIL_SYNC_WINDOW:I

.field private final EMAIL_TRUNC_SIZE:I

.field private final OOO_GET_ERROR:I

.field private final OOO_NO_PROTOCOL_SUPPORT:I

.field private final OOO_NO_STATUS:I

.field private final OOO_PROCESSING:I

.field private final OOO_RESPONSE_PARSE:I

.field private final OOO_SERVER_CONNECT:I

.field private final OOO_STATUS_COMPLETE:I

.field private final OOO_UNKNOWN_ERROR:I

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountCcBcc:Landroid/preference/ListPreference;

.field private mAccountDefault:Landroid/preference/CheckBoxPreference;

.field private mAccountDefaultPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mAccountDescription:Landroid/preference/EditTextPreference;

.field private mAccountDirty:Z

.field private mAccountEmail:Ljava/lang/String;

.field private mAccountName:Landroid/preference/EditTextPreference;

.field private mAccountNameTextWatcher:Landroid/text/TextWatcher;

.field private mAccountNotify:Landroid/preference/CheckBoxPreference;

.field private mAccountPassword:Landroid/preference/EditTextPreference;

.field private mAccountRingtone:Landroid/preference/RingtonePreference;

.field private mAccountSignature:Landroid/preference/EditTextPreference;

.field private mAccountTextPreview:Landroid/preference/EditTextPreference;

.field private mAccountVibrateWhen:Landroid/preference/ListPreference;

.field private mAddSignature:Landroid/preference/CheckBoxPreference;

.field private mAmountToSynchronize:Landroid/preference/ListPreference;

.field private mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

.field private mAutoRetryTimes:Landroid/preference/ListPreference;

.field private mCalendarSyncWindow:Landroid/preference/ListPreference;

.field private mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

.field private mCheckFrequency:Landroid/preference/ListPreference;

.field private mConflictResolution:Landroid/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationMode:Landroid/preference/CheckBoxPreference;

.field private mDefaultAccountId:J

.field private mEmailRetrieveSize:Landroid/preference/ListPreference;

.field private mEmailSize:Landroid/preference/ListPreference;

.field private mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

.field private mForwardWithFiles:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mLoadAccountTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mMessageFormat:Landroid/preference/ListPreference;

.field private mPassword:Ljava/lang/String;

.field private mPostEmptyTrash_0:Landroid/app/AlertDialog;

.field private mPostEmptyTrash_1:Landroid/app/AlertDialog;

.field private mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mRingtone:Landroid/media/Ringtone;

.field private mRingtoneUri:Landroid/net/Uri;

.field private mSaveOnExit:Z

.field private mSevenAccount:Z

.field private mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

.field private mSevenSyncContact:Landroid/preference/PreferenceScreen;

.field private mSevenSyncSchedule:Landroid/preference/PreferenceScreen;

.field private mSevenWhileLowPower:Landroid/preference/ListPreference;

.field private mSevenWhileRoaming:Landroid/preference/ListPreference;

.field private mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

.field private mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

.field private mStarted:Z

.field private mSyncCalendar:Landroid/preference/CheckBoxPreference;

.field private mSyncContacts:Landroid/preference/CheckBoxPreference;

.field private mSyncEmail:Landroid/preference/CheckBoxPreference;

.field private mSyncSMS:Landroid/preference/CheckBoxPreference;

.field private mSyncSchedule:Landroid/preference/Preference;

.field private mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field private mSyncTasks:Landroid/preference/CheckBoxPreference;

.field private mSyncWindow:Landroid/preference/ListPreference;

.field policySet:Lcom/android/emailcommon/service/PolicySet;

.field securityPolicy:Lcom/android/email/SecurityPolicy;

.field syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field private zHandler:Lcom/digc/seven/Z7MailHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailRetrieveSize:Landroid/preference/ListPreference;

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->EMAIL_SYNC_WINDOW:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->EMAIL_TRUNC_SIZE:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->CALENDAR_SYNC_WINDOW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_STATUS_COMPLETE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_NO_STATUS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_NO_PROTOCOL_SUPPORT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_PROCESSING:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_GET_ERROR:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_SERVER_CONNECT:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_RESPONSE_PARSE:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->OOO_UNKNOWN_ERROR:I

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$42;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$42;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNameTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$43;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefaultPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$44;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$44;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private IsEAS()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    const-string v3, "eas"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onOutOfOfficeComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSettings()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/setup/AccountSettingsFragment;I)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onOutOfOffice()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/setup/AccountSettingsFragment;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->convertEmailSizeToInt(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/setup/AccountSettingsFragment;I)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getEmailSizeAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/setup/AccountSettingsFragment;I)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getCalendarSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->changeSmsSettings(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->showToastForAllPremiumAccounts()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onSyncSchedule()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountPassword:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/digc/seven/Z7MailHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->finishDeleteAccount()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettingsFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccountId:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    return-void
.end method

.method private addSncEmailSizePreference()V
    .locals 3

    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncEmailSizePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "account_email_size"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$39;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$39;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private addSncMessageFormatPreference()V
    .locals 3

    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncMessageFormatPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "account_message_format"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getMessageFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$38;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$38;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private addSncSyncSchedulePreference()V
    .locals 2

    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncSyncSchedulePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "account_sync_schedule"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSchedule:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSchedule:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$37;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$37;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private addSncSyncWindowPreference()V
    .locals 4

    const-string v0, "AccountSettingsFragment"

    const-string v1, " addSncSyncWindowPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "email_window_size"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    const v3, 0x7f0801a1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window window window ...account settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$36;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$36;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public static buildArguments(JLjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "AccountSettingsFragment.AccountId"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "AccountSettingsFragment.Email"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private changeSmsSettings(Z)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flags"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->changeSmsSettings(J)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "syncInterval"

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto :goto_1
.end method

.method private convertEmailSizeToInt(I)I
    .locals 1

    mul-int/lit16 p1, p1, 0x400

    sparse-switch p1, :sswitch_data_0

    const/16 v0, 0x9

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x8

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_2
        0x1400 -> :sswitch_3
        0x2800 -> :sswitch_4
        0x5000 -> :sswitch_5
        0xc800 -> :sswitch_6
        0x19000 -> :sswitch_7
    .end sparse-switch
.end method

.method private finishDeleteAccount()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method private getCalendarSyncWindowAllowedEntries(I)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f0803bf

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const v3, 0x7f0803c0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const v3, 0x7f0803c1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f0803c2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x4

    const v3, 0x7f0803c3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-le p1, v4, :cond_1

    const/16 v3, 0x8

    if-ge p1, v3, :cond_1

    add-int/lit8 v3, p1, -0x3

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private getCalendarSyncWindowAllowedValues(I)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "6"

    aput-object v3, v0, v2

    const-string v2, "7"

    aput-object v2, v0, v4

    const/4 v2, 0x4

    const-string v3, "0"

    aput-object v3, v0, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-le p1, v4, :cond_1

    const/16 v3, 0x8

    if-ge p1, v3, :cond_1

    add-int/lit8 v3, p1, -0x3

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private getDomain()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "AccountSettingsFragment"

    const-string v1, "FATAL : HostAuth is Null"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    const-string v0, ""

    if-eqz v1, :cond_0

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    if-lez v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_0
.end method

.method private getEmailSizeAllowedEntries(I)[Ljava/lang/String;
    .locals 5

    const/16 v4, 0x9

    const/4 v1, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f080332

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const v3, 0x7f080333

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const v3, 0x7f080334

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const v3, 0x7f080335

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const v3, 0x7f080336

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const v3, 0x7f080337

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const v3, 0x7f080338

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const v3, 0x7f080339

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const v3, 0x7f08033a

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f08033b

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-ltz p1, :cond_1

    if-ge p1, v4, :cond_1

    :goto_0
    if-gt v1, p1, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private getEmailSizeAllowedValues(I)[Ljava/lang/String;
    .locals 5

    const/16 v4, 0x9

    const/4 v1, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "3"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "4"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v0, v2

    const-string v2, "9"

    aput-object v2, v0, v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-ltz p1, :cond_1

    if-ge p1, v4, :cond_1

    :goto_0
    if-gt v1, p1, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private getSyncWindowAllowedEntries(I)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x6

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f080107

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const v3, 0x7f080278

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f0801a2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x3

    const v3, 0x7f0801a3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const v3, 0x7f0801a4

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const v3, 0x7f0801a5

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f0801a6

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-lez p1, :cond_1

    if-ge p1, v5, :cond_1

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/lit8 v3, p1, 0x2

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private getSyncWindowAllowedValues(I)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x6

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "-2"

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v0, v2

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v2, 0x3

    const-string v3, "2"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "3"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "4"

    aput-object v3, v0, v2

    const-string v2, "5"

    aput-object v2, v0, v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-lez p1, :cond_1

    if-ge p1, v5, :cond_1

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/lit8 v3, p1, 0x2

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static getTitleFromArgs(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "AccountSettingsFragment.Email"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUserName()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v0, v4

    return-object v0
.end method

.method private loadSettings()V
    .locals 8

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    const-string v0, "snc"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    move v4, v0

    :goto_1
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getSncEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getSncUserEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    const-string v0, "account_settings"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0802ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "account_description"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "account_name"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$5;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$6;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v1, "add_signature"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "add_signature"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$7;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "account_signature"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    const v2, 0x7f0801d7

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$8;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$9;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "account_sync_period"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$10;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v0, "account_settings_cc_bcc"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "account_settings_cc_bcc"

    const-string v3, "none"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_5
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    :goto_6
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    if-eqz v0, :cond_21

    const v0, 0x7f080282

    :goto_7
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$11;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "forward_with_files"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getForwardWithFiles()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "account_default"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccountId:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefaultPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "account_data_usage"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "account_check_frequency"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v5

    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v1, :cond_4

    if-eqz v4, :cond_24

    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    :goto_9
    const-string v1, "account_setting_main"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    sput-object v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    const-string v1, "account_exchange_sync_settings"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_26

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f08042b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_a
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v3, v3, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    :cond_7
    if-nez v2, :cond_40

    const/4 v2, 0x7

    move v3, v2

    :goto_b
    const-string v2, "email_window_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    if-eqz v5, :cond_8

    iget v2, v5, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_9

    :cond_8
    const-string v2, "eas"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    const v5, 0x7f0801a1

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getSyncWindowAllowedValues(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$13;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$13;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$14;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$14;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_a
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "account_empty_trash"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/EmptyTrashDialog;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v5, v6}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setAccountId(J)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setController(Lcom/android/email/Controller;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setPositiveResultDialog(Landroid/app/Dialog;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v5, 0x4028

    cmpg-double v2, v2, v5

    if-gez v2, :cond_b

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    const-string v2, "account_sync_schedule"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$15;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$15;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "out_of_office"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$16;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$16;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v5, 0x4028

    cmpg-double v2, v2, v5

    if-gez v2, :cond_c

    const-string v2, "out_of_office"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v3, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v5, v5, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-eqz v5, :cond_27

    if-lez v2, :cond_27

    :cond_d
    :goto_c
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->convertEmailSizeToInt(I)I

    move-result v3

    const-string v2, "account_email_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getEmailSizeAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getEmailSizeAllowedValues(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$17;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$17;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$18;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$18;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v3, :cond_3f

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    move v3, v2

    :goto_d
    const-string v2, "calendar_window_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const v5, 0x7f0803be

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const v5, 0x7f0803be

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getCalendarSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getCalendarSyncWindowAllowedValues(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getCalendarSyncLookback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOrder(I)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$19;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$19;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$20;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$20;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const-string v2, "security_options"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$21;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$21;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v5, 0x402c

    cmpg-double v2, v2, v5

    if-gez v2, :cond_28

    const-string v2, "account_textpreview"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_e
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "account_conflict"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getConflictresolution()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$23;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$23;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$24;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$24;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_e
    if-eqz v4, :cond_29

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncSyncWindowPreference()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncSyncSchedulePreference()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncMessageFormatPreference()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addSncEmailSizePreference()V

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->resetEmptyTrashPreference(Landroid/preference/PreferenceCategory;)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->resetOutOfOfficePreference(Landroid/preference/PreferenceCategory;)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->resetSecurityOptionsPreference(Landroid/preference/PreferenceCategory;)V

    const-string v2, "calendar_window_size"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "account_textpreview"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "account_conflict"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    :goto_f
    const-string v1, "account_notify"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    :goto_10
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "account_ringtone_select"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RingtonePreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_11
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$25;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$25;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/RingtonePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "account_ringtone_select"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "account_settings_vibrate_when"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    :goto_12
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    :goto_13
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2e

    const-string v3, "always"

    :goto_14
    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    if-eqz v1, :cond_30

    const v1, 0x7f08013f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$26;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$26;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_16
    const-string v1, "account_servers"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v2, "incoming"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "eas"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const v3, 0x7f080197

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    :goto_17
    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$27;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$27;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v4, :cond_11

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    const-string v2, "outgoing"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const/4 v2, 0x1

    :try_start_2
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    if-eqz v2, :cond_34

    const/4 v2, 0x1

    :cond_12
    :goto_18
    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v2, :cond_35

    if-nez v4, :cond_35

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$28;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$28;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_19
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_13
    const-string v0, "account_sync_contacts"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    const-string v0, "account_sync_calendar"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    const-string v0, "account_sync_email"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    const-string v0, "account_conversation_mode"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    const-string v0, "account_sms_sync"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    const-string v0, "account_sync_tasks"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    const-string v0, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "com.android.exchange"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    const-string v3, "com.android.contacts"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    const-string v3, "com.android.calendar"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    const-string v3, "com.android.email.provider"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    const-string v3, "tasks"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x402c

    cmpg-double v0, v2, v4

    if-gez v0, :cond_14

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x402c

    cmpg-double v0, v2, v4

    if-gez v0, :cond_15

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4028

    cmpg-double v0, v2, v4

    if-gez v0, :cond_36

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_16
    :goto_1a
    const-string v0, "seven_sync_contacts"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    const-string v0, "seven_sync_calendar"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    long-to-int v0, v2

    invoke-static {v0}, Lcom/seven/Z7/shared/ANSharedCommon;->getAccountName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$30;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$30;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    const-string v3, "yahoo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_1b
    const-string v0, "seven_push_service_common_settings"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "seven_sync_schedule"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncSchedule:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncSchedule:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$31;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$31;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "seven_while_roaming"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$32;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$32;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "seven_while_power_low"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$33;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$33;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-nez v1, :cond_17

    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_17
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_18
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "account_auto_retry_times"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAutoRetryTimes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$34;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$34;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$35;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$35;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1b
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AccountSettingsFragment"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    :goto_1c
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1c

    :cond_1d
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    const v2, 0x7f080139

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_1e
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    const-string v1, "AccountSettingsFragment"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    const-string v0, "none"

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_20
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_21
    if-eqz v1, :cond_22

    const v0, 0x7f080283

    goto/16 :goto_7

    :cond_22
    const v0, 0x7f080281

    goto/16 :goto_7

    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_24
    if-eqz v5, :cond_5

    iget-boolean v1, v5, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    :cond_25
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$12;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$12;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_9

    :cond_26
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    :cond_27
    move v2, v3

    goto/16 :goto_c

    :cond_28
    const-string v2, "account_textpreview"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTextPreviewSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTextPreviewSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsFragment$22;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$22;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_e

    :cond_29
    const-string v2, "account_message_format"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    if-eqz v2, :cond_f

    const-string v2, "account_message_format"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f

    :cond_2a
    const/4 v1, 0x0

    goto/16 :goto_10

    :cond_2b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    :cond_2c
    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_2d
    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_2e
    if-eqz v2, :cond_2f

    const-string v3, "silent"

    goto/16 :goto_14

    :cond_2f
    const-string v3, "never"

    goto/16 :goto_14

    :cond_30
    if-eqz v2, :cond_31

    const v1, 0x7f080140

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_15

    :cond_31
    const v1, 0x7f080141

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_15

    :cond_32
    const-string v1, "account_notifications"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v2, "account_settings_vibrate_when"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_16

    :cond_33
    const v3, 0x7f080135

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_17

    :cond_34
    const/4 v2, 0x0

    goto/16 :goto_18

    :cond_35
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_19

    :cond_36
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getConversationMode()I

    move-result v3

    if-ne v0, v3, :cond_38

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    :goto_1e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eq v2, v0, :cond_37

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_37
    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080507

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :goto_1f
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$29;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$29;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_1a

    :cond_38
    const/4 v0, 0x0

    goto :goto_1d

    :cond_39
    const/4 v0, 0x0

    goto :goto_1e

    :cond_3a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080508

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1f

    :cond_3b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1a

    :cond_3c
    const-string v3, "msn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1b

    :cond_3d
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1b

    :cond_3e
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenSyncCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1b

    :catch_2
    move-exception v5

    goto/16 :goto_18

    :cond_3f
    move v3, v2

    goto/16 :goto_d

    :cond_40
    move v3, v2

    goto/16 :goto_b
.end method

.method private onOutOfOffice()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->getOutOfOffice(J)V

    return-void
.end method

.method private onOutOfOfficeComplete(Landroid/os/Bundle;)V
    .locals 7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ooo_data"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "account_id"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080340

    const/4 v4, 0x0

    const/16 v6, 0x3ea

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private onPreferenceChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    return-void
.end method

.method private onSyncSchedule()V
    .locals 7

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0805ad

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.android.email.SyncScheduleExtra"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08043d

    const/4 v4, 0x0

    const/16 v6, 0x3ed

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private resetEmptyTrashPreference(Landroid/preference/PreferenceCategory;)V
    .locals 2

    const-string v0, "AccountSettingsFragment"

    const-string v1, "resetEmptyTrashPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "account_empty_trash"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/EmptyTrashDialog;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private resetOutOfOfficePreference(Landroid/preference/PreferenceCategory;)V
    .locals 2

    const-string v0, "AccountSettingsFragment"

    const-string v1, "resetOutOfOfficePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "out_of_office"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private resetSecurityOptionsPreference(Landroid/preference/PreferenceCategory;)V
    .locals 2

    const-string v0, "AccountSettingsFragment"

    const-string v1, "resetSecurityOptionsPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "security_options"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private saveSettings()V
    .locals 14

    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v0

    and-int/lit16 v1, v0, -0x2144

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAddSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x2000

    :goto_0
    or-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v6

    :goto_1
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_0

    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    :cond_0
    const-string v1, "cc"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    or-int/lit16 v0, v0, 0x200

    and-int/lit16 v0, v0, -0x401

    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mForwardWithFiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setForwardWithFiles(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-static {v1}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Value()I

    move-result v5

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v4, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v3, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v2, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    move v13, v2

    move v2, v3

    move v3, v4

    move v4, v13

    :goto_3
    if-eqz v4, :cond_16

    if-lez v2, :cond_16

    :goto_4
    if-lez v2, :cond_17

    mul-int/lit16 v2, v2, 0x400

    :goto_5
    if-ge v2, v5, :cond_1

    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exchange IT Policy has restricted SyncSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_1

    invoke-static {v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parseToByte(I)B

    move-result v1

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    const-string v1, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncLookback old value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SyncLookback new value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AccountSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncLookback is changed for account - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->resetCheckSyncLookbackForAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    :cond_3
    :goto_6
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mMessageFormat:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setMessageFormat(I)V

    :cond_4
    const-string v1, "always"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x2

    :cond_5
    :goto_7
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v3, "account_ringtone_select"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_6

    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTextPreviewSize(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v6

    :goto_8
    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setConversationMode(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_7

    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-string v1, "com.android.calendar"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-string v1, "com.android.email.provider"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-string v1, "tasks"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncTasks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v0, "AccountSettingsFragment"

    const-string v1, "Unified account is already created"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->updateExchangeProfile()V

    :goto_9
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAutoRetryTimes:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setAutoRetryTimes(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    :goto_a
    if-lez v0, :cond_1d

    if-eqz v1, :cond_8

    if-ge v0, v1, :cond_1c

    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    :cond_9
    :goto_b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    const-string v3, "account_name=? AND account_type=?"

    new-array v4, v12, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    aput-object v0, v4, v7

    const-string v0, "com.android.exchange"

    aput-object v0, v4, v6

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_a

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "calendar_displayName"

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_a
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mConflictResolution:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setConflictresolution(I)V

    :cond_c
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenAccount:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAmountToSynchronize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSevenWhileLowPower:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    int-to-long v8, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    int-to-long v8, v0

    iput-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    const-string v4, "pref_truc_time"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    if-eq v0, v2, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    const-string v4, "checkbox_quiet_time_roaming"

    if-ne v2, v6, :cond_1f

    move v0, v6

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    if-eq v0, v3, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    const-string v2, "checkbox_quiet_time_low_power"

    if-ne v3, v6, :cond_20

    move v0, v6

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsFragment$45;

    invoke-direct {v2, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$45;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_10
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSyncSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getAccountContentValues(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    const-string v2, "accountKey=? and type=?"

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWhere(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    if-eqz v3, :cond_23

    array-length v0, v3

    if-lez v0, :cond_23

    move v0, v7

    :goto_e
    array-length v1, v3

    if-ge v0, v1, :cond_23

    aget-object v1, v3, v0

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    aget-object v5, v3, v0

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    sparse-switch v5, :sswitch_data_0

    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_12
    move v0, v7

    goto/16 :goto_0

    :cond_13
    move v0, v7

    goto/16 :goto_1

    :cond_14
    const-string v1, "bcc"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountCcBcc:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    or-int/lit16 v0, v0, 0x400

    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_2

    :cond_15
    and-int/lit16 v0, v0, -0x401

    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_2

    :cond_16
    move v2, v3

    goto/16 :goto_4

    :cond_17
    const v2, 0x7fffffff

    goto/16 :goto_5

    :cond_18
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    goto/16 :goto_6

    :cond_19
    const-string v1, "silent"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x40

    goto/16 :goto_7

    :cond_1a
    move v0, v7

    goto/16 :goto_8

    :cond_1b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SNC_PROFILE_TOBE_BACKEDUP"

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    goto/16 :goto_9

    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    goto/16 :goto_b

    :cond_1d
    :try_start_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    const-string v1, "exception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_10
    if-eqz v1, :cond_1e

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1e
    throw v0

    :cond_1f
    move v0, v7

    goto/16 :goto_c

    :cond_20
    move v0, v7

    goto/16 :goto_d

    :sswitch_0
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v5, v5, 0x800

    const/16 v8, 0x800

    if-ne v5, v8, :cond_21

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v1

    :cond_21
    :sswitch_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "syncInterval"

    aget-object v10, v3, v0

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_22

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "peakSyncSchedule"

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "offpeakSyncSchedule"

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "syncLookback"

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v10, v12, [Ljava/lang/String;

    aput-object v5, v10, v7

    aput-object v4, v10, v6

    invoke-virtual {v1, v9, v8, v2, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_22
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v1

    goto :goto_11

    :cond_23
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Email;->setServicesEnabledAsync(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_24

    new-array v3, v6, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x5

    move v5, v7

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    :cond_24
    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :cond_25
    move v0, v7

    goto/16 :goto_a

    :cond_26
    move v4, v6

    move v2, v7

    move v3, v7

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x41 -> :sswitch_1
        0x42 -> :sswitch_1
        0x45 -> :sswitch_1
    .end sparse-switch
.end method

.method private showToastForAllPremiumAccounts()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f08045e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateExchangeProfile()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backing up ExchangeProfile for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-nez v0, :cond_1

    const-string v0, "AccountSettingsFragment"

    const-string v1, "Cretaing New Profile to Back up"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v1, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeServer(Ljava/lang/String;)V

    iget v1, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeSecureFlag(Z)V

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeVerifyCertFlag(Z)V

    :goto_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeUser(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeEmail(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDomain(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setFirstName(Ljava/lang/String;)V

    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "com.android.exchange"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.android.calendar"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeCalSyncFlag(Z)V

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeABSyncFlag(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    invoke-static {v1}, Lcom/android/email/adapter/SncAdapter;->parseSyncLookback(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDaysToSync(I)V

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeMessageFormat(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationStartTime(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationEndTime(I)V

    const/4 v1, 0x5

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/email/Controller;->updateUserProfile(ILcom/android/email/syncnconnect/utils/SncProfile;)V

    sget-object v1, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v1, :cond_0

    const-string v1, "AccountSettingsFragment"

    const-string v2, "Exisiting Profile updated"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    :cond_0
    return-void

    :cond_1
    const-string v0, "AccountSettingsFragment"

    const-string v1, "Updating Exisiting Profile to Back up"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto/16 :goto_1

    :cond_3
    move v2, v3

    goto/16 :goto_2

    :cond_4
    const-string v1, "AccountSettingsFragment"

    const-string v2, "FATAL : HostAuth is Null"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeOwnCertificateAlias"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeOwnCertificate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeEncryptAll"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeEncryptAll(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeSignAll"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeSignAll(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeSignAlgorithm"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeSignAlgorithm(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "SmimeEncryptionAlgorithm"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeEncryptionAlgorithm(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    :sswitch_1
    if-ne p2, v2, :cond_3

    const-string v0, "com.android.email.SyncScheduleExtra"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    :sswitch_2
    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSyncScheduleData(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    goto :goto_0

    :sswitch_3
    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_4

    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_4

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_ringtone_select"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_0

    :sswitch_4
    if-ne p2, v2, :cond_5

    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_6

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_ringtone_select"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_ringtone_select"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3eb -> :sswitch_1
        0x3ed -> :sswitch_2
        0xbda -> :sswitch_3
        0xbdb -> :sswitch_4
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    instance-of v0, p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {p1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAttach(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x7f0801ed

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    new-instance v4, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V

    invoke-direct {v4, v5, v6}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0801f1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    if-nez v4, :cond_1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080042

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    :cond_1
    const v4, 0x7f060003

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "AccountSettingsFragment.AccountId"

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v4, "AccountSettingsFragment.Email"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountEmail:Ljava/lang/String;

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v4, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->startLoadingAccount(J)V

    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSettingsFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public onModifyUserAccount(Ljava/lang/String;)V
    .locals 7

    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModifyUserAccount - mAccountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " password "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmailSync :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isContactSync :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    if-nez v0, :cond_0

    const-string v0, "AccountSettingsFragment"

    const-string v1, "FATAL - mSncEndPoint is null from Snc Module"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller;->modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSettings()V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_1

    :cond_0
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->abandonEdit()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    return-void
.end method

.method public ringtoneDialog()Landroid/app/Dialog;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f080525

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080524

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f080143

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment$46;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public saveSyncScheduleData(Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const-string v0, "AccountSettingsFragment"

    const-string v1, "saveSyncScheduleData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.email.SyncScheduleExtra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSchedule of account - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "peakDays"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "peakStartMinute"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "peakEndMinute"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "peakSchedule"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "offPeakSchedule"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "roamingSchedule"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->setupPushForUnifiedAccount()V

    iput-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    :cond_3
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    return-void
.end method

.method public startLoadingAccount(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    return-void
.end method
