.class Lcom/android/phone/InCallScreen$1;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/16 v11, 0x97

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handler : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handler: ignoring message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; we\'re destroyed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handler: handling message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while not in foreground"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHandler: unexpected message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v6, v5}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_2
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v6, v5}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto :goto_0

    :sswitch_4
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v6, v5}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_5
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v2, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v10, :cond_3

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-static {v5, v6, v2, v8, v8}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v5, v6, :cond_0

    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Got MMI_COMPLETE, finishing InCallScreen..."

    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    :cond_4
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Got MMI_COMPLETE, but Call exist..."

    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-char v7, v7

    invoke-static {v6, v5, v7}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Received PHONE_CDMA_CALL_WAITING event ..."

    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->closeOptionsMenu()V

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)I

    move-result v5

    if-ne v5, v10, :cond_7

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/phone/CallCard;->setOrientation(I)V

    :cond_7
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_0

    :sswitch_e
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v5}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    :sswitch_f
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v5}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    :sswitch_10
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "- DISMISSING mPausePromptDialog."

    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    :cond_8
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5, v8}, Lcom/android/phone/InCallScreen;->access$1902(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :sswitch_11
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v9, v5, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v4, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    :sswitch_17
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5, v8}, Lcom/android/phone/InCallScreen;->access$2502(Lcom/android/phone/InCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATE_IN_SERVICE : start call "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    :cond_a
    const-string v5, "android.intent.action.CALL"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v5}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v1

    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to deliver non-CALL action; get origin call intent - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    :cond_b
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_18
    const-string v5, "InCallScreen"

    const-string v6, "Message Received : CMD_GET_PRL_VER!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setPrlupdateSuccessString()V

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    :cond_c
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_18
        0x33 -> :sswitch_4
        0x34 -> :sswitch_6
        0x35 -> :sswitch_5
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6e -> :sswitch_0
        0x70 -> :sswitch_b
        0x72 -> :sswitch_c
        0x73 -> :sswitch_d
        0x76 -> :sswitch_e
        0x77 -> :sswitch_f
        0x78 -> :sswitch_10
        0x79 -> :sswitch_11
        0x7a -> :sswitch_12
        0x7b -> :sswitch_13
        0x7c -> :sswitch_14
        0x82 -> :sswitch_15
        0x96 -> :sswitch_16
        0x97 -> :sswitch_17
    .end sparse-switch
.end method
