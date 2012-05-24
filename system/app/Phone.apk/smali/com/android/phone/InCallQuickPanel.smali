.class public Lcom/android/phone/InCallQuickPanel;
.super Landroid/widget/RemoteViews;
.source "InCallQuickPanel.java"


# static fields
.field private static final mQuickPanelReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mPhoneApp:Lcom/android/phone/PhoneApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/InCallQuickPanel$1;

    invoke-direct {v0}, Lcom/android/phone/InCallQuickPanel$1;-><init>()V

    sput-object v0, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Lcom/android/phone/InCallQuickPanel;->initInCallQuickPanel()V

    return-void
.end method

.method private getCallBaseTime()J
    .locals 6

    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v0

    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-wide/16 v4, -0x1

    :goto_0
    return-wide v4

    :cond_2
    invoke-static {v3}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    goto :goto_0
.end method

.method private initInCallQuickPanel()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SHOW_SCREEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.MUTE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SPEAKER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.UNHOLD"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.END"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v5, 0x7f090144

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    const v5, 0x7f090145

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    const v5, 0x7f090148

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v5, 0x7f090149

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v5, 0x7f09014b

    invoke-virtual {p0, v5, v2}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v5, 0x7f09014c

    invoke-virtual {p0, v5, v2}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v5, 0x7f090146

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v5, 0x7f09014d

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static registerQuickPanelReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.phone.SHOW_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.phone.MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.phone.SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.phone.UNHOLD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.phone.END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public updateInCallQuickPanel()V
    .locals 10

    const v9, 0x7f090144

    const v8, 0x7f090147

    const v1, 0x7f09014f

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-wide/high16 v2, -0x8000

    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090145

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    invoke-virtual {p0, v9, v4}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const v0, 0x7f090146

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    invoke-virtual {p0, v8, v4}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    const v0, 0x7f09014a

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f090148

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    const v0, 0x7f090149

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    :goto_2
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f09014b

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    const v0, 0x7f09014c

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    :goto_3
    invoke-direct {p0}, Lcom/android/phone/InCallQuickPanel;->getCallBaseTime()J

    move-result-wide v2

    const-wide/16 v8, -0x1

    cmp-long v0, v2, v8

    if-lez v0, :cond_7

    invoke-virtual {p0, v1, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    :goto_4
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const v0, 0x7f09014e

    invoke-virtual {p0, v0, v7}, Lcom/android/phone/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f090145

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    invoke-virtual {p0, v9, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_0

    :cond_2
    const v0, 0x7f090146

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0, v8, v4}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    :goto_5
    const v0, 0x7f09014a

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, v8, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_5

    :cond_5
    const v0, 0x7f090148

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    const v0, 0x7f090149

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_2

    :cond_6
    const v0, 0x7f09014b

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    const v0, 0x7f09014c

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_3

    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto :goto_4
.end method
