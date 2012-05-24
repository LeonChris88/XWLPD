.class public Lcom/android/email/activity/CustomizeDate;
.super Landroid/app/Activity;
.source "CustomizeDate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private customizeLayout:Landroid/widget/RelativeLayout;

.field private customizeRadioButton:Landroid/widget/RadioButton;

.field private dateFormatter:Ljava/text/SimpleDateFormat;

.field private fromDateButton:Landroid/widget/Button;

.field private fromTextView:Landroid/widget/TextView;

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mController:Lcom/android/email/Controller;

.field private mDate:Ljava/util/Date;

.field private mDay:I

.field private mDayFromSearch:I

.field private mDayToSearch:I

.field private mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

.field private mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mHourFromSearch:I

.field private mHourToSearch:I

.field private mIsCustomize:Z

.field private mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field private mMinuteFromSearch:I

.field private mMinuteToSearch:I

.field private mMonth:I

.field private mMonthFromSearch:I

.field private mMonthToSearch:I

.field private mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mYear:I

.field private mYearFromSearch:I

.field private mYearToSearch:I

.field private oneDayLayout:Landroid/widget/RelativeLayout;

.field private oneDayRadioButton:Landroid/widget/RadioButton;

.field private oneMonthLayout:Landroid/widget/RelativeLayout;

.field private oneMonthRadioButton:Landroid/widget/RadioButton;

.field private oneWeekLayout:Landroid/widget/RelativeLayout;

.field private oneWeekRadioButton:Landroid/widget/RadioButton;

.field private oneYearLayout:Landroid/widget/RelativeLayout;

.field private oneYearRadioButton:Landroid/widget/RadioButton;

.field private searchButton:Landroid/widget/Button;

.field private searchText:Ljava/lang/String;

.field private sixMonthLayout:Landroid/widget/RelativeLayout;

.field private sixMonthRadioButton:Landroid/widget/RadioButton;

.field private toDateButton:Landroid/widget/Button;

.field private toTextView:Landroid/widget/TextView;

.field private todayLayout:Landroid/widget/RelativeLayout;

.field private todayRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    new-instance v0, Lcom/android/email/activity/CustomizeDate$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/CustomizeDate$1;-><init>(Lcom/android/email/activity/CustomizeDate;)V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    new-instance v0, Lcom/android/email/activity/CustomizeDate$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/CustomizeDate$2;-><init>(Lcom/android/email/activity/CustomizeDate;)V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/CustomizeDate;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/CustomizeDate;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/CustomizeDate;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    return p1
.end method

.method private disableCustomView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    return-void
.end method

.method private enableCustomView()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    return-void
.end method

.method private init()V
    .locals 5

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const v2, 0x7f100102

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->todayLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100105

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneDayLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100108

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f10010b

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f10010e

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100111

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneYearLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100114

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->customizeLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100104

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    const v2, 0x7f100107

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    const v2, 0x7f10010a

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    const v2, 0x7f10010d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    const v2, 0x7f100110

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    const v2, 0x7f100113

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    const v2, 0x7f100116

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    const v2, 0x7f100117

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    const v2, 0x7f10011a

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    const v2, 0x7f100119

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    const v2, 0x7f10011c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    const v2, 0x7f10011e

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->searchButton:Landroid/widget/Button;

    const v2, 0x7f10011f

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "MM-dd-yyyy"

    :cond_1
    :goto_0
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy. MMM. d. EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v0, "yyyy-MM-dd"

    goto :goto_0

    :cond_5
    const-string v0, "dd-MM-yyyy"

    goto :goto_0

    :cond_6
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM, yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_1

    :cond_7
    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, MMM d, yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_1
.end method

.method private readArgumentsFromIntent()V
    .locals 8

    const-wide/16 v6, -0x1

    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.AccountId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.SearchText"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->searchText:Ljava/lang/String;

    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    const-string v4, "CustomizeDate"

    const-string v5, "Must pass com.android.email.AccountId of type long in extras"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.MailboxId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-gtz v4, :cond_1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    :goto_1
    return-void

    :cond_0
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    goto :goto_0

    :cond_1
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    goto :goto_1
.end method

