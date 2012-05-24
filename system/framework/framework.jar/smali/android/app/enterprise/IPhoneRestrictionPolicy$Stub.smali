.class public abstract Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;
.super Landroid/os/Binder;
.source "IPhoneRestrictionPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IPhoneRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IPhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IPhoneRestrictionPolicy"

.field static final TRANSACTION_addIncomingCallRestriction:I = 0x6

.field static final TRANSACTION_addIncomingSmsRestriction:I = 0x1b

.field static final TRANSACTION_addNumberOfIncomingCalls:I = 0x13

.field static final TRANSACTION_addNumberOfIncomingSms:I = 0x27

.field static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x14

.field static final TRANSACTION_addNumberOfOutgoingSms:I = 0x28

.field static final TRANSACTION_addOutgoingCallRestriction:I = 0x5

.field static final TRANSACTION_addOutgoingSmsRestriction:I = 0x1a

.field static final TRANSACTION_canIncomingCall:I = 0xa

.field static final TRANSACTION_canIncomingSms:I = 0x1f

.field static final TRANSACTION_canOutgoingCall:I = 0x9

.field static final TRANSACTION_canOutgoingSms:I = 0x1e

.field static final TRANSACTION_checkDataCallLimit:I = 0x30

.field static final TRANSACTION_checkEnableUseOfPacketData:I = 0x2f

.field static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x29

.field static final TRANSACTION_enableLimitNumberOfCalls:I = 0xd

.field static final TRANSACTION_enableLimitNumberOfSms:I = 0x20

.field static final TRANSACTION_getDataCallLimitEnabled:I = 0x2b

.field static final TRANSACTION_getEmergencyCallOnly:I = 0xc

.field static final TRANSACTION_getIncomingCallRestriction:I = 0x2

.field static final TRANSACTION_getIncomingSmsRestriction:I = 0x17

.field static final TRANSACTION_getLimitOfDataCalls:I = 0x2d

.field static final TRANSACTION_getLimitOfIncomingCalls:I = 0x10

.field static final TRANSACTION_getLimitOfIncomingSms:I = 0x24

.field static final TRANSACTION_getLimitOfOutgoingCalls:I = 0x12

.field static final TRANSACTION_getLimitOfOutgoingSms:I = 0x26

.field static final TRANSACTION_getOutgoingCallRestriction:I = 0x1

.field static final TRANSACTION_getOutgoingSmsRestriction:I = 0x16

.field static final TRANSACTION_isLimitNumberOfCallsEnabled:I = 0xe

.field static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x21

.field static final TRANSACTION_removeIncomingCallRestriction:I = 0x4

.field static final TRANSACTION_removeIncomingSmsRestriction:I = 0x19

.field static final TRANSACTION_removeOutgoingCallRestriction:I = 0x3

.field static final TRANSACTION_removeOutgoingSmsRestriction:I = 0x18

.field static final TRANSACTION_resetCallsCount:I = 0x15

.field static final TRANSACTION_resetDataCallLimitCounter:I = 0x2e

.field static final TRANSACTION_resetSmsCount:I = 0x22

.field static final TRANSACTION_setDataCallLimitEnabled:I = 0x2a

.field static final TRANSACTION_setEmergencyCallOnly:I = 0xb

.field static final TRANSACTION_setIncomingCallRestriction:I = 0x8

.field static final TRANSACTION_setIncomingSmsRestriction:I = 0x1d

.field static final TRANSACTION_setLimitOfDataCalls:I = 0x2c

.field static final TRANSACTION_setLimitOfIncomingCalls:I = 0xf

.field static final TRANSACTION_setLimitOfIncomingSms:I = 0x23

.field static final TRANSACTION_setLimitOfOutgoingCalls:I = 0x11

.field static final TRANSACTION_setLimitOfOutgoingSms:I = 0x25

.field static final TRANSACTION_setOutgoingCallRestriction:I = 0x7

.field static final TRANSACTION_setOutgoingSmsRestriction:I = 0x1c

.field static final TRANSACTION_updateDataLimitState:I = 0x32

