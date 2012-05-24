.class public Lcom/android/calendar/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"


# instance fields
.field private mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private onAccountsLoaded(Landroid/accounts/Account;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const-string v0, "preferences_default_view"

    iget-object v3, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    const-string v4, "DETAIL_VIEW"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "preferredDetailedView"

    :cond_1
    :goto_0
    const-string v3, "account_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    sget-object v3, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->getTaskId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/android/calendar/Utils;->sTaskId:Ljava/lang/Integer;

    :cond_2
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "DAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    :goto_1
    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x2002

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/calendar/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->finish()V

    return-void

    :cond_3
    const-string v3, "DAY"

    iget-object v4, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    const-string v5, "VIEW"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "DAY"

    goto :goto_0

    :cond_4
    const-string v3, "preferredDetailedView"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v3, "0"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    const-string v3, "START_ACTIVITY"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    const-string v3, "START_ACTIVITY"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "EDITEVENT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-class v0, Lcom/android/calendar/EditEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v1, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    invoke-static {v1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v3

    if-nez v3, :cond_7

    const v3, 0x256859

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    :cond_7
    const-string v3, "beginTime"

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.android.exchange"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v4, v3

    array-length v5, v1

    add-int/2addr v4, v5

    array-length v5, v2

    add-int v0, v4, v5

    if-lez v0, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/calendar/LaunchActivity;->onAccountsLoaded(Landroid/accounts/Account;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    if-nez p1, :cond_1

    sget-boolean v5, Lcom/android/calendar/Utils;->CHECK_ACCOUNT:Z

    if-eqz v5, :cond_1

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "com.android.exchange"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v5, v3

    array-length v6, v1

    add-int/2addr v5, v6

    array-length v6, v2

    add-int v0, v5, v6

    if-nez v0, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "authorities"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "com.android.calendar"

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4, v8}, Lcom/android/calendar/LaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v7}, Lcom/android/calendar/LaunchActivity;->onAccountsLoaded(Landroid/accounts/Account;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v7}, Lcom/android/calendar/LaunchActivity;->onAccountsLoaded(Landroid/accounts/Account;)V

    goto :goto_0
.end method