.method private setDefaultValues()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;JJILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/email/activity/CustomizeDate;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.android.email.AccountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.android.email.MailboxId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.android.email.SearchText"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private toggleAllRadioButtons()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->todayLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_2

    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneDayLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_4

    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getDate()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v12}, Ljava/util/Date;->setDate(I)V

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneWeekLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_6

    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getDate()I

    move-result v12

    add-int/lit8 v12, v12, -0x7

    invoke-virtual {v4, v12}, Ljava/util/Date;->setDate(I)V

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneMonthLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_8

    :cond_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getMonth()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v12}, Ljava/util/Date;->setMonth(I)V

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->sixMonthLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_a

    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getMonth()I

    move-result v12

    add-int/lit8 v12, v12, -0x6

    invoke-virtual {v4, v12}, Ljava/util/Date;->setMonth(I)V

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneYearLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_c

    :cond_b
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v12}, Ljava/util/Date;->setYear(I)V

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->customizeLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_e

    :cond_d
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getHours()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v12, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "~"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v12, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->enableCustomView()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_f

    const/16 v12, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/email/activity/CustomizeDate;->showDialog(I)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_10

    const/16 v12, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/email/activity/CustomizeDate;->showDialog(I)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->searchButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_19

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-virtual {v7, v12, v13, v14}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    invoke-virtual {v10, v12, v13, v14}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0803cd

    const/16 v14, 0x7d0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/CustomizeDate;->searchText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setFreeText(Ljava/lang/String;)V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Text entered is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/CustomizeDate;->searchText:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "from y m d "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "to y m d "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "from h m "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "to h m "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v12, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v6, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    const/16 v13, 0xc

    if-lt v12, v13, :cond_13

    const/16 v12, 0xa

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    add-int/lit8 v13, v13, -0xc

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    :goto_1
    const/16 v12, 0xc

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    const/16 v13, 0xc

    if-ge v12, v13, :cond_14

    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setGreaterThanDateStr(Ljava/lang/String;)V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "on click greater + "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    const/16 v13, 0xc

    if-lt v12, v13, :cond_15

    const/16 v12, 0xa

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    add-int/lit8 v13, v13, -0xc

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    :goto_3
    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xc

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    const/16 v13, 0xc

    if-ge v12, v13, :cond_16

    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setLessThanDateStr(Ljava/lang/String;)V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "on click less + "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-nez v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    const-string v13, "True"

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setoptionsDeepTraversalStr(Ljava/lang/String;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v15, 0x8

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setFoldIdStr(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v12, :cond_12

    const-string v12, "CustomizeDate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fzhang email Search Adapter search is called mMailbox = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v14, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " foldid ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "accoundid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v14, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    invoke-virtual {v12}, Lcom/android/email/EmailSearchAdapter;->search()I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.android.email.activity.messagelistxl.searchaccoundid"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v12, "com.android.email.activity.messagelistxl.searchfolderid"

    invoke-virtual {v3, v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/android/email/activity/CustomizeDate;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    goto/16 :goto_0

    :cond_13
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    :cond_14
    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_2

    :cond_15
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    :cond_16
    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    const-string v13, "NoneId"

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    const-string v13, "False"

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setoptionsDeepTraversalStr(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->cancelButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v5, 0x7f080374

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040050

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string v1, "isCustomizeDate"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mYear:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mMonth:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mDay:I

    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->readArgumentsFromIntent()V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mController:Lcom/android/email/Controller;

    new-instance v1, Lcom/android/email/EmailSearchAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailSearchAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v2}, Lcom/android/email/EmailSearchAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->init()V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->todayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneDayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneYearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->customizeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->searchButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->enableCustomView()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "CustomizeDate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restoreAccountWithId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.email.AccountId"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/email/activity/CustomizeDate;->mYear:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDate;->mMonth:I

    iget v5, p0, Lcom/android/email/activity/CustomizeDate;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/email/activity/CustomizeDate;->mYear:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDate;->mMonth:I

    iget v5, p0, Lcom/android/email/activity/CustomizeDate;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3

    check-cast p2, Landroid/app/DatePickerDialog;

    iget v0, p0, Lcom/android/email/activity/CustomizeDate;->mYear:I

    iget v1, p0, Lcom/android/email/activity/CustomizeDate;->mMonth:I

    iget v2, p0, Lcom/android/email/activity/CustomizeDate;->mDay:I

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/DatePickerDialog;->updateDate(III)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isCustomizeDate"

    iget-boolean v1, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
