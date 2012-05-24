.class public Lcom/android/phone/CallController;
.super Landroid/os/Handler;
.source "CallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallController$1;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/android/phone/CallController;


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

.field private mOriginCallIntent:Landroid/content/Intent;

.field private mRtsValueForKor:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallController;->mOriginCallIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallController constructor: app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    return-void
.end method

.method private checkForOtaspCall(Landroid/content/Intent;)V
    .locals 3

    invoke-static {p1}, Lcom/android/phone/OtaUtils;->isOtaspCallIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForOtaspCall: handling OTASP intent! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/phone/OtaUtils;->setupOtaspCall(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "checkForOtaspCall: not an OTASP call."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    .locals 4

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    :pswitch_3
    const-string v1, "limited_service_state_for_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/CallController;->getKorCallStatusCode(Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInitialNumber(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> got EXTRA_ACTUAL_NUMBER_TO_DIAL; returning \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getKorCallStatusCode(Z)Lcom/android/phone/Constants$CallStatusCode;
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    if-nez v4, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    const-string v4, "limited_service_state_for_skt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_2
    move-object v1, v3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :sswitch_0
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_2

    :sswitch_2
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    :cond_6
    if-nez p1, :cond_8

    iget-object v4, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :cond_8
    if-nez p1, :cond_9

    if-eqz v0, :cond_2

    :cond_9
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    if-nez p1, :cond_2

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    :sswitch_3
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_4
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_5
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_6
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_7
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_8
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_9
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_a
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_b
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_c
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_d
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_e
    if-nez p1, :cond_a

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :cond_a
    :sswitch_f
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :sswitch_10
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_1
        0xb -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x16 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_7
        0x8 -> :sswitch_6
        0xb -> :sswitch_6
        0xc -> :sswitch_6
        0xd -> :sswitch_6
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x10 -> :sswitch_8
        0x11 -> :sswitch_8
        0x16 -> :sswitch_8
        0xfe -> :sswitch_8
        0xff -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x2 -> :sswitch_a
        0x3 -> :sswitch_b
        0x6 -> :sswitch_c
        0x7 -> :sswitch_e
        0x8 -> :sswitch_d
        0xb -> :sswitch_d
        0xc -> :sswitch_d
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_d
        0x10 -> :sswitch_f
        0x11 -> :sswitch_f
        0x16 -> :sswitch_f
        0xff -> :sswitch_10
    .end sparse-switch
.end method

.method private handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 4

    sget-boolean v1, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOutgoingCallError(): status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v1, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOutgoingCallError: unexpected status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "CallController"

    const-string v2, "handleOutgoingCallError: SUCCESS isn\'t an error"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    const v2, 0x7f0e01ab

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_8
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_9
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_a
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_OUTGOING_CALL_IN_USIM_FDN_MODE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_b
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_c
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_d
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_e
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_f
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_10
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_11
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :pswitch_12
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;
    .locals 4

    const-class v1, Lcom/android/phone/CallController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/CallController;

    invoke-direct {v0, p0}, Lcom/android/phone/CallController;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    :goto_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CallController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;
    .locals 24

    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCallInternal()...  intent = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v12, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v3, 0x0

    const-string v2, "limited_service_state_for_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallController;->initRtsValueForKor()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v18

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/phone/CallController;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- actual number to dial: \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    if-eqz v23, :cond_4

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    :goto_0
    const-string v2, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v2, v0, v4, v1}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    if-nez v4, :cond_8

    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    :cond_3
    :goto_1
    return-object v17

    :cond_4
    const/16 v21, 0x0

    goto :goto_0

    :catch_0
    move-exception v11

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_6

    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Voicemail number not reachable in current SIM card state."

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v17, v18

    goto :goto_1

    :cond_6
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_7
    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v4, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v2, "limited_service_state_for_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v14, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isDefaultIMEI()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    :cond_9
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "45001"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xc

    if-ne v2, v6, :cond_a

    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    :cond_a
    const-string v2, "limited_service_state_for_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "placeCall: block the call because usim fdn"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_OUTGOING_CALL_IN_USIM_FDN_MODE:Lcom/android/phone/Constants$CallStatusCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIccCard Exeception = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_b
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_d

    const-string v2, "1"

    const-string v6, "REG"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const-string v2, "1"

    const-string v6, "AUTH"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v16, :cond_c

    if-nez v15, :cond_d

    :cond_c
    sget-object v18, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    :cond_d
    const-string v2, "roaming_auto_dial"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v14, :cond_e

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isEmergencyNumberToChange(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADDialingToKoreaEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForSKTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_f
    :goto_2
    const-string v2, "roaming_auto_dial_for_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_10
    if-eqz v14, :cond_12

    if-nez v13, :cond_12

    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attempted to call emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    :cond_11
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_2

    :cond_12
    if-nez v14, :cond_13

    if-eqz v13, :cond_13

    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with non-emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- failing call."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    :cond_13
    if-eqz v14, :cond_16

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_14

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_16

    :cond_14
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: Emergency number detected with status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_15
    sget-object v18, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> UPDATING status to: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_16
    const-string v2, "limited_service_state_for_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v14, :cond_19

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_17

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_17

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_17

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_17

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_17

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_17

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_17

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_19

    :cond_17
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: Emergency number detected with status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_18
    sget-object v18, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> UPDATING status to: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_19
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_1d

    if-eqz v14, :cond_1b

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_1b

    const-string v2, "CallController"

    const-string v6, "placeCall: Trying to make emergency call while POWER_OFF!"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    if-nez v2, :cond_1a

    new-instance v2, Lcom/android/phone/EmergencyCallHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    :cond_1a
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    invoke-virtual {v2, v4}, Lcom/android/phone/EmergencyCallHelper;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V

    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_1b
    const-string v2, "limited_service_state_for_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-nez v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    const/4 v6, 0x2

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1c

    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v17, v18

    goto/16 :goto_1

    :cond_1d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_20

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_1e

    const-string v2, "placeCall: isOtaSpNumber() returns true"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_1e
    const-string v2, "*574"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->RoamingOTA:Z

    :goto_3
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Roaming OTA Call : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v6, Lcom/android/phone/PhoneUtilsExt;->RoamingOTA:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_1f
    iget-object v2, v8, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v2, :cond_20

    iget-object v2, v8, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    :cond_20
    const-string v2, "limited_service_state_for_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    if-nez v14, :cond_21

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->getKorCallStatusCode(Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v17

    if-nez v17, :cond_3

    :cond_21
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    invoke-virtual {v12}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    if-nez v14, :cond_22

    if-eqz v13, :cond_24

    :cond_22
    const/4 v6, 0x1

    :goto_4
    iget-object v7, v12, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    invoke-static/range {v2 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall: unknown callStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    :cond_23
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->RoamingOTA:Z

    goto/16 :goto_3

    :cond_24
    const/4 v6, 0x0

    goto :goto_4

    :pswitch_0
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_25
    iget-object v2, v12, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v6, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v6, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    :cond_26
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/phone/InCallUiState;->showDialpad:Z

    const/4 v2, 0x0

    iput-object v2, v12, Lcom/android/phone/InCallUiState;->dialpadDigits:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_27

    if-nez v14, :cond_27

    const-string v2, "CallController"

    const-string v6, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v12, v2}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    :cond_27
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v6, :cond_28

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    const/4 v2, 0x1

    const-wide/16 v6, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/phone/CallController;->sendEmptyMessageDelayed(IJ)Z

    :cond_28
    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    :pswitch_1
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_29
    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    :pswitch_2
    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getIntentOfOriginCall()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallController;->mOriginCallIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getRtsValueForKor()[Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "THREEWAY_CALLERINFO_DISPLAY_DONE..."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public initRtsValueForKor()V
    .locals 9

    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "ril.skt.network_regist"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "place call : ril = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Idle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    if-nez v2, :cond_1

    new-array v2, v4, [Ljava/lang/Integer;

    iput-object v2, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    :cond_1
    const-string v2, ";"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v3, v1, v6

    const-string v4, "Status"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v2, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v3, v1, v5

    const-string v4, "Idle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v3, v1, v7

    const-string v4, "CS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v2, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v3, v1, v8

    const-string v4, "PS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    goto :goto_0
.end method

.method public placeCall(Landroid/content/Intent;)V
    .locals 10

    sget-boolean v7, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall()...  intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_0
    sget-boolean v7, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "                extras = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v7, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    if-nez p1, :cond_2

    const-string v7, "CallController"

    const-string v8, "placeCall: called with null intent"

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "placeCall: called with null intent"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v7, "CallController"

    const-string v8, "placeCall: intent had no data"

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "placeCall: intent had no data"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v7, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- scheme: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_4
    const-string v7, "android.intent.action.CALL"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "CallController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "placeCall: unexpected intent action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    iget-object v7, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->checkForOtaspCall(Landroid/content/Intent;)V

    :cond_6
    iget-object v7, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v1, p1}, Lcom/android/phone/InCallUiState;->setProviderOverlayInfo(Landroid/content/Intent;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v5

    sget-boolean v7, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==> placeCall(): status from placeCallInternal(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_7
    sget-object v7, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v5, v7, :cond_9

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    iget-object v7, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    :goto_1
    iput-object p1, p0, Lcom/android/phone/CallController;->mOriginCallIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    return-void

    :cond_8
    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearProviderOverlayInfo()V

    goto :goto_0

    :cond_9
    sget-boolean v7, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- placeCall: failure when initiating outgoing call: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0, v5}, Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_1
.end method
