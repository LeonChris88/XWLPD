.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPhoneState"
.end annotation


# instance fields
.field private mBattchg:I

.field private mCall:I

.field private mCallStartTime:J

.field private mCallheld:I

.field private mCallsetup:I

.field private mIgnoreRing:Z

.field private mRingingNumber:Ljava/lang/String;

.field private mRingingType:I

.field private mRoam:I

.field private mRssi:I

.field private mService:I

.field private mSignal:I

.field private mStat:I

.field private mStateChangeHandler:Landroid/os/Handler;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStopRing:Z

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    invoke-direct {p0, v3, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->signalToRssi(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLcom/android/internal/telephony/Connection;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->scoClosed()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->stopRing()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCindResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCindTestResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCsqResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateCallHeld()V

    return-void
.end method

.method private asuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->gsmAsuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0
.end method

.method private cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I
    .locals 13

    const/4 v12, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/16 v10, -0x4b

    if-lt v0, v10, :cond_2

    const/4 v6, 0x4

    :goto_0
    const/16 v10, -0x5a

    if-lt v1, v10, :cond_6

    const/4 v7, 0x4

    :goto_1
    if-ge v6, v7, :cond_a

    move v2, v6

    :goto_2
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    if-eq v10, v12, :cond_0

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, -0x28a

    if-lt v3, v10, :cond_b

    const/4 v8, 0x4

    :goto_3
    if-le v5, v12, :cond_f

    const/4 v9, 0x4

    :goto_4
    if-ge v8, v9, :cond_13

    move v4, v8

    :cond_1
    :goto_5
    if-le v2, v4, :cond_14

    :goto_6
    return v2

    :cond_2
    const/16 v10, -0x55

    if-lt v0, v10, :cond_3

    const/4 v6, 0x3

    goto :goto_0

    :cond_3
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_4

    const/4 v6, 0x2

    goto :goto_0

    :cond_4
    const/16 v10, -0x64

    if-lt v0, v10, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    :cond_6
    const/16 v10, -0x6e

    if-lt v1, v10, :cond_7

    const/4 v7, 0x3

    goto :goto_1

    :cond_7
    const/16 v10, -0x82

    if-lt v1, v10, :cond_8

    const/4 v7, 0x2

    goto :goto_1

    :cond_8
    const/16 v10, -0x96

    if-lt v1, v10, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    :cond_a
    move v2, v7

    goto :goto_2

    :cond_b
    const/16 v10, -0x2ee

    if-lt v3, v10, :cond_c

    const/4 v8, 0x3

    goto :goto_3

    :cond_c
    const/16 v10, -0x384

    if-lt v3, v10, :cond_d

    const/4 v8, 0x2

    goto :goto_3

    :cond_d
    const/16 v10, -0x41a

    if-lt v3, v10, :cond_e

    const/4 v8, 0x1

    goto :goto_3

    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    :cond_f
    const/4 v10, 0x5

    if-le v5, v10, :cond_10

    const/4 v9, 0x3

    goto :goto_4

    :cond_10
    const/4 v10, 0x3

    if-le v5, v10, :cond_11

    const/4 v9, 0x2

    goto :goto_4

    :cond_11
    const/4 v10, 0x1

    if-le v5, v10, :cond_12

    const/4 v9, 0x1

    goto :goto_4

    :cond_12
    const/4 v9, 0x0

    goto :goto_4

    :cond_13
    move v4, v9

    goto :goto_5

    :cond_14
    move v2, v4

    goto :goto_6
.end method

.method private getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I
    .locals 2

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p2, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getCindTestResult()Landroid/bluetooth/AtCommandResult;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CIND: (\"service\",(0-1)),(\"call\",(0-1)),(\"callsetup\",(0-3)),(\"callheld\",(0-2)),(\"signal\",(0-5)),(\"roam\",(0-1)),(\"battchg\",(0-5))"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private gsmAsuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 5

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/16 v4, 0x10

    if-lt v0, v4, :cond_1

    const/4 v1, 0x5

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    if-lt v0, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    if-lt v0, v2, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    if-lt v0, v3, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V
    .locals 22

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updatePhoneState() mPhone="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mFCall="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mBCall="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mRCall="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mCallsetup="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mCall="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mCallheld="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v18

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/android/phone/BluetoothHandsfree;->access$3202(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;

    sget-object v18, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)V

    :cond_0
    :goto_0
    sget-object v18, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    :cond_1
    :goto_1
    sget-object v18, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_2

    :cond_2
    :goto_2
    sget-object v18, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_3

    :cond_3
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v5, :cond_5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    :cond_4
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    if-eqz p1, :cond_5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+CIEV: 2,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v8, :cond_7

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_7

    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+CIEV: 3,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v14

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CDMA call state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " prev state:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v0, v9, :cond_a

    sget-object v18, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_9

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_8

    const-string v18, "+CIEV: 3,2"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    const-string v18, "+CIEV: 4,1"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    const-string v18, "+CIEV: 3,3"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    const-string v18, "+CIEV: 3,0"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)V

    :cond_9
    sget-object v18, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_a

    sget-object v18, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_a

    const-string v18, "+CIEV: 2,1"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    const-string v18, "+CIEV: 3,0"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v9, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v7

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_c

    if-eqz v7, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    if-eqz p1, :cond_d

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+CIEV: 4,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_d
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_12

    if-eq v8, v13, :cond_12

    const/4 v12, 0x0

    const/16 v17, 0x80

    if-nez p2, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p2

    if-nez p2, :cond_e

    const-string v18, "Bluetooth HS/HF"

    const-string v19, "Could not get a handle on Connection object for new incoming call"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz p2, :cond_f

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v17

    :cond_f
    if-nez v12, :cond_10

    const-string v12, ""

    :cond_10
    if-nez v5, :cond_11

    if-eqz v6, :cond_16

    :cond_11
    if-eqz p1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+CCWA: \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+CIEV: 3,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    :pswitch_2
    const/4 v5, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_1

    :pswitch_3
    const/4 v8, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)V

    goto/16 :goto_1

    :pswitch_4
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_1

    :pswitch_6
    const/4 v8, 0x1

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_2

    :pswitch_8
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_13

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_13
    const/4 v5, 0x1

    const/4 v6, 0x2

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_3

    :cond_14
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_15

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-eqz v18, :cond_15

    const/4 v7, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v19

    invoke-static/range {v18 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3802(Lcom/android/phone/BluetoothHandsfree;J)J

    goto/16 :goto_4

    :cond_15
    const/4 v7, 0x0

    goto :goto_6

    :cond_16
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v18

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private ring()Landroid/bluetooth/AtCommandResult;
    .locals 5

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendRingUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    const-string v2, "RING"

    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendClipUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CLIP: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private scoClosed()V
    .locals 7

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendClipUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendRingUpdate()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private sendUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private signalToRssi(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x13

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x1f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private stopRing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    return-void
.end method

.method private declared-synchronized toCindResult()Landroid/bluetooth/AtCommandResult;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$4000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v4

    iput v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->signalToRssi(I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized toCregString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CREG: 1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized toCsqResult()Landroid/bluetooth/AtCommandResult;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CSQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",99"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateBatteryState(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    monitor-enter p0

    :try_start_0
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    mul-int/lit8 v2, v0, 0x5

    :try_start_1
    div-int v0, v2, v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    if-eq v2, v0, :cond_0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 7,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Bluetooth HS/HF"

    const-string v1, "updateBtPhoneStateAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized updateCallHeld()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CIEV: 4,0"

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateServiceState(ZLandroid/telephony/ServiceState;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4, p2}, Lcom/android/phone/BluetoothHandsfree;->access$2502(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    if-nez v2, :cond_5

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-eq v2, v4, :cond_1

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-eqz p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIEV: 1,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_1
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    if-eq v1, v4, :cond_2

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    if-eqz p1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIEV: 6,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_2
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    if-eq v3, v4, :cond_3

    iput v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    const/4 v3, 0x5

    :cond_6
    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized updateSignalState(Landroid/content/Intent;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->signalToRssi(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 5,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Signal Strength null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized handleVoipCallStateChange()V
    .locals 24

    monitor-enter p0

    const/16 v17, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updatePhoneState() mPhone="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mFCall="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mBCall="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mRCall="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCallsetup="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCall="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCallheld="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v20

    move-object/from16 v0, v20

    if-eq v11, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/android/phone/BluetoothHandsfree;->access$3202(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;

    sget-object v20, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)V

    :cond_0
    :goto_0
    sget-object v20, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    :cond_1
    :goto_1
    sget-object v20, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_2

    :goto_2
    sget-object v20, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v21

    aget v20, v20, v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v20, :pswitch_data_3

    :goto_3
    :pswitch_0
    const/4 v2, 0x1

    if-eqz v2, :cond_2

    :try_start_1
    const-string v20, "BT_TEST_SANGYOON"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "BT_TEST_SANGYOON"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "call : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", callsetup : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", callheld : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mAudioPossible : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mUserWantsAudio : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v20

    if-ne v11, v0, :cond_5

    const-string v20, "voip"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v20

    if-eqz v20, :cond_14

    if-eqz v2, :cond_3

    const-string v20, "BT_TEST_SANGYOON"

    const-string v21, "VoIPRinging"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v8, 0x1

    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    const-string v20, "BT_TEST_SANGYOON"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "call : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", callsetup : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", callheld : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mAudioPossible : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mUserWantsAudio : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "BT_TEST_SANGYOON"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mCall : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isHeadsetConnected() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", sendUpdate : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mAudioPossible : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mUserWantsAudio : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v5, :cond_7

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    :cond_6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    if-eqz v17, :cond_7

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CIEV: 2,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v8, :cond_9

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v20

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_9

    :cond_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CIEV: 3,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v0, v9, :cond_c

    sget-object v20, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v20

    if-ne v9, v0, :cond_b

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v20

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_a

    const-string v20, "+CIEV: 3,2"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    const-string v20, "+CIEV: 3,3"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    const-string v20, "+CIEV: 3,0"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)V

    :cond_b
    sget-object v20, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v20

    if-ne v9, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v20

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_c

    const-string v20, "+CIEV: 2,1"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    const-string v20, "+CIEV: 3,0"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v9, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    :cond_d
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_1a

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-eqz v20, :cond_1a

    const/4 v7, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v21

    invoke-static/range {v20 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3802(Lcom/android/phone/BluetoothHandsfree;J)J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v6, :cond_e

    if-eqz v7, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    if-eqz v17, :cond_f

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CIEV: 4,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_f
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_12

    if-eq v8, v13, :cond_12

    const/4 v12, 0x0

    const/16 v18, 0x80

    if-nez v12, :cond_10

    const-string v12, ""

    :cond_10
    if-nez v5, :cond_11

    if-eqz v6, :cond_1b

    :cond_11
    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v20

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_12

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CCWA: \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CIEV: 3,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20

    :pswitch_2
    const/4 v5, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_1

    :pswitch_3
    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)V

    goto/16 :goto_1

    :pswitch_4
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    goto/16 :goto_1

    :pswitch_6
    const/4 v8, 0x1

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    goto/16 :goto_2

    :pswitch_8
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_13

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_13
    const/4 v5, 0x1

    const/4 v6, 0x2

    goto/16 :goto_3

    :pswitch_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :cond_14
    :try_start_5
    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v20

    if-eqz v20, :cond_16

    if-eqz v2, :cond_15

    const-string v20, "BT_TEST_SANGYOON"

    const-string v21, "VoIPDialing"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)V

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    goto/16 :goto_4

    :catch_0
    move-exception v20

    goto/16 :goto_5

    :cond_16
    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v20

    if-eqz v20, :cond_18

    if-eqz v2, :cond_17

    const-string v20, "BT_TEST_SANGYOON"

    const-string v21, "VoIPActivated"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_4

    :cond_18
    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v20

    if-eqz v20, :cond_4

    if-eqz v2, :cond_19

    const-string v20, "BT_TEST_SANGYOON"

    const-string v21, "VoIPIdle"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_1b
    :try_start_6
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v20

    and-int/lit8 v20, v20, 0x8

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
