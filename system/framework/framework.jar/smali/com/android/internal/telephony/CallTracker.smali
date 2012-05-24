.class public abstract Lcom/android/internal/telephony/CallTracker;
.super Landroid/os/Handler;
.source "CallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_DEFLECT_RESULT:I = 0x64

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_IMS_CALL_STATE_CHANGE:I = 0x11

.field protected static final EVENT_IMS_NEW_RINGING_CALL:I = 0x12

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field static final POLL_DELAY_MSEC:I = 0xfa


# instance fields
.field public cm:Lcom/android/internal/telephony/CommandsInterface;

.field protected lastRelevantPoll:Landroid/os/Message;

.field mDeviceInfo:Landroid/app/enterprise/IDeviceInfo;

.field mPhoneRP:Landroid/app/enterprise/IPhoneRestrictionPolicy;

.field protected needsPoll:Z

.field protected pendingOperations:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/app/enterprise/IDeviceInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    const-string v0, "device_info"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/app/enterprise/IDeviceInfo;

    const-string/jumbo v0, "phone_restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPhoneRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    return-void
.end method

.method private checkNoOperationsPending()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addNumberOfCalls(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CallTracker"

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method protected abstract handlePollCalls(Landroid/os/AsyncResult;)V
.end method

.method protected handleRadioAvailable()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    return-void
.end method

.method protected isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v0, p1}, Landroid/app/enterprise/IDeviceInfo;->addCallsCount(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v0}, Landroid/app/enterprise/IDeviceInfo;->isCallingCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/app/enterprise/IDeviceInfo;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, p2

    move-object v4, p1

    move v5, p7

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IDeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string v0, "CallTracker"

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected obtainNoPollCompleteMessage(I)Landroid/os/Message;
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected pollCallsAfterDelay()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected pollCallsWhenSafe()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;->checkNoOperationsPending()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public abstract registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract unregisterForVoiceCallEnded(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallStarted(Landroid/os/Handler;)V
.end method
