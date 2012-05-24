.class public Lcom/android/email/activity/setup/AccountSettingsUtils;
.super Ljava/lang/Object;
.source "AccountSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 4

    const/16 v3, 0x20

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_0
    const v2, 0x7f0800d0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    :goto_0
    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getAccountContentValues(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method public static commitSyncSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "peakTime"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "offPeakTime"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "days"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "peakStartTime"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "peakEndTime"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timeLimit"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "whileRoaming"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "attachmentEnabled"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "typeMsg=1"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static findProviderCustomer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 2

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getProviderCustomer(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 2

    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/email/VendorPolicyLoader;->findProviderForDomain(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    if-nez v0, :cond_0

    const v1, 0x7f06000e

    invoke-static {p0, p1, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const v1, 0x7f06000d

    invoke-static {p0, p1, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 7

    const/4 v6, 0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    if-ne v3, v6, :cond_2

    const-string v4, "provider"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "domain"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    const-string v4, "id"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    const-string v4, "label"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->label:Ljava/lang/String;

    const-string v4, "domain"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    const-string v4, "note"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Email"

    const-string v5, "Error while trying to load provider settings."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_2
    if-ne v3, v6, :cond_3

    :try_start_1
    const-string v4, "incoming"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    const-string v4, "uri"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    const-string v4, "username"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-ne v3, v6, :cond_4

    const-string v4, "outgoing"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    const-string v4, "uri"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    const-string v4, "username"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v4, "provider"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public static getAccountContentValues(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Landroid/content/ContentValues;
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "isDefault"

    iget-boolean v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "displayName"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "senderName"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "signature"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "syncInterval"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "ringtoneUri"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "flags"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "syncLookback"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "emailsize"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "conflict"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v3

    const-string v4, "peakDays"

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "peakStartMinute"

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "peakEndMinute"

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "peakSchedule"

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "offPeakSchedule"

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-eqz v4, :cond_1

    const-string v4, "roamingSchedule"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const-string v4, "calendarSyncLookback"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "smimeOwnCertificateAlias"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "smimeOptionsFlags"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "smimeSignAlgorithm"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeSignAlgorithm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "smimeEncryptionAlgorithm"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeEncryptionAlgorithm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "textPreview"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "securityFlags"

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "securitySyncKey"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "conversationMode"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "messageFormat"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "forwardWithFiles"

    iget-boolean v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "autoDownload"

    iget-boolean v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "recentMessages"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "showImage"

    iget-boolean v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "autoRetryTimes"

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_1
    const-string v4, "roamingSchedule"

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method private static getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x2e

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "imap"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pop3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pop"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    const-string v5, "mail"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz p1, :cond_3

    if-nez v2, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    if-eqz v2, :cond_5

    add-int/lit8 v4, v0, 0x1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_4

    goto :goto_0

    :cond_6
    move-object p1, p2

    goto :goto_1
.end method
