.class public Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;
.super Landroid/app/Fragment;
.source "AccountSettingsOutOfOfficeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;
    }
.end annotation


# instance fields
.field private final FLAG_CANCEL_PRESEED:I

.field private final FLAG_DONE_PRESSED:I

.field private final FLAG_INVALID_DATES:I

.field private final FLAG_RESET:I

.field private final OOO_GET_ERROR:I

.field private final OOO_NO_PROTOCOL_SUPPORT:I

.field private final OOO_NO_STATUS:I

.field private final OOO_PROCESSING:I

.field private final OOO_RESPONSE_PARSE:I

.field private final OOO_SERVER_CONNECT:I

.field private final OOO_SET_ERROR:I

.field private final OOO_STATUS_COMPLETE:I

.field private final OOO_UNKNOWN_ERROR:I

.field private mAccountId:J

.field private mCheckFlag:I

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mEnableDateTimeCB:Landroid/widget/CheckBox;

.field private mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

.field private mEndDate:Ljava/util/Date;

.field private mEndDateButton:Landroid/widget/Button;

.field private mEndTimeButton:Landroid/widget/Button;

.field private mExternalKnownMsgState:I

.field private mExternalMsgCB:Landroid/widget/CheckBox;

.field private mExternalMsgCBLayout:Landroid/widget/LinearLayout;

.field private mExternalMsgEditText:Landroid/widget/EditText;

.field private mExternalUnKnownMsgState:I

.field private mHandler:Landroid/os/Handler;

.field private mHour:I

.field private mInternalMsgEditText:Landroid/widget/EditText;

.field private mInternalMsgState:I

.field private mIsStartDate:Z

.field private mIsStartTime:Z

.field mIsUIOn:Z

.field private mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

.field private mLoaded:Z

.field private mMessageForExternalKnownUsers:Ljava/lang/String;

.field private mMessageForExternalUnknownUsers:Ljava/lang/String;

.field private mMessageForInternalUsers:Ljava/lang/String;

.field private mMinute:I

.field private mMonth:I

.field private mMonths:[Ljava/lang/String;

.field private mOofOnOrOffCheck:Landroid/widget/CheckBox;

.field private mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

.field private mOofState:Z

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mRbKnown:Landroid/widget/RadioButton;

.field private mRbKnownLayout:Landroid/widget/LinearLayout;

.field private mRbUnKnown:Landroid/widget/RadioButton;

.field private mRbUnKnownLayout:Landroid/widget/LinearLayout;

.field private mStartDate:Ljava/util/Date;

.field private mStartDateButton:Landroid/widget/Button;

.field private mStartTimeButton:Landroid/widget/Button;

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_RESET:I

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_DONE_PRESSED:I

    iput v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_CANCEL_PRESEED:I

    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_INVALID_DATES:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartDate:Z

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartTime:Z

    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_STATUS_COMPLETE:I

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_NO_STATUS:I

    iput v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_NO_PROTOCOL_SUPPORT:I

    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_PROCESSING:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_SET_ERROR:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_GET_ERROR:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_SERVER_CONNECT:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_RESPONSE_PARSE:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_UNKNOWN_ERROR:I

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartDate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartDate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->toggleAllUIState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareDateTimeButtons()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/TimePickerDialog$OnTimeSetListener;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateStartDateTime()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateEndDateTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartTime:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartTime:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/Controller;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->onSetOutOfOfficeComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method private onSetOutOfOfficeComplete(Landroid/os/Bundle;)V
    .locals 3

    const/16 v2, 0x64

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-eqz p1, :cond_0

    const-class v0, Lcom/android/emailcommon/service/OoODataList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    sget-object v0, Lcom/android/emailcommon/utility/OoOConstants;->OOO_SET_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080355

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080356

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private prepareDateTimeButtons()V
    .locals 2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateStartDateTime()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateEndDateTime()V

    :cond_0
    return-void
.end method

.method private prepareStartUpUI()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ooo_data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    sget-object v5, Lcom/android/emailcommon/utility/OoOConstants;->OOO_GET_DATA:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/service/OoODataList;

    :cond_0
    if-eqz v3, :cond_e

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/android/emailcommon/service/OoODataList;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_e

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/service/OoODataList;->getItem(I)Lcom/android/emailcommon/service/OoOData;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->state:I

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->type:I

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_2

    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    :goto_2
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    goto :goto_2

    :pswitch_2
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_3

    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_3
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    goto :goto_3

    :pswitch_3
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_5

    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_4
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_4
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    goto :goto_4

    :pswitch_4
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->type:I

    packed-switch v5, :pswitch_data_2

    goto :goto_1

    :pswitch_5
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_6

    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    :goto_5
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    goto :goto_5

    :pswitch_6
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_7

    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_6
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    goto :goto_6

    :pswitch_7
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_9

    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_7
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_8
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    goto :goto_7

    :pswitch_8
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    if-nez v2, :cond_a

    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v2, 0x1

    :cond_a
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->type:I

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_9
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_b

    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    :goto_8
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    goto :goto_8

    :pswitch_a
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_c

    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_9
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :cond_c
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    goto :goto_9

    :pswitch_b
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_d

    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_a
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :cond_d
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    goto :goto_a

    :cond_e
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v5, :cond_13

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    if-eq v5, v7, :cond_f

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    if-nez v5, :cond_12

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    if-nez v5, :cond_12

    :cond_f
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_10
    :goto_b
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_11
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->toggleAllUIState()V

    return-void

    :cond_12
    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    if-ne v5, v7, :cond_10

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b

    :cond_13
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private sendDataToExchange()V
    .locals 12

    const/4 v1, 0x4

    const/4 v6, 0x0

    const/4 v11, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-virtual {v4, v5}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    if-ne v4, v3, :cond_b

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    :cond_2
    new-instance v0, Lcom/android/emailcommon/service/OoODataList;

    invoke-direct {v0}, Lcom/android/emailcommon/service/OoODataList;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v4, v4, v9

    if-gtz v4, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f08035c

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    iput v11, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v4, v4, v9

    if-gtz v4, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f08035c

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    iput v11, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    if-eqz v4, :cond_5

    if-eqz v7, :cond_7

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v1, :cond_9

    if-eqz v7, :cond_8

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/email/Controller;->setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_1

    :cond_8
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v1, :cond_6

    if-eqz v7, :cond_a

    const/4 v1, 0x6

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto :goto_2

    :cond_a
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_2

    :cond_b
    new-instance v0, Lcom/android/emailcommon/service/OoODataList;

    invoke-direct {v0}, Lcom/android/emailcommon/service/OoODataList;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v11, v6, v6, v1}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/email/Controller;->setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V

    goto/16 :goto_0
