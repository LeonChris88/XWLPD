.class public Lcom/android/email/activity/UpgradeAccounts;
.super Landroid/app/ListActivity;
.source "UpgradeAccounts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/UpgradeAccounts$FolderConversion;,
        Lcom/android/email/activity/UpgradeAccounts$ConversionTask;,
        Lcom/android/email/activity/UpgradeAccounts$UIHandler;,
        Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;,
        Lcom/android/email/activity/UpgradeAccounts$ViewHolder;,
        Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    }
.end annotation


# static fields
.field private static ctx:Landroid/content/Context;

.field static mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static sCheckSettingRunning:Z

.field private static sConversionHasRun:Z

.field private static final sConversionInProgress:Ljava/lang/Object;

.field private static sNoCredentialsError:Z


# instance fields
.field private account_eas:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

.field private account_eas_num:I

.field private mAdapter:Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

.field public mContext:Landroid/content/Context;

.field private mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

.field private mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

.field private mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

.field private mListView:Landroid/widget/ListView;

.field private mProceedButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionInProgress:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sNoCredentialsError:Z

    sput-boolean v1, Lcom/android/email/activity/UpgradeAccounts;->sCheckSettingRunning:Z

    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$8;

    invoke-direct {v0}, Lcom/android/email/activity/UpgradeAccounts$8;-><init>()V

    sput-object v0, Lcom/android/email/activity/UpgradeAccounts;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;-><init>(Lcom/android/email/activity/UpgradeAccounts;)V

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$ConversionTask;)Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionInProgress:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sNoCredentialsError:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/email/activity/UpgradeAccounts;->sNoCredentialsError:Z

    return p0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/email/activity/UpgradeAccounts;->sCheckSettingRunning:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/UpgradeAccounts;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts;->onClickOk()V

    return-void
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/email/activity/UpgradeAccounts;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->account_eas:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/UpgradeAccounts;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/UpgradeAccounts;->account_eas_num:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/UpgradeAccounts;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/UpgradeAccounts;->fetchCredentialsDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/UpgradeAccounts;ZLandroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UpgradeAccounts;->showHidePassword(ZLandroid/widget/EditText;)V

    return-void
.end method

