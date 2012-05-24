.class public Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/seven/Z7/shared/PreferenceConstants$GeneralPreferences;


# instance fields
.field private accountId:J

.field mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mDonePressed:Z

.field private mNextButton:Landroid/view/MenuItem;

.field private mNotifyView:Landroid/widget/CheckBox;

.field private mOffPeakScheduleSpinner:Landroid/widget/Spinner;

.field private mPeakScheduleSpinner:Landroid/widget/Spinner;

.field private mPreviousButton:Landroid/view/MenuItem;

.field private mSevenAccountKey:I

.field private mSyncCalendarView:Landroid/widget/CheckBox;

.field private mSyncContactsView:Landroid/widget/CheckBox;

.field private mSyncWindowView:Landroid/widget/Spinner;

.field private sso_id:Ljava/lang/String;

.field private sso_isp:Ljava/lang/String;

.field private sso_pw:Ljava/lang/String;

.field private zHandler:Lcom/digc/seven/Z7MailHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDonePressed:Z

    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Lcom/digc/seven/Z7MailHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->zHandler:Lcom/digc/seven/Z7MailHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->saveAccountAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->optionsComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->showErrorDialog(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_pw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_isp:Ljava/lang/String;

    return-object v0
.end method

.method public static actionOptions(Landroid/app/Activity;II)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->actionOptions(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static actionOptions(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "seven_account_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SSO_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSO_PW"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSO_ISP"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private enableSyncWindowSpinner()V
    .locals 14

    const v10, 0x7f100074

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    const v10, 0x7f100077

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    const v10, 0x7f10007a

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p0

    const/4 v10, 0x2

    new-array v4, v10, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x0

    new-instance v11, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f080393

    invoke-virtual {v0, v13}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v11, v4, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f080392

    invoke-virtual {v0, v13}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v11, v4, v10

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v10, 0x1090008

    invoke-direct {v3, p0, v10, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v10, 0x1090009

    invoke-virtual {v3, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0010

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a000f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v10, v6

    new-array v7, v10, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    array-length v10, v6

    if-ge v2, v10, :cond_1

    aget-object v10, v9, v2

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aget-object v12, v6, v2

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v7, v2

    int-to-long v10, v5

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v10, 0x1090008

    invoke-direct {v8, p0, v10, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v10, 0x1090009

    invoke-virtual {v8, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-ltz v1, :cond_2

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2
    return-void
.end method

.method private onDone()V
    .locals 14

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v10, v10, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v10, v10, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v10, v10, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    int-to-long v12, v0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    const-string v10, "pref_truc_time"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez v9, :cond_5

    if-nez v8, :cond_5

    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    int-to-long v11, v0

    iput-wide v11, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v9, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v8, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->setShowImage(Z)V

    invoke-static {p0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v10

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->zHandler:Lcom/digc/seven/Z7MailHandler;

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncContactsView:Landroid/widget/CheckBox;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v4, 0x1

    const-string v10, "checkbox_sync_contacts"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSevenAccountKey:I

    const/16 v12, 0x102

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/digc/seven/Z7MailHandler;->setServiceState(III)I

    :cond_1
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncCalendarView:Landroid/widget/CheckBox;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v1, 0x1

    const-string v10, "checkbox_sync_calendar"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSevenAccountKey:I

    const/16 v12, 0x101

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/digc/seven/Z7MailHandler;->setServiceState(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;

    invoke-direct {v11, p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;Ljava/util/HashMap;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    :cond_3
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {p0, v10}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSyncSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v10

    and-int/lit16 v7, v10, -0x102

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_4

    or-int/lit8 v7, v7, 0x1

    :cond_4
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v11, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v10}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    move v2, v1

    move v5, v4

    new-instance v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$4;

    invoke-direct {v10, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$4;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    invoke-static {v10}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    :goto_1
    return-void

    :cond_5
    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/4 v10, 0x1

    if-ne v8, v10, :cond_6

    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v6

    new-instance v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$1;

    invoke-direct {v10, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    new-instance v11, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$2;

    invoke-direct {v11, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    invoke-static {p0, v6, v10, v11}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_1
.end method

.method private optionsComplete()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->setResult(I)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->saveAccountAndFinish()V

    return-void
.end method

.method private saveAccountAndFinish()V
    .locals 1

    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method private varargs showErrorDialog(I[Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->saveAccountAndFinish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->finish()V

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v8, 0x8

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "account_key"

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->accountId:J

    const-string v3, "seven_account_key"

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSevenAccountKey:I

    const-string v3, "SSO_ID"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_id:Ljava/lang/String;

    const-string v3, "SSO_PW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_pw:Ljava/lang/String;

    const-string v3, "SSO_ISP"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_isp:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    const v3, 0x7f04001b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->setContentView(I)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    :try_start_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v3, 0x7f10007b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncWindowView:Landroid/widget/Spinner;

    const v3, 0x7f100076

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    const v3, 0x7f100079

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    const v3, 0x7f100045

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDefaultView:Landroid/widget/CheckBox;

    const v3, 0x7f100085

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mNotifyView:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSevenAccountKey:I

    invoke-static {v3}, Lcom/seven/Z7/shared/ANSharedCommon;->getAccountName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yahoo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "msn"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "FEATURE_JPN_DCM_EMAIL"

    invoke-static {v3}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f10008b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f10008e

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f10008d

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncContactsView:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "yahoo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f10008f

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f100092

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f100091

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncCalendarView:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->enableSyncWindowSpinner()V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mNotifyView:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v3, 0x7f100072

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f100073

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f10007c

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f10007f

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f100087

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f10008a

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f10009d

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f10009e

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f100097

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f10009a

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAutoSetup()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->onDone()V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->accountId:J

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    goto/16 :goto_0

    :cond_6
    move v3, v5

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDonePressed:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->onDone()V

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDonePressed:Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->onBackPressed()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100039 -> :sswitch_0
        0x7f1002c0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const v0, 0x7f1002c0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mPreviousButton:Landroid/view/MenuItem;

    const v0, 0x7f100039

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mNextButton:Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/digc/seven/SevenSyncProvider;->checkSevenApkVer(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
