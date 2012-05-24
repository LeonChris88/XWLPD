.class public Lcom/android/phone/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Settings$MyHandler;,
        Lcom/android/phone/Settings$SettingsDBObserver;
    }
.end annotation


# instance fields
.field co:Lcom/android/phone/Settings$SettingsDBObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field mCallHandler:Landroid/os/Handler;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDataClicked:Z

.field private mDataDialog:Landroid/app/AlertDialog$Builder;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/Settings$MyHandler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLteDataServicePref:Landroid/preference/Preference;

.field mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/Settings$1;-><init>(Lcom/android/phone/Settings;)V

    iput-object v0, p0, Lcom/android/phone/Settings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/Settings;->mCallHandler:Landroid/os/Handler;

    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00c1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00b9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00ba

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00bb

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00bc

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00be

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00bd

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00bf

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00c0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/Settings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/Settings;->mDataClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/Settings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/Settings;->mDataClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/Settings;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/Settings;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Settings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->setSelectedDataRoamingMode(I)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/Settings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private isSimReady()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setDBObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/phone/Settings$SettingsDBObserver;

    iget-object v2, p0, Lcom/android/phone/Settings;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/Settings$SettingsDBObserver;-><init>(Lcom/android/phone/Settings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/phone/Settings;->co:Lcom/android/phone/Settings$SettingsDBObserver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/Settings;->co:Lcom/android/phone/Settings$SettingsDBObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setSelectedDataRoamingMode(I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gsm.operator.numeric"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_national_roaming_mode"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "NetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simNumeric"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "plmnNumeric"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "NetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simMCC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "plmnMCC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string v4, "NetworkSettings"

    const-string v5, "mButtonPreferredDataRoamingMode : setDataRoamingEnabled(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v8, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "NetworkSettings"

    const-string v5, "mButtonPreferredDataRoamingMode - ROAMING_MODE_NATIONAL_ROMING_ONLY: setDataRoamingEnabled(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v8}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string v4, "NetworkSettings"

    const-string v5, "mButtonPreferredDataRoamingMode - ROAMING_MODE_NATIONAL_ROMING_ONLY - not in national roaming: setDataRoamingEnabled(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    :cond_3
    const-string v4, "NetworkSettings"

    const-string v5, "mButtonPreferredDataRoamingMode : setDataRoamingEnabled(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v8}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    iput-boolean v1, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v9, 0x7f06000d

    invoke-virtual {p0, v9}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v9, Lcom/android/phone/Settings$MyHandler;

    invoke-direct {v9, p0, v12}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iput-object v12, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iput-object v12, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    iput-object v12, p0, Lcom/android/phone/Settings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    const-string v9, "button_data_enabled_key"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    const-string v9, "button_roaming_key"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const-string v9, "preferred_network_mode_key"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v9, "button_data_usage_key"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    const-string v9, "pref_roaming_key"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    const-string v9, "cdma_lte_data_service_key"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/Settings;->mLteDataServicePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v9

    if-ne v9, v10, :cond_5

    move v1, v10

    :goto_0
    const-string v9, "national_roaming_mode_menu"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "data_national_roaming_mode"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b0004

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "preferred_network_mode"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    new-instance v9, Lcom/android/phone/CdmaOptions;

    iget-object v11, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v9, p0, v4, v11}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    new-instance v9, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v9, p0, v4}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "setup_prepaid_data_service_url"

    invoke-static {v9, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_d

    :cond_3
    iget-object v9, p0, Lcom/android/phone/Settings;->mLteDataServicePref:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_3
    const-string v9, "throttle"

    invoke-virtual {p0, v9}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ThrottleManager;

    new-instance v9, Lcom/android/phone/DataUsageListener;

    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v9, p0, v11, v4}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v1, v11

    goto/16 :goto_0

    :cond_6
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v9, 0x2

    if-ne v3, v9, :cond_9

    const-string v9, "limited_service_state_for_lgt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    new-instance v9, Lcom/android/phone/CdmaOptions;

    iget-object v12, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v9, p0, v4, v12}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v1, :cond_2

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v12, 0x7f08001d

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v12, 0x7f08001e

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "preferred_network_mode"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    if-eq v3, v10, :cond_a

    const-string v9, "limited_service_state_for_lgt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_a
    new-instance v9, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v9, p0, v4}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    const-string v9, "button_prefer_2g_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    const-string v9, "button_prefer_networkmode_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/NetworkModePreference;

    iput-object v9, p0, Lcom/android/phone/Settings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0b000e

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_b

    if-eqz v8, :cond_2

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_b
    iget-object v9, p0, Lcom/android/phone/Settings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/Settings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_c
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_d
    const-string v9, "NetworkSettings"

    const-string v11, "keep ltePref"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Settings;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Settings;->co:Lcom/android/phone/Settings$SettingsDBObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Settings;->co:Lcom/android/phone/Settings$SettingsDBObserver;

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_2

    iget-object v6, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    return v8

    :pswitch_0
    const/4 v2, 0x7

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v6, v8}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v5, "HTD"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "HTS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "3IE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "DRE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "TSI"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eq v0, v8, :cond_4

    :cond_3
    const-string v5, "DRE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x2

    if-ne v0, v5, :cond_5

    :cond_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/Settings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/Settings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0e0470

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e046f

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/phone/Settings$6;

    invoke-direct {v7, p0, v0}, Lcom/android/phone/Settings$6;-><init>(Lcom/android/phone/Settings;I)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/phone/Settings$5;

    invoke-direct {v7, p0}, Lcom/android/phone/Settings$5;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/phone/Settings;->setSelectedDataRoamingMode(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    iget-object v7, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v7, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    iget-object v7, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v7, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const-string v7, "ril.cdma.inecmmode"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v8, 0x11

    invoke-virtual {p0, v7, v8}, Lcom/android/phone/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_5

    const-string v7, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v7}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00c8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_1
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_7

    const-string v7, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v7}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/Settings;->mDataClicked:Z

    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e02c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    new-instance v9, Lcom/android/phone/Settings$4;

    invoke-direct {v9, p0}, Lcom/android/phone/Settings$4;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    new-instance v9, Lcom/android/phone/Settings$3;

    invoke-direct {v9, p0}, Lcom/android/phone/Settings$3;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    new-instance v8, Lcom/android/phone/Settings$2;

    invoke-direct {v8, p0}, Lcom/android/phone/Settings$2;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-ne p2, v7, :cond_8

    const-string v7, "onPreferenceTreeClick: preference == mButtonPreferredDataRoamingMode."

    invoke-static {v7}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/phone/Settings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v7, :cond_c

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "setup_prepaid_data_service_url"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, ""

    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v6, 0x0

    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/phone/Settings;->startActivity(Landroid/content/Intent;)V

    :goto_4
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v5, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_b
    const-string v7, "NetworkSettings"

    const-string v8, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v2, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    if-nez v2, :cond_0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v4, v3}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/Settings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/Settings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v2}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    :cond_5
    iget-object v2, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v2}, Lcom/android/phone/DataUsageListener;->resume()V

    invoke-direct {p0}, Lcom/android/phone/Settings;->setDBObserver()V

    const-string v2, "bootup_data_connection_popup"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/Settings;->isSimReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void

    :cond_7
    move v2, v3

    goto :goto_0
.end method
