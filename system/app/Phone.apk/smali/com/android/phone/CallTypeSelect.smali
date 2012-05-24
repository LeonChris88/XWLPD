.class public Lcom/android/phone/CallTypeSelect;
.super Landroid/preference/PreferenceActivity;
.source "CallTypeSelect.java"


# instance fields
.field private mSStype:Ljava/lang/String;

.field private mVideoCall:Landroid/preference/PreferenceScreen;

.field private mVoiceCall:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string v0, "forwarding"

    iput-object v0, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/CallTypeSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "button_voicecall"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/CallTypeSelect;->mVoiceCall:Landroid/preference/PreferenceScreen;

    const-string v2, "button_videocall"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/CallTypeSelect;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/CallTypeSelect;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SS_Type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v2, "CallTypeSelct"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deliverd extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v3, "forwarding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CallTypeSelct"

    const-string v3, "Set the title: forwarding"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0e0079

    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->setTitle(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallTypeSelect;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const v2, 0x7f0e02c2

    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->setTitle(I)V

    const-string v2, "CallTypeSelct"

    const-string v3, "Set the title: barring"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v1, "forwarding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/CallTypeSelect;->finish()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/phone/CallTypeSelect;->mVoiceCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v5, "forwarding"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.GsmUmtsCallForwardOptions"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v6

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sec.android.app.callsetting"

    const-string v5, "com.sec.android.app.callsetting.voicecall.CallBarring"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v5, "forwarding"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.GsmUmtsVideoCallForwardOptions"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sec.android.app.callsetting"

    const-string v5, "com.sec.android.app.callsetting.videocall.VideoCallBarring"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