.method public static actionStart(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/UpgradeAccounts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static bulkUpgradesRequired(Landroid/content/Context;Lcom/android/email/Preferences;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v1

    array-length v3, v1

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/android/email/Account;->getBackupFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static copyAccount(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "compatibilityUuid=?"

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p0, v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No conversion, account exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/android/email/LegacyConversions;->makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v2

    :goto_1
    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v4

    if-ne v4, v2, :cond_3

    move v4, v2

    :goto_2
    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v5

    if-ne v5, v2, :cond_4

    move v5, v2

    :goto_3
    sget-object v6, Lcom/android/email/activity/UpgradeAccounts;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZLandroid/accounts/AccountManagerCallback;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(I)V

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_1

    :cond_3
    move v4, v0

    goto :goto_2

    :cond_4
    move v5, v0

    goto :goto_3
.end method

.method static copyAccountForUpdate(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v7, v0

    :goto_0
    if-nez v7, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    move-object v7, v0

    goto :goto_0

    :cond_0
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncWindow()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/email/Account;->isNotifyNewMail()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrate()Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x2

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/android/email/Account;->isAddSignature()Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x2000

    :cond_3
    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getDeletePolicy()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-virtual {p1}, Lcom/android/email/Account;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncScheduleData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/4 v1, 0x0

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x5

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    :cond_4
    :try_start_1
    invoke-virtual {v7, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    invoke-virtual {v7, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    invoke-virtual {p1}, Lcom/android/email/Account;->getEmailSize()B

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncLookbackData()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    invoke-virtual {p1}, Lcom/android/email/Account;->getCalendarSyncLookbackData()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    new-instance v1, Landroid/accounts/Account;

    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.android.contacts"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v2, "com.android.contacts"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-string v0, "com.android.calendar"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v2, "com.android.calendar"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    const/4 v0, 0x1

    :goto_6
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    iget v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "accountKey"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "accountKey"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v7, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrateWhenSilent()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_2
    move-exception v0

    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static deleteAccountStore(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lcom/android/email/mail/store/LocalStore;->newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/store/LocalStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/LocalStore;->delete()V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while deleting account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const v2, 0x7f08014c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static doBulkUpgradeIfNecessary(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/email/activity/UpgradeAccounts;->bulkUpgradesRequired(Landroid/content/Context;Lcom/android/email/Preferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    if-eq v1, v0, :cond_0

    invoke-static {p0}, Lcom/android/email/activity/UpgradeAccounts;->actionStart(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static estimateWork(Landroid/content/Context;Lcom/android/email/Account;)I
    .locals 10

    const/4 v6, -0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, p0, v8}, Lcom/android/email/mail/store/LocalStore;->newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/store/LocalStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/LocalStore;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    array-length v7, v3

    add-int/2addr v1, v7

    const/4 v4, 0x0

    :goto_0
    array-length v7, v3

    if-ge v4, v7, :cond_0

    aget-object v2, v3, v4

    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v7

    add-int/2addr v1, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/android/email/mail/store/LocalStore;->getStoredAttachmentCount()I

    move-result v7

    add-int/2addr v1, v7

    invoke-virtual {v5}, Lcom/android/email/mail/store/LocalStore;->close()V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v1

    :goto_1
    return v6

    :catch_0
    move-exception v0

    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while estimating account size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while estimating account size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private fetchCredentialsDialog(I)V
    .locals 9

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f04002d

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v6, 0x7f10003d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v6, 0x7f10001c

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v7}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v7}, Lcom/android/email/Account;->getPasswd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f100048

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/email/activity/UpgradeAccounts$4;

    invoke-direct {v6, p0, v4, v5}, Lcom/android/email/activity/UpgradeAccounts$4;-><init>(Lcom/android/email/activity/UpgradeAccounts;Landroid/widget/CheckBox;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080042

    new-instance v8, Lcom/android/email/activity/UpgradeAccounts$7;

    invoke-direct {v8, p0, v0, p1}, Lcom/android/email/activity/UpgradeAccounts$7;-><init>(Lcom/android/email/activity/UpgradeAccounts;Landroid/view/View;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080043

    new-instance v8, Lcom/android/email/activity/UpgradeAccounts$6;

    invoke-direct {v8, p0, p1}, Lcom/android/email/activity/UpgradeAccounts$6;-><init>(Lcom/android/email/activity/UpgradeAccounts;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/UpgradeAccounts$5;

    invoke-direct {v7, p0, p1}, Lcom/android/email/activity/UpgradeAccounts$5;-><init>(Lcom/android/email/activity/UpgradeAccounts;I)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const v6, 0x7f0800cd

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private loadAccountFromPreference()V
    .locals 8

    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/android/email/Account;->getBackupFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v4, v0, [Lcom/android/email/Account;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_3

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/android/email/Account;->getBackupFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    aget-object v5, v2, v1

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    array-length v5, v4

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->finish()V

    :goto_2
    return-void

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/email/activity/UpgradeAccounts;->loadAccountInfoArray([Lcom/android/email/Account;)V

    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** Preparing to upgrade "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " accounts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private loadAccountInfoArray([Lcom/android/email/Account;)V
    .locals 3

    array-length v2, p1

    new-array v2, v2, [Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iput-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, p1, v1

    invoke-direct {v0, v2}, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;-><init>(Lcom/android/email/Account;)V

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onClickOk()V
    .locals 0

    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->finish()V

    return-void
.end method

.method private showHidePassword(ZLandroid/widget/EditText;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v1, 0x91

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p2}, Landroid/widget/EditText;->invalidate()V

    return-void

    :cond_0
    const/16 v1, 0x81

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method private updateList()V
    .locals 2

    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;-><init>(Lcom/android/email/activity/UpgradeAccounts;)V

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mAdapter:Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts;->mAdapter:Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public createAcounts(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)Z
    .locals 36

    const/16 v28, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getPasswd()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v33

    const/16 v30, 0x0

    const/16 v34, 0x0

    const/16 v22, 0x0

    const-string v3, ""

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v24, :cond_1

    const-string v3, "@"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/4 v3, 0x0

    aget-object v3, v25, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    if-nez v30, :cond_0

    const/4 v3, 0x1

    aget-object v3, v25, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v25, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    :cond_0
    if-nez v22, :cond_1

    if-eqz v30, :cond_1

    move-object/from16 v22, v30

    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const-wide/16 v4, -0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const v5, 0x7f0800ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v14, v28

    :goto_0
    return v3

    :cond_2
    const/16 v32, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v31, Ljava/net/URI;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    :goto_1
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v14, v28

    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    :goto_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_1

    :cond_4
    new-instance v2, Ljava/net/URI;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v13

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v26

    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getSendPort()I

    move-result v18

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getSendAddr()Ljava/lang/String;

    move-result-object v29

    new-instance v3, Ljava/net/URI;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v4}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v27

    new-instance v14, Ljava/net/URI;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v21}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v23

    invoke-virtual/range {v23 .. v23}, Ljava/net/URISyntaxException;->printStackTrace()V

    const/4 v3, 0x0

    move-object/from16 v14, v28

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v14}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public deletePreference(I)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    invoke-static {p0, v2, p1, v3}, Lcom/android/email/activity/UpgradeAccounts;->deleteAccountStore(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V

    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2, v1}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    const v3, 0x7fffffff

    invoke-virtual {v2, p1, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setProgress(II)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while deleting account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sCheckSettingRunning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts;->onClickOk()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10027e
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/email/activity/UpgradeAccounts;->ctx:Landroid/content/Context;

    const v0, 0x7f0400a0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mListView:Landroid/widget/ListView;

    const v0, 0x7f10027e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-ne p1, v6, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f040056

    invoke-virtual {v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f100134

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const-string v0, "AndroidMail.Main"

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/android/email/activity/UpgradeAccounts;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080042

    new-instance v7, Lcom/android/email/activity/UpgradeAccounts$3;

    invoke-direct {v7, p0, v3, v1}, Lcom/android/email/activity/UpgradeAccounts$3;-><init>(Lcom/android/email/activity/UpgradeAccounts;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080043

    new-instance v7, Lcom/android/email/activity/UpgradeAccounts$2;

    invoke-direct {v7, p0}, Lcom/android/email/activity/UpgradeAccounts$2;-><init>(Lcom/android/email/activity/UpgradeAccounts;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/email/activity/UpgradeAccounts$1;

    invoke-direct {v6, p0}, Lcom/android/email/activity/UpgradeAccounts$1;-><init>(Lcom/android/email/activity/UpgradeAccounts;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    :cond_0
    return-object v5
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->cancelTask(Landroid/os/AsyncTask;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    return-void
.end method

.method public onGetLicenseKey(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V
    .locals 5

    const-string v0, "AndroidMail.Main"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/email/activity/UpgradeAccounts;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "isCheckIMEI"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts;->account_eas:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iput p2, p0, Lcom/android/email/activity/UpgradeAccounts;->account_eas_num:I

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/UpgradeAccounts;->showDialog(I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    sget-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts;->loadAccountFromPreference()V

    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts;->updateList()V

    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->startConversion()V

    :cond_0
    return-void
.end method

.method public startConversion()V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eas"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "UpgradeAccounts"

    const-string v3, "This is upgrade account"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/UpgradeAccounts;->onGetLicenseKey(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    :try_start_1
    const-string v2, "UpgradeAccounts"

    const-string v3, "This is create account"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    new-instance v5, Ljava/net/URI;

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v6}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v6}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    const-string v2, "UpgradeAccounts"

    const-string v3, "There are same accounts in Database____"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v2, "UpgradeAccounts"

    const-string v3, "There is no an account____"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/UpgradeAccounts;->onGetLicenseKey(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "imap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pop3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_5
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v2}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Email"

    const-string v3, "This is upgrade account"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3, v1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;-><init>(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V

    iput-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    new-instance v5, Ljava/net/URI;

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v6}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v6}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts;->mContext:Landroid/content/Context;

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    const-string v2, "Email"

    const-string v3, "There are same accounts in Database____"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v2, "Email"

    const-string v3, "There is no an account____"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3, v1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;-><init>(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V

    iput-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
