.class Lcom/android/phone/PhoneApp$1;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PhoneApp"

    const-string v4, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "PhoneApp"

    const-string v4, "show sim depersonal panel"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "PhoneApp"

    const-string v4, "- updating in-call notification from handler..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    :sswitch_5
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    :sswitch_6
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-static {v4, v3}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_7
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    :sswitch_8
    const-string v3, "limited_service_state_for_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-static {v4, v3}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_9
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    :goto_1
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->restoreNoiseSuppression(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->updateHeadsetRingtoneState()V

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/PhoneApp$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_2

    :sswitch_a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "READY"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3, v6}, Lcom/android/phone/PhoneApp;->access$702(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;

    :cond_7
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3, v6}, Lcom/android/phone/PhoneApp;->access$802(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :sswitch_b
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    sget-boolean v3, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->requestUpdateDockUi()V

    :cond_a
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->requestUpdateDockUi()V

    :cond_b
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_3

    :sswitch_c
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$1000(Lcom/android/phone/PhoneApp;)I

    move-result v2

    :goto_4
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    :sswitch_d
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3, p1}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3, p1}, Lcom/android/phone/PhoneApp;->access$1200(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_0

    :sswitch_10
    sput-boolean v4, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_0

    :sswitch_11
    sput-boolean v5, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "PhoneApp"

    const-string v4, "mHandler: EVENT_QC_ACQUIRE_CALL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/android/phone/PhoneApp;->sRestrictedCallForQC:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_0
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_1
        0x12 -> :sswitch_12
        0x14 -> :sswitch_f
        0x16 -> :sswitch_10
        0x17 -> :sswitch_11
        0x34 -> :sswitch_6
        0x35 -> :sswitch_7
        0x46 -> :sswitch_8
    .end sparse-switch
.end method
