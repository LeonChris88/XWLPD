.class public Lcom/android/phone/OutgoingCallBroadcaster;
.super Landroid/app/Activity;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private handleNonVoiceCapable(Landroid/content/Intent;)V
    .locals 7

    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNonVoiceCapable: handling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on non-voice-capable device..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "tel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- relaunching as a DIAL intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    :goto_0
    return-void

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    goto :goto_0
.end method

.method private startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 10

    const/high16 v9, 0x1000

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "startSipCallOptionHandler..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v2, v3, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2, v2}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    const-string v3, "android.phone.extra.calltype"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ril.currentsystem"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    if-ne v3, v8, :cond_5

    sget-boolean v5, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doReceive: starting network_regist_videocall , network_regist_videocall : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v5, "2G"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "Inside SKT RAD call type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADOutgoingCallUri(Landroid/net/Uri;)V

    invoke-static {p4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADOutgoingCallNumber(Ljava/lang/String;)V

    const-class v0, Lcom/android/phone/RoamingAutoDialOption;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "android.phone.extra.calltype"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_2
    if-ne v3, v8, :cond_3

    const-string v0, "OutgoingCallBroadcaster"

    const-string v3, "Inside Video call type"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "Videocalltype"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_SELECT_PHONE"

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSipCallOptionHandler(): calling startActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 35

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "enterprise_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x10400f6

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate: this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", icicle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - getIntent() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - configuration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p1, :cond_5

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "onCreate: non-null icicle!  Bailing out, not sending NEW_OUTGOING_CALL broadcast..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-boolean v4, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->handleNonVoiceCapable(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v4, "restricted_call_for_qc_issue"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/phone/PhoneApp;->sRestrictedCallForQC:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "onCreate: sPreventCallForQC is true - restricted call"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v6, 0x7f0e02d9

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual {v13}, Lcom/android/phone/PhoneApp;->hasRestrictedCallMessageForQC()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/phone/PhoneApp;->sRestrictedCallForQC:Z

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_8
    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneUtilsExt;->OutgoingCallSKTRAD(Landroid/content/Intent;)V

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneUtilsExt;->OutgoingCallSKTWZone(Landroid/content/Intent;)V

    :cond_9
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "911"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "tel"

    const-string v6, "119"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    :cond_a
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_b
    const-string v4, "videocall"

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    const-string v4, "android.intent.extra.VTCallDialer"

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_c

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - mVTCallDialer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value of callType from invoked application"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_18

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/16 v21, 0x1

    :goto_1
    const/16 v27, 0x0

    const-string v4, "enterprise_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v26, :cond_d

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v27

    :cond_d
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "mPolicy != null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    if-eqz v27, :cond_e

    if-nez v21, :cond_e

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/app/enterprise/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v18

    :cond_e
    if-nez v21, :cond_19

    if-nez v18, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x10400f6

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "!canMakeCall - finish"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    const-string v4, "limited_service_state_for_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "CALL_END"

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setCallEnd(Z)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isEvdoOnly()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const-string v6, "Don\'t Start evdo Only mode."

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoIPActivated()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoIPRingOrDialing()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v6, 0x7f0e03d3

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallEnd()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isAutoDial()Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v22, Landroid/content/Intent;

    const-string v4, "android.intent.action.fake.SIDCHANGE"

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v31, Landroid/content/Intent;

    const-string v4, "android.intent.action.lgt.ACCESSCODE"

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "CALL"

    const/4 v6, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "NUMBER"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_13
    const-string v4, "*574"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v6, 0x7f0e0493

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/phone/PhoneUtilsExt;->OutgoingCallRoamingArea(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_15
    const-string v4, "*114"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    new-instance v29, Landroid/content/Intent;

    const-string v4, "android.lgt.intent.action.OPEN_WAPURL"

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "wapurl://http://mobile.mylgt.co.kr/CallCmd.mservice"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_16
    if-eqz v10, :cond_a

    const-string v4, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_17

    const-string v4, ""

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v6, 0x7f0e047e

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_18
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "android.intent.action.CALL"

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "Attempt to deliver non-CALL action; forcing to CALL"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.intent.action.CALL"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1a
    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    if-nez v17, :cond_1b

    const-string v4, "limited_service_state_for_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    if-eqz v28, :cond_22

    :cond_1b
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "For VIDEO CALL"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "com.android.phone.videocall"

    if-eqz v21, :cond_21

    const-string v12, "android.intent.action.CALL_EMERGENCY"

    :goto_2
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_1c

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- updating action from CALL_PRIVILEGED to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1d
    :goto_3
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    if-eqz v21, :cond_25

    const-string v4, "limited_service_state_for_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "114"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1e
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_1f

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot call emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with CALL Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.DIAL"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_20

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate(): calling startActivity for Dialer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_21
    const-string v12, "com.android.phone.videocall"

    goto/16 :goto_2

    :cond_22
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "For VOICE CALL"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v21, :cond_24

    const-string v12, "android.intent.action.CALL_EMERGENCY"

    :goto_4
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_23

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- updating action from CALL_PRIVILEGED to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_24
    const-string v12, "android.intent.action.CALL"

    goto :goto_4

    :cond_25
    const/4 v15, 0x0

    if-nez v17, :cond_26

    :goto_5
    const-string v4, "limited_service_state_for_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, v13, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_30

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DTMFflag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "com.android.phone.extra.FLASH_DTMF"

    const/4 v8, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v13, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_30

    if-nez v17, :cond_30

    const-string v4, "com.android.phone.extra.FLASH_DTMF"

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    iget-object v4, v13, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setEmptyFlash(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_26
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "ACTION_CALL For B2B APP VIDEO CALL"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "com.android.phone.videocall"

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v15, 0x0

    goto :goto_5

    :cond_27
    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    if-nez v21, :cond_29

    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_28

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot call non-emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with EMERGENCY_CALL Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_29
    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_2a
    const-string v4, "com.android.phone.videocall"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "Inside VIDEO CALL INTENT ACTION from Dialer for U1"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_2b
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_2c

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_2d
    const/16 v30, 0x1

    iget-object v4, v13, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v6, :cond_2e

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v6, 0x7f0e047c

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "Not Surport 3rd Call in roaming area!!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_2e
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->fgConnectionsIsIncoming()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsExt;->isThrWayCallAvailable(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_30

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "No Service 3rd Call!!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v6, 0x7f0e047d

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_2f
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash()Z

    move-result v4

    if-eqz v4, :cond_30

    const/16 v30, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    sget-object v4, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setTHRWAYCallState(Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;)V

    :cond_30
    const-string v4, "restrict_dial_voip_in_use"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoIPActivated()Z

    move-result v4

    if-nez v4, :cond_31

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoIPRingOrDialing()Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_31
    const v4, 0x7f0e03d3

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_32
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    if-eqz v10, :cond_33

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    :cond_33
    const-string v4, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_34

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "onCreate: SEND_EMPTY_FLASH..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_34
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "onCreate: null or empty number, setting callNow=true..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.android.phone.videocall"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "change action video to voice call"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.intent.action.CALL"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_35
    const/4 v15, 0x1

    :cond_36
    if-eqz v15, :cond_38

    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_37

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate(): callNow case! Calling placeCall(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    :cond_38
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v32

    const-string v4, "sip"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    :cond_39
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_3a
    const-string v4, "com.android.phone.CALL_ORIGIN"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_41

    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_3b

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call origin is passed ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    :goto_6
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_3c

    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v5, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3c
    const-string v4, "ims_vt_call"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    if-nez v28, :cond_3d

    if-eqz v17, :cond_3e

    :cond_3d
    const-string v4, "android.intent.extra.VTCallDialer"

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3e
    const-string v4, "auto_test"

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    const-string v4, "auto_test"

    move/from16 v0, v25

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3f
    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string v4, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {v5, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.android.phone.videocall"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "Inside VIDEO CALL INTENT ACTION from Dialer only for U1"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.phone.extra.calltype"

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_7
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_40

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v7, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/phone/OutgoingCallBroadcaster;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_41
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_42

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "Call origin is not passed. Reset current one."

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_43
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "Inside VOICE CALL INTENT ACTION from Dialer for U1"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.phone.extra.calltype"

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog: unexpected ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0275

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->removeDialog(I)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
