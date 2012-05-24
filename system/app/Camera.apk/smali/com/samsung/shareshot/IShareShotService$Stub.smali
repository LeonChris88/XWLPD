.class public abstract Lcom/samsung/shareshot/IShareShotService$Stub;
.super Landroid/os/Binder;
.source "IShareShotService.java"

# interfaces
.implements Lcom/samsung/shareshot/IShareShotService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/shareshot/IShareShotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/shareshot/IShareShotService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.shareshot.IShareShotService"

.field static final TRANSACTION_ackActivateUser:I = 0x9

.field static final TRANSACTION_activateUser:I = 0x7

.field static final TRANSACTION_addRecvCount:I = 0x1b

.field static final TRANSACTION_addRecvFailCount:I = 0x21

.field static final TRANSACTION_addSendCount:I = 0x1e

.field static final TRANSACTION_addSendFailCount:I = 0x24

.field static final TRANSACTION_cancelActivateUser:I = 0x8

.field static final TRANSACTION_cancelRecv:I = 0xd

.field static final TRANSACTION_checkAppID:I = 0x16

.field static final TRANSACTION_deactivateUser:I = 0xb

.field static final TRANSACTION_getAutoPreview:I = 0x11

.field static final TRANSACTION_getIsCameraOnForeground:I = 0xf

.field static final TRANSACTION_getLocalPersonInfo:I = 0x5

.field static final TRANSACTION_getRecvCount:I = 0x19

.field static final TRANSACTION_getRecvFailCount:I = 0x1f

.field static final TRANSACTION_getSendCount:I = 0x1c

.field static final TRANSACTION_getSendFailCount:I = 0x22

.field static final TRANSACTION_getUserList:I = 0x6

.field static final TRANSACTION_isAutoStart:I = 0x13

.field static final TRANSACTION_isJoinedIn:I = 0x3

.field static final TRANSACTION_joinIn:I = 0x1

.field static final TRANSACTION_leaveOut:I = 0x2

.field static final TRANSACTION_rejectActivateUser:I = 0xa

.field static final TRANSACTION_sendAcceptActivateRequestMessage:I = 0x17

.field static final TRANSACTION_sendRejectActivateRequestMessage:I = 0x18

.field static final TRANSACTION_setAutoPreview:I = 0x10

.field static final TRANSACTION_setAutoStart:I = 0x12

.field static final TRANSACTION_setIsCameraOnForeground:I = 0xe

.field static final TRANSACTION_setLocalPersonInfo:I = 0x4

.field static final TRANSACTION_setNotificationConfirmed:I = 0x14

.field static final TRANSACTION_setRecvCount:I = 0x1a

.field static final TRANSACTION_setRecvFailCount:I = 0x20

.field static final TRANSACTION_setSendCount:I = 0x1d

.field static final TRANSACTION_setSendFailCount:I = 0x23

.field static final TRANSACTION_shareFile:I = 0xc

.field static final TRANSACTION_testSnS:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/shareshot/IShareShotService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.shareshot.IShareShotService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/shareshot/IShareShotService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/shareshot/IShareShotService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/shareshot/IShareShotService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/shareshot/IShareShotService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->joinIn()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->leaveOut()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->isJoinedIn()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->setLocalPersonInfo(Lcom/samsung/dmc/ux/db/PersonalSettingInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->getLocalPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->getUserList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_7
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->activateUser(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->cancelActivateUser(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->ackActivateUser(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->rejectActivateUser(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->deactivateUser(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->shareFile(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->cancelRecv(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->setIsCameraOnForeground(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    :sswitch_f
    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->getIsCameraOnForeground()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v0, v4

    :goto_3
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->setAutoPreview(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto :goto_3

    :sswitch_11
    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->getAutoPreview()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v0, v4

    :goto_4
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->setAutoStart(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto :goto_4

    :sswitch_13
    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->isAutoStart()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v0, v4

    :goto_5
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->setNotificationConfirmed(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto :goto_5

    :sswitch_15
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->testSnS()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->checkAppID()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_17
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/samsung/dmc/ux/db/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/UserInfo;

    :goto_6
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->sendAcceptActivateRequestMessage(Lcom/samsung/dmc/ux/db/UserInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :sswitch_18
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/samsung/dmc/ux/db/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/UserInfo;

    :goto_7
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->sendRejectActivateRequestMessage(Lcom/samsung/dmc/ux/db/UserInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    :sswitch_19
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->getRecvCount()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->setRecvCount(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1b
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->addRecvCount()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1c
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->getSendCount()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1d
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->setSendCount(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1e
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->addSendCount()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1f
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->getRecvFailCount()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_20
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->setRecvFailCount(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_21
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->addRecvFailCount()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_22
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->getSendFailCount()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_23
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotService$Stub;->setSendFailCount(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_24
    const-string v3, "com.samsung.shareshot.IShareShotService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotService$Stub;->addSendFailCount()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
