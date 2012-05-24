.class public abstract Landroid/app/enterprise/IRestrictionPolicy$Stub;
.super Landroid/os/Binder;
.source "IRestrictionPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IRestrictionPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IRestrictionPolicy"

.field static final TRANSACTION_allowFactoryReset:I = 0x21

.field static final TRANSACTION_allowSettingsChanges:I = 0x29

.field static final TRANSACTION_isBackgroundDataEnabled:I = 0x26

.field static final TRANSACTION_isBackupAllowed:I = 0x1e

.field static final TRANSACTION_isBluetoothTetheringEnabled:I = 0xa

.field static final TRANSACTION_isCameraEnabled:I = 0x2

.field static final TRANSACTION_isCellularDataAllowed:I = 0x28

.field static final TRANSACTION_isClipboardAllowed:I = 0x20

.field static final TRANSACTION_isFactoryResetAllowed:I = 0x22

.field static final TRANSACTION_isHomeKeyEnabled:I = 0x24

.field static final TRANSACTION_isMicrophoneEnabled:I = 0x4

.field static final TRANSACTION_isMockLocationEnabled:I = 0x1c

.field static final TRANSACTION_isNFCEnabled:I = 0x6

.field static final TRANSACTION_isNonMarketAppAllowed:I = 0x2c

.field static final TRANSACTION_isScreenCaptureEnabled:I = 0x1a

.field static final TRANSACTION_isSdCardEnabled:I = 0x8

.field static final TRANSACTION_isSettingsChangesAllowed:I = 0x2a

.field static final TRANSACTION_isTetheringEnabled:I = 0x10

.field static final TRANSACTION_isUsbDebuggingEnabled:I = 0x12

.field static final TRANSACTION_isUsbKiesAvailable:I = 0x16

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x14

.field static final TRANSACTION_isUsbMediaPlayerAvailable:I = 0x18

.field static final TRANSACTION_isUsbTetheringEnabled:I = 0xc

.field static final TRANSACTION_isWifiTetheringEnabled:I = 0xe

.field static final TRANSACTION_setAllowNonMarketApps:I = 0x2b

.field static final TRANSACTION_setBackgroundData:I = 0x25

.field static final TRANSACTION_setBackup:I = 0x1d

.field static final TRANSACTION_setBluetoothTethering:I = 0x9

.field static final TRANSACTION_setCamera:I = 0x1

.field static final TRANSACTION_setCellularData:I = 0x27

.field static final TRANSACTION_setClipboardEnabled:I = 0x1f

.field static final TRANSACTION_setEnableNFC:I = 0x5

.field static final TRANSACTION_setHomeKeyState:I = 0x23

.field static final TRANSACTION_setMicrophoneState:I = 0x3

.field static final TRANSACTION_setMockLocation:I = 0x1b

.field static final TRANSACTION_setScreenCapture:I = 0x19

.field static final TRANSACTION_setSdCardState:I = 0x7

.field static final TRANSACTION_setTethering:I = 0xf

.field static final TRANSACTION_setUsbDebuggingEnabled:I = 0x11

.field static final TRANSACTION_setUsbKiesAvailability:I = 0x15

.field static final TRANSACTION_setUsbMassStorage:I = 0x13

.field static final TRANSACTION_setUsbMediaPlayerAvailability:I = 0x17

.field static final TRANSACTION_setUsbTethering:I = 0xb

