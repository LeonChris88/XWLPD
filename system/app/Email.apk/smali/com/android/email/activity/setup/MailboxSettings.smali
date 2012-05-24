.class public Lcom/android/email/activity/setup/MailboxSettings;
.super Landroid/preference/PreferenceActivity;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field private mNeedsSave:Z

.field private final mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSyncIntervalPref:Landroid/preference/ListPreference;

.field private mSyncLookbackPref:Landroid/preference/ListPreference;

.field private mSyncOffpeakIntervalPref:Landroid/preference/ListPreference;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    new-instance v0, Lcom/android/email/activity/setup/MailboxSettings$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/MailboxSettings$1;-><init>(Lcom/android/email/activity/setup/MailboxSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/MailboxSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updatePreferenceSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updateObjects()V

    return-void
.end method

.method private enablePreferences(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncOffpeakIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method

.method private getOffpeakSyncSchedule()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    return v0
.end method

.method private getPeakSyncSchedule()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    return v0
.end method

.method private getSyncLookback()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    return v0
.end method

.method private onDataLoaded()V
    .locals 9

    const v8, 0x7f0a0012

    const v7, 0x7f0a0011

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-static {p0, v2}, Lcom/android/email/activity/ActivityResourceInterface;->getMailboxServerName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f08007f

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    const v4, 0x7f0a000b

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    const v4, 0x7f0a000c

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncOffpeakIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncOffpeakIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncOffpeakIntervalPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updatePreferenceSummary()V

    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    return-void

    :cond_2
    const v3, 0x7f080080

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/setup/MailboxSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getPeakSyncSchedule()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncOffpeakIntervalPref:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getOffpeakSyncSchedule()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getSyncLookback()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveToDatabase()V
    .locals 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Email"

    const-string v1, "Saving mailbox settings..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    iget-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v0, Lcom/android/email/activity/setup/MailboxSettings$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/setup/MailboxSettings$2;-><init>(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/MailboxSettings$2;->executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_0
.end method

.method public static final start(Landroid/app/Activity;J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/MailboxSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateObjects()V
    .locals 7

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncOffpeakIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakSchedule(I)V

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setOffPeakSchedule(I)V

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v0, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput v2, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput v1, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput v0, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    return-void
.end method

.method private updatePreferenceSummary()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncOffpeakIntervalPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncOffpeakIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-wide/16 v7, -0x1

    const/4 v6, 0x4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "MAILBOX_ID"

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v7

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v4, 0x7f06000b

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/MailboxSettings;->addPreferencesFromResource(I)V

    const-string v4, "check_frequency_peak"

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/MailboxSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    const-string v4, "check_frequency_offpeak"

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/MailboxSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncOffpeakIntervalPref:Landroid/preference/ListPreference;

    const-string v4, "sync_window"

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/MailboxSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncOffpeakIntervalPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    if-eqz p1, :cond_2

    const-string v4, "MailboxSettings.account"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v4, "MailboxSettings.mailbox"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const-string v4, "MailboxSettings.needsSave"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v4, :cond_3

    new-instance v5, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;-><init>(Lcom/android/email/activity/setup/MailboxSettings;J)V

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v5, v4}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->saveToDatabase()V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onBackPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "MailboxSettings.account"

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "MailboxSettings.mailbox"

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "MailboxSettings.needsSave"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
