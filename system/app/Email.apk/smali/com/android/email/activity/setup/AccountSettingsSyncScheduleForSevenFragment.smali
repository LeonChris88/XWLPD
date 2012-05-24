.class public Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;
.super Landroid/app/Fragment;
.source "AccountSettingsSyncScheduleForSevenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/seven/Z7/shared/PreferenceConstants$EmailAccountPreferences;
.implements Lcom/seven/Z7/shared/PreferenceConstants$GeneralPreferences;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static friSelected:Z

.field public static mPeakDaysArray:[Z

.field public static monSelected:Z

.field public static satSelected:Z

.field public static sunSelected:Z

.field public static thuSelected:Z

.field public static tueSelected:Z

.field public static wedSelected:Z


# instance fields
.field private btnEndTime:Landroid/widget/Button;

.field private btnStartTime:Landroid/widget/Button;

.field private isPeakStartTime:Z

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mCancelButton:Landroid/widget/Button;

.field private mDoneButton:Landroid/widget/Button;

.field private mEndTime:Ljava/lang/String;

.field private mLoaded:Z

.field private mOffPeakSchedule:I

.field private mOffPeakScheduleSpinner:Landroid/widget/Spinner;

.field private mPeakSchedule:I

.field private mPeakScheduleSpinner:Landroid/widget/Spinner;

.field private mStartTime:Ljava/lang/String;

.field mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private pa:Landroid/preference/PreferenceActivity;

.field private t1:Landroid/widget/ToggleButton;

.field private t2:Landroid/widget/ToggleButton;

.field private t3:Landroid/widget/ToggleButton;

.field private t4:Landroid/widget/ToggleButton;

.field private t5:Landroid/widget/ToggleButton;

.field private t6:Landroid/widget/ToggleButton;

.field private t7:Landroid/widget/ToggleButton;

.field private timePickerDialog:Landroid/app/TimePickerDialog;

.field private zHandler:Lcom/digc/seven/Z7MailHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    return-void

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

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->timePickerDialog:Landroid/app/TimePickerDialog;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t1:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t2:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t3:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t4:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t5:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t6:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t7:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnStartTime:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Landroid/content/Context;Landroid/widget/Button;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->showTimePickerDialog(Landroid/content/Context;Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnEndTime:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->isPeakStartTime:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mStartTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mEndTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Lcom/digc/seven/Z7MailHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Landroid/preference/PreferenceActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->pa:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private getSelectedPeakDays()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadSettings(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {p1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->setupPeakDays()V

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->setupPeakStartTime(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->setupPeakEndTime(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->setWidgetProperties()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mLoaded:Z

    return-void
.end method

.method private onSave()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v8, v8, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v8, v8, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    iget v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    iget v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    if-eq v8, v9, :cond_1

    :cond_0
    iget v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    if-nez v8, :cond_3

    iget v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    if-nez v8, :cond_3

    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    iput v9, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    iput v9, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getSelectedPeakDays()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v5, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    :cond_2
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mStartTime:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mEndTime:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v4, 0x1

    :goto_1
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    const/4 v3, 0x1

    :goto_2
    if-nez v4, :cond_a

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_8

    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_b

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_7

    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    add-int/lit8 v9, v2, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakSchedule:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    iget v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakSchedule:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_7
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    add-int/lit8 v9, v2, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_b

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_9

    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    add-int/lit8 v9, v2, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    add-int/lit8 v9, v2, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_7
    const/4 v8, 0x7

    if-ge v2, v8, :cond_b

    sget-object v8, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->PEAK_TIME_KEYS:[Ljava/lang/String;

    add-int/lit8 v9, v2, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v8}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;

    invoke-direct {v9, p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Ljava/util/HashMap;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->pa:Landroid/preference/PreferenceActivity;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v8, v9}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSyncSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-static {v1}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    const v8, 0x7f08045e

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private setupPeakDays()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    goto :goto_1
.end method

.method private setupPeakEndTime(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mEndTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnEndTime:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnEndTime:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupPeakStartTime(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mStartTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnStartTime:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mStartTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnStartTime:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showTimePickerDialog(Landroid/content/Context;Landroid/widget/Button;Z)V
    .locals 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iput-boolean p3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->isPeakStartTime:Z

    const/4 v6, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :goto_0
    array-length v0, v6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v6, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->timePickerDialog:Landroid/app/TimePickerDialog;

    if-nez v0, :cond_2

    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->timePickerDialog:Landroid/app/TimePickerDialog;

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->timePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->timePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0, v3, v4}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->onSave()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->pa:Landroid/preference/PreferenceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, v3}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->pa:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, p0, v0, v3}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t1:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_0

    :sswitch_3
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "tuesday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    if-nez v2, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t2:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x2

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :sswitch_4
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "wednesday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    if-nez v2, :cond_2

    :goto_2
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t3:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x3

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_2

    :sswitch_5
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "thursday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    if-nez v2, :cond_3

    :goto_3
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t4:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x4

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_3

    :sswitch_6
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "friday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    if-nez v2, :cond_4

    :goto_4
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t5:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x5

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_0

    :cond_4
    move v1, v0

    goto :goto_4

    :sswitch_7
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "saturday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    if-nez v2, :cond_5

    :goto_5
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t6:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x6

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_0

    :cond_5
    move v1, v0

    goto :goto_5

    :sswitch_8
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->TAG:Ljava/lang/String;

    const-string v3, "sunday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    if-nez v2, :cond_6

    :goto_6
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t7:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    sget-boolean v2, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    aput-boolean v2, v1, v0

    goto/16 :goto_0

    :cond_6
    move v1, v0

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x7f100029 -> :sswitch_1
        0x7f10002a -> :sswitch_0
        0x7f100120 -> :sswitch_8
        0x7f100121 -> :sswitch_2
        0x7f100122 -> :sswitch_3
        0x7f100123 -> :sswitch_4
        0x7f100124 -> :sswitch_5
        0x7f100125 -> :sswitch_6
        0x7f100126 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "AccountSettingsSyncScheduleForSevenFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mLoaded:Z

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v4, 0x7f04000c

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->pa:Landroid/preference/PreferenceActivity;

    const v4, 0x7f100270

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    const v4, 0x7f100271

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    const v4, 0x7f100272

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnStartTime:Landroid/widget/Button;

    const v4, 0x7f100273

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnEndTime:Landroid/widget/Button;

    const v4, 0x7f10002a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mDoneButton:Landroid/widget/Button;

    const v4, 0x7f100029

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x2

    new-array v2, v4, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v4, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f080393

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v7

    new-instance v4, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f080392

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v8

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v1, v0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v4, 0x1090009

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v4, 0x7f100121

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t1:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t1:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f100122

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t2:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t2:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f100123

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t3:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t3:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f100124

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t4:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t4:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f100125

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t5:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t5:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f100126

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t6:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t6:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f100120

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t7:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t7:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "AccountSettingsSyncScheduleForSevenFragment.startTime"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnStartTime:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AccountSettingsSyncScheduleForSevenFragment.endTime"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnEndTime:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AccountSettingsSyncScheduleForSevenFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->loadSettings(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setWidgetProperties()V
    .locals 2

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t1:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->monSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t2:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->tueSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t3:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->wedSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t4:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->thuSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t5:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->friSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t6:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->satSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->t7:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->sunSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
