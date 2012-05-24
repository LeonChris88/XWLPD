.class public Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsSyncScheduleFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mPeakDaysArray:[Z


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private final mCalendar:Ljava/util/Calendar;

.field private mEndHour:I

.field private mEndMinute:I

.field private mLoaded:Z

.field private mOffPeakSchedule:I

.field private mPeakSchedule:I

.field private mRoamingSchedule:I

.field private mStartHour:I

.field private mStartMinute:I

.field private mSyncEndTime:I

.field private mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field private mSyncStartTime:I

.field private offPeakSchedule:Landroid/preference/ListPreference;

.field private pa:Landroid/preference/PreferenceActivity;

.field private peakDays:Landroid/preference/Preference;

.field private peakEndTime:Landroid/preference/Preference;

.field private peakSchedule:Landroid/preference/ListPreference;

.field private peakStartTime:Landroid/preference/Preference;

.field private tmpEndTime:I

.field private tmpStartTime:I

.field private whileRoaming:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/content/Context;Landroid/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->showTimePickerDialog(Landroid/content/Context;Landroid/preference/Preference;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getMinuteOfDay(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)Landroid/util/Pair;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    return p1
.end method

.method private getMinuteOfDay(II)I
    .locals 1

    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    return v0
.end method

.method private getPeakDays()B
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v2, v1

    int-to-byte v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private loadSettings(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakStartTime(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakEndTime(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakDays()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakSchedule()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupOffPeakSchedule()V

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupRoaming(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    return-void
.end method

.method private onSave()V
    .locals 8

    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    iget v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getPeakDays()B

    move-result v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    iget v6, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v7}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method

.method private readDataFromBundle()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extraAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->TAG:Ljava/lang/String;

    const-string v1, "Expecting SyncScheduleData in parcelable extra EXTRA_SCHEDULE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private restorePeakDaysArray()V
    .locals 5

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    shl-int v2, v3, v0

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    aput-boolean v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private restoreSettings()V
    .locals 7

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v1, 0x1e0

    const/16 v2, 0x3fc

    const/16 v3, 0x3e

    const/4 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->restorePeakDaysArray()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    return-void
.end method

.method private setHoursAndMinutes(I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v1, p1, 0x3c

    goto :goto_0
.end method

.method private setupOffPeakSchedule()V
    .locals 2

    const-string v0, "account_sync_offpeaktime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mOffPeakSchedule:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->offPeakSchedule:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupPeakDays()V
    .locals 2

    const-string v0, "account_sync_peakdays"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakDays:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakDays:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private setupPeakEndTime(Landroid/content/Context;)V
    .locals 10

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    const-string v0, "account_sync_peakendtime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpEndTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v7

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget-object v2, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$7;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupPeakSchedule()V
    .locals 2

    const-string v0, "account_sync_peaktime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakSchedule:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakSchedule:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupPeakStartTime(Landroid/content/Context;)V
    .locals 10

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    const-string v0, "account_sync_peakstarttime"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpStartTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v7

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget-object v2, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$6;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupRoaming(Landroid/content/Context;)V
    .locals 12

    const v11, 0x7f0803a2

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "account_sync_while_roaming"

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v6

    const/4 v0, 0x0

    new-array v2, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v8

    new-array v3, v9, [Ljava/lang/CharSequence;

    const-string v7, "0"

    aput-object v7, v3, v8

    new-array v4, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    const v7, 0x7f0803a3

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    new-array v5, v10, [Ljava/lang/CharSequence;

    const-string v7, "0"

    aput-object v7, v5, v8

    const-string v7, "1"

    aput-object v7, v5, v9

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v7, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v1, 0x0

    iget v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mRoamingSchedule:I

    packed-switch v7, :pswitch_data_0

    :goto_1
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    new-instance v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    new-instance v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$5;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$5;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->whileRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private showTimePickerDialog(Landroid/content/Context;Landroid/preference/Preference;Z)V
    .locals 7

    iget v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    if-eqz p3, :cond_0

    iget v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    :cond_0
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$8;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;Landroid/preference/Preference;Z)V

    const-string v1, "24"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    :goto_0
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v2, "AccountSettingsSyncScheduleFragment.startTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpStartTime:I

    const-string v2, "AccountSettingsSyncScheduleFragment.endTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->tmpEndTime:I

    const-string v2, "AccountSettingsSyncScheduleFragment.loaded"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    const v2, 0x7f060015

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->addPreferencesFromResource(I)V

    const-string v2, "sync_syncshedule"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->readDataFromBundle()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->restoreSettings()V

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->loadSettings(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "refresh_widget"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0f0014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->onSave()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->pa:Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100029 -> :sswitch_1
        0x7f1002c5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f1002c5

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f100029

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakStartTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mStartMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v6

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->peakEndTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mEndMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "AccountSettingsSyncScheduleFragment.startTime"

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncStartTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "AccountSettingsSyncScheduleFragment.endTime"

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mSyncEndTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "AccountSettingsSyncScheduleFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method showRequireManualSyncRoamingToast()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0803a4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