.field static final TRANSACTION_updateDateAndDataCallCounters:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPhoneRestrictionPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/enterprise/IPhoneRestrictionPolicy;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    :sswitch_0
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v9

    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getOutgoingCallRestriction(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v1, v10

    goto :goto_1

    :sswitch_2
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v9

    :goto_2
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getIncomingCallRestriction(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v1, v10

    goto :goto_2

    :sswitch_3
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeOutgoingCallRestriction()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2

    move v10, v9

    :cond_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeIncomingCallRestriction()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3

    move v10, v9

    :cond_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_4

    move v10, v9

    :cond_4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5

    move v10, v9

    :cond_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6

    move v10, v9

    :cond_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_7

    move v10, v9

    :cond_7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_8

    move v10, v9

    :cond_8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canIncomingCall(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_9

    move v10, v9

    :cond_9
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v9

    :goto_3
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setEmergencyCallOnly(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_a

    move v10, v9

    :cond_a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_b
    move v1, v10

    goto :goto_3

    :sswitch_c
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v1, v9

    :goto_4
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getEmergencyCallOnly(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_c

    move v10, v9

    :cond_c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_d
    move v1, v10

    goto :goto_4

    :sswitch_d
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v1, v9

    :goto_5
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->enableLimitNumberOfCalls(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_e

    move v10, v9

    :cond_e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_f
    move v1, v10

    goto :goto_5

    :sswitch_e
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isLimitNumberOfCallsEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_10

    move v10, v9

    :cond_10
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfIncomingCalls(III)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_11

    move v10, v9

    :cond_11
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfIncomingCalls(I)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfOutgoingCalls(III)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_12

    move v10, v9

    :cond_12
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfOutgoingCalls(I)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfIncomingCalls()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_13

    move v10, v9

    :cond_13
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfOutgoingCalls()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_14

    move v10, v9

    :cond_14
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetCallsCount()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_15

    move v10, v9

    :cond_15
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move v1, v9

    :goto_6
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getOutgoingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    move v1, v10

    goto :goto_6

    :sswitch_17
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v1, v9

    :goto_7
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getIncomingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    move v1, v10

    goto :goto_7

    :sswitch_18
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeOutgoingSmsRestriction()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_18

    move v10, v9

    :cond_18
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeIncomingSmsRestriction()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_19

    move v10, v9

    :cond_19
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1a

    move v10, v9

    :cond_1a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1b

    move v10, v9

    :cond_1b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1c

    move v10, v9

    :cond_1c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1d

    move v10, v9

    :cond_1d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1e

    move v10, v9

    :cond_1e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canIncomingSms(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1f

    move v10, v9

    :cond_1f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    move v1, v9

    :goto_8
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->enableLimitNumberOfSms(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_20

    move v10, v9

    :cond_20
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_21
    move v1, v10

    goto :goto_8

    :sswitch_21
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isLimitNumberOfSmsEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_22

    move v10, v9

    :cond_22
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetSmsCount()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_23

    move v10, v9

    :cond_23
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfIncomingSms(III)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_24

    move v10, v9

    :cond_24
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfIncomingSms(I)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfOutgoingSms(III)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_25

    move v10, v9

    :cond_25
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfOutgoingSms(I)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfIncomingSms()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_26

    move v10, v9

    :cond_26
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfOutgoingSms()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_27

    move v10, v9

    :cond_27
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->decreaseNumberOfOutgoingSms()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_28

    move v10, v9

    :cond_28
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    move v1, v9

    :goto_9
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setDataCallLimitEnabled(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_29

    move v10, v9

    :cond_29
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2a
    move v1, v10

    goto :goto_9

    :sswitch_2b
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getDataCallLimitEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2b

    move v10, v9

    :cond_2b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfDataCalls(JJJ)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2c

    move v10, v9

    :cond_2c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfDataCalls(I)J

    move-result-wide v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetDataCallLimitCounter()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2d

    move v10, v9

    :cond_2d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    move v1, v9

    :goto_a
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->checkEnableUseOfPacketData(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2e

    move v10, v9

    :cond_2e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2f
    move v1, v10

    goto :goto_a

    :sswitch_30
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->checkDataCallLimit()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_30

    move v10, v9

    :cond_30
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->updateDateAndDataCallCounters(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->updateDataLimitState()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