.field static final TRANSACTION_setWifiTethering:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.app.enterprise.IRestrictionPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/enterprise/IRestrictionPolicy;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/enterprise/IRestrictionPolicy$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setCamera(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isCameraEnabled(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    :sswitch_3
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setMicrophoneState(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_3

    :sswitch_4
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    move v0, v2

    :goto_4
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isMicrophoneEnabled(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_6

    move v3, v2

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_4

    :sswitch_5
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    move v0, v2

    :goto_5
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setEnableNFC(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_8

    move v3, v2

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto :goto_5

    :sswitch_6
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isNFCEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_a

    move v3, v2

    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    move v0, v2

    :goto_6
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setSdCardState(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_b

    move v3, v2

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto :goto_6

    :sswitch_8
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isSdCardEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_d

    move v3, v2

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    move v0, v2

    :goto_7
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setBluetoothTethering(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_e

    move v3, v2

    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_f
    move v0, v3

    goto :goto_7

    :sswitch_a
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isBluetoothTetheringEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_10

    move v3, v2

    :cond_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    move v0, v2

    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setUsbTethering(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_11

    move v3, v2

    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_12
    move v0, v3

    goto :goto_8

    :sswitch_c
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isUsbTetheringEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_13

    move v3, v2

    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    move v0, v2

    :goto_9
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setWifiTethering(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_14

    move v3, v2

    :cond_14
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_15
    move v0, v3

    goto :goto_9

    :sswitch_e
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isWifiTetheringEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_16

    move v3, v2

    :cond_16
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    move v0, v2

    :goto_a
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setTethering(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_17

    move v3, v2

    :cond_17
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_18
    move v0, v3

    goto :goto_a

    :sswitch_10
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isTetheringEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_19

    move v3, v2

    :cond_19
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    move v0, v2

    :goto_b
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setUsbDebuggingEnabled(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1a

    move v3, v2

    :cond_1a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1b
    move v0, v3

    goto :goto_b

    :sswitch_12
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isUsbDebuggingEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1c

    move v3, v2

    :cond_1c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    move v0, v2

    :goto_c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setUsbMassStorage(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1d

    move v3, v2

    :cond_1d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1e
    move v0, v3

    goto :goto_c

    :sswitch_14
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    move v0, v2

    :goto_d
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isUsbMassStorageEnabled(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1f

    move v3, v2

    :cond_1f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_20
    move v0, v3

    goto :goto_d

    :sswitch_15
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    move v0, v2

    :goto_e
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setUsbKiesAvailability(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_21

    move v3, v2

    :cond_21
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_22
    move v0, v3

    goto :goto_e

    :sswitch_16
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    move v0, v2

    :goto_f
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isUsbKiesAvailable(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_23

    move v3, v2

    :cond_23
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_24
    move v0, v3

    goto :goto_f

    :sswitch_17
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    move v0, v2

    :goto_10
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setUsbMediaPlayerAvailability(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_25

    move v3, v2

    :cond_25
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_26
    move v0, v3

    goto :goto_10

    :sswitch_18
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    move v0, v2

    :goto_11
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isUsbMediaPlayerAvailable(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_27

    move v3, v2

    :cond_27
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_28
    move v0, v3

    goto :goto_11

    :sswitch_19
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    move v0, v2

    :goto_12
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setScreenCapture(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_29

    move v3, v2

    :cond_29
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2a
    move v0, v3

    goto :goto_12

    :sswitch_1a
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    move v0, v2

    :goto_13
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isScreenCaptureEnabled(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2b

    move v3, v2

    :cond_2b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2c
    move v0, v3

    goto :goto_13

    :sswitch_1b
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    move v0, v2

    :goto_14
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setMockLocation(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2d

    move v3, v2

    :cond_2d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2e
    move v0, v3

    goto :goto_14

    :sswitch_1c
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isMockLocationEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2f

    move v3, v2

    :cond_2f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1d
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    move v0, v2

    :goto_15
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setBackup(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_30

    move v3, v2

    :cond_30
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_31
    move v0, v3

    goto :goto_15

    :sswitch_1e
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    move v0, v2

    :goto_16
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isBackupAllowed(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_32

    move v3, v2

    :cond_32
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_33
    move v0, v3

    goto :goto_16

    :sswitch_1f
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    move v0, v2

    :goto_17
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setClipboardEnabled(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_34

    move v3, v2

    :cond_34
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_35
    move v0, v3

    goto :goto_17

    :sswitch_20
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    move v0, v2

    :goto_18
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isClipboardAllowed(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_36

    move v3, v2

    :cond_36
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_37
    move v0, v3

    goto :goto_18

    :sswitch_21
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    move v0, v2

    :goto_19
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->allowFactoryReset(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_38

    move v3, v2

    :cond_38
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_39
    move v0, v3

    goto :goto_19

    :sswitch_22
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isFactoryResetAllowed()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3a

    move v3, v2

    :cond_3a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_23
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    move v0, v2

    :goto_1a
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setHomeKeyState(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3b

    move v3, v2

    :cond_3b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_3c
    move v0, v3

    goto :goto_1a

    :sswitch_24
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isHomeKeyEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3d

    move v3, v2

    :cond_3d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_25
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    move v0, v2

    :goto_1b
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setBackgroundData(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3e

    move v3, v2

    :cond_3e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_3f
    move v0, v3

    goto :goto_1b

    :sswitch_26
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isBackgroundDataEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_40

    move v3, v2

    :cond_40
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_27
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    move v0, v2

    :goto_1c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setCellularData(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_41

    move v3, v2

    :cond_41
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_42
    move v0, v3

    goto :goto_1c

    :sswitch_28
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isCellularDataAllowed()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_43

    move v3, v2

    :cond_43
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_29
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    move v0, v2

    :goto_1d
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->allowSettingsChanges(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_44

    move v3, v2

    :cond_44
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_45
    move v0, v3

    goto :goto_1d

    :sswitch_2a
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47

    move v0, v2

    :goto_1e
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isSettingsChangesAllowed(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_46

    move v3, v2

    :cond_46
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_47
    move v0, v3

    goto :goto_1e

    :sswitch_2b
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_49

    move v0, v2

    :goto_1f
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setAllowNonMarketApps(Z)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_48

    move v3, v2

    :cond_48
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_49
    move v0, v3

    goto :goto_1f

    :sswitch_2c
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isNonMarketAppAllowed()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4a

    move v3, v2

    :cond_4a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
