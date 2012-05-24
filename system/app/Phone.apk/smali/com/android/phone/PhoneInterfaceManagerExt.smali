.class public Lcom/android/phone/PhoneInterfaceManagerExt;
.super Lcom/android/internal/telephony/ITelephonyExt$Stub;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    }
.end annotation


# instance fields
.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private nitzString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->publish()V

    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private publish()V
    .locals 1

    const-string v0, "phoneext"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public getActiveCallsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallBaseTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallerName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHoldCallsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getMsisdnavailable()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPin2LockKey()I
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPin2Key()I

    move-result v0

    return v0
.end method

.method public getPinLockKey()I
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPinKey()I

    move-result v0

    return v0
.end method

.method public getSimPin2Retry()I
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPin2Retry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPin2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPinRetry()I
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPinRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPinRetry()I

    move-result v0

    return v0
.end method

.method public getSimPuk2Retry()I
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPuk2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPukRetry()I
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPukRetry()I

    move-result v0

    return v0
.end method

.method public getTelephonyFeature()Ljava/util/Map;
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTelephonyFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->start()V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->checkTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeInfo() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    return-object v1
.end method

.method public isConferenceCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFirstCallDialingAndSecondCallActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHeadsetConnected()Z
    .locals 2

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSimFDNEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isSimFDNEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyVoIPCallStateChangeIntoBT()V
    .locals 3

    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "notifyVoIPCallStateChangeIntoBT entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "notifyVoIPCallStateChangeIntoBT bluetoothHandsfree is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->handleVoipCallStateChange()V

    :cond_0
    return-void
.end method

.method public sendRequestToRIL([B[BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBTUserWantsAudioOn(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0

    return-void
.end method

.method public showPopupCallScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supplyPerso(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supplyPin2(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->start()V

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->checkPin2(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;-><init>(Lcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->start()V

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->checkPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public switchHoldingAndActive()V
    .locals 0

    return-void
.end method

.method public turnOnBluetooth()V
    .locals 0

    return-void
.end method

.method public turnOnSpeaker(Z)V
    .locals 0

    return-void
.end method

.method public updateRAFTproximity(I)V
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "updateRAFTproximity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