.end method

.method private toggleAllUIState()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareDateTimeButtons()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    return-void
.end method

.method private updateEndDateTime()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonth:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {p0, v0, v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateStartDateTime()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonth:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {p0, v0, v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100219
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "AccountSettingsOutOfOfficeFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mLoaded:Z

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0f0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "account_id"

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v6, v4}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    :cond_0
    const v4, 0x7f04000a

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Date;->setDate(I)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v4, v6}, Ljava/util/Date;->setMinutes(I)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4, v6}, Ljava/util/Date;->setMinutes(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    const v4, 0x7f10021b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$4;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v4, 0x7f100219

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v4, 0x7f10021d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$5;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$5;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v4, 0x7f10021c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v4, 0x7f10021f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    const v4, 0x7f100222

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$7;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$7;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "MM-dd-yyyy"

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f100220

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$8;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$8;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f100223

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateStartDateTime()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateEndDateTime()V

    const v4, 0x7f100229

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$10;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$10;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v4, 0x7f100228

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v4, 0x7f10022b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$11;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$11;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v4, 0x7f10022a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v4, 0x7f100225

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    const v4, 0x7f10022e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$12;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v4, 0x7f100227

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v4, 0x7f100226

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCBLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareStartUpUI()V

    return-object v3

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string v0, "yyyy-MM-dd"

    goto/16 :goto_0

    :cond_5
    const-string v0, "dd-MM-yyyy"

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-ne v1, v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->sendDataToExchange()V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1002b9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f1002b9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f1002ba

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareDateTimeButtons()V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setHasOptionsMenu(Z)V

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :sswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :sswitch_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :pswitch_8
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    :pswitch_c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_10
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100219 -> :sswitch_0
        0x7f10021c -> :sswitch_1
        0x7f100226 -> :sswitch_2
        0x7f100228 -> :sswitch_3
        0x7f10022a -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_12
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method public setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V
    .locals 6

    const-string v2, ""

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "MM-dd-yyyy"

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v0, "yyyy-MM-dd"

    goto :goto_0

    :cond_5
    const-string v0, "dd-MM-yyyy"

    goto :goto_0

    :cond_6
    const-string v3, "dd-MM-yyyy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    const-string v3, "MM-dd-yyyy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_8
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_9
    const-string v3, "dd-MM-yyyy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_a
    const-string v3, "MM-dd-yyyy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method
