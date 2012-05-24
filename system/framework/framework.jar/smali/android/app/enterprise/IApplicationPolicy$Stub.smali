.class public abstract Landroid/app/enterprise/IApplicationPolicy$Stub;
.super Landroid/os/Binder;
.source "IApplicationPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IApplicationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IApplicationPolicy"

.field static final TRANSACTION_addAppPackageNameToBlackList:I = 0x2f

.field static final TRANSACTION_addAppPackageNameToWhiteList:I = 0x32

.field static final TRANSACTION_addAppPermissionToBlackList:I = 0x23

.field static final TRANSACTION_addAppSignatureToBlackList:I = 0x26

.field static final TRANSACTION_changeApplicationIcon:I = 0x21

.field static final TRANSACTION_deleteManagedAppInfo:I = 0xd

.field static final TRANSACTION_getAllAppLastUsage:I = 0x1e

.field static final TRANSACTION_getAppInstallationMode:I = 0x38

.field static final TRANSACTION_getAppPackageNamesAllBlackLists:I = 0x31

.field static final TRANSACTION_getAppPackageNamesAllWhiteLists:I = 0x34

.field static final TRANSACTION_getAppPermissionsAllBlackLists:I = 0x35

.field static final TRANSACTION_getAppPermissionsBlackList:I = 0x25

.field static final TRANSACTION_getAppSignatureBlackList:I = 0x28

.field static final TRANSACTION_getAppSignaturesAllBlackLists:I = 0x36

.field static final TRANSACTION_getApplicationCacheSize:I = 0x17

.field static final TRANSACTION_getApplicationCodeSize:I = 0x15

.field static final TRANSACTION_getApplicationCpuUsage:I = 0x19

.field static final TRANSACTION_getApplicationDataSize:I = 0x16

.field static final TRANSACTION_getApplicationIconFromDb:I = 0x22

.field static final TRANSACTION_getApplicationInstallationEnabled:I = 0xe

.field static final TRANSACTION_getApplicationMemoryUsage:I = 0x18

.field static final TRANSACTION_getApplicationName:I = 0x12

.field static final TRANSACTION_getApplicationStateEnabled:I = 0xc

.field static final TRANSACTION_getApplicationStateList:I = 0x2c

.field static final TRANSACTION_getApplicationTotalSize:I = 0x14

.field static final TRANSACTION_getApplicationUninstallationEnabled:I = 0x10

.field static final TRANSACTION_getApplicationVersion:I = 0x13

.field static final TRANSACTION_getApplicationsList:I = 0x9

.field static final TRANSACTION_getAvgNoAppUsagePerMonth:I = 0x1d

.field static final TRANSACTION_getInstalledApplicationsIDList:I = 0x11

.field static final TRANSACTION_getInstalledManagedApplicationsList:I = 0x8

.field static final TRANSACTION_getNetworkStats:I = 0x1f

.field static final TRANSACTION_getTopNCPUUsageAppFromTopCommand:I = 0x1c

.field static final TRANSACTION_getTopNDataUsageApp:I = 0x1b

.field static final TRANSACTION_getTopNMemoryUsageApp:I = 0x1a

.field static final TRANSACTION_installApplication:I = 0x5

.field static final TRANSACTION_isApplicationInstallationEnabled:I = 0xf

.field static final TRANSACTION_isApplicationInstalled:I = 0x3

.field static final TRANSACTION_isApplicationRunning:I = 0x4

.field static final TRANSACTION_isIntentDisabled:I = 0x2e

.field static final TRANSACTION_removeAppPackageNameFromBlackList:I = 0x30

.field static final TRANSACTION_removeAppPackageNameFromWhiteList:I = 0x33

.field static final TRANSACTION_removeAppPermissionFromBlackList:I = 0x24

.field static final TRANSACTION_removeAppSignatureFromBlackList:I = 0x27

.field static final TRANSACTION_removeManagedApplications:I = 0x1

.field static final TRANSACTION_setAppInstallationMode:I = 0x37

.field static final TRANSACTION_setApplicationInstallationDisabled:I = 0xa

.field static final TRANSACTION_setApplicationState:I = 0x7

.field static final TRANSACTION_setApplicationStateList:I = 0x2d

.field static final TRANSACTION_setApplicationUninstallationDisabled:I = 0xb

.field static final TRANSACTION_setAsManagedApp:I = 0x29

.field static final TRANSACTION_startApp:I = 0x2b

.field static final TRANSACTION_stopApp:I = 0x2a

.field static final TRANSACTION_uninstallApplication:I = 0x6

.field static final TRANSACTION_updateDataUsageDb:I = 0x20

.field static final TRANSACTION_wipeApplicationData:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.app.enterprise.IApplicationPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/enterprise/IApplicationPolicy;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    :sswitch_0
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    goto :goto_0

    :sswitch_1
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    goto :goto_0

    :sswitch_2
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->wipeApplicationData(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :sswitch_3
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :sswitch_4
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationRunning(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    :sswitch_5
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->installApplication(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    goto :goto_5

    :sswitch_6
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->uninstallApplication(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    goto :goto_7

    :sswitch_7
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationState(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_8

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    goto :goto_9

    :sswitch_8
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getInstalledManagedApplicationsList()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_9
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    const/4 v2, 0x1

    :goto_a
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    :sswitch_b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a

    const/4 v2, 0x1

    :goto_b
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    :sswitch_c
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_b

    const/4 v9, 0x1

    :goto_c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v9, 0x0

    goto :goto_c

    :sswitch_d
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->deleteManagedAppInfo(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_c

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v9, 0x0

    goto :goto_d

    :sswitch_e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationInstallationEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_d

    const/4 v9, 0x1

    :goto_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v9, 0x0

    goto :goto_e

    :sswitch_f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_e

    sget-object v9, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :goto_f
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_f

    const/4 v9, 0x1

    :goto_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    :cond_f
    const/4 v9, 0x0

    goto :goto_10

    :sswitch_10
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_10

    const/4 v9, 0x1

    :goto_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v9, 0x0

    goto :goto_11

    :sswitch_11
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getInstalledApplicationsIDList()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_12
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_13
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_14
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationTotalSize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_15
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationCodeSize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_16
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationDataSize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_17
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationCacheSize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_18
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationMemoryUsage(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_19
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationCpuUsage(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_1a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11

    const/4 v2, 0x1

    :goto_12
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNMemoryUsageApp(IZ)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    :sswitch_1b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNDataUsageApp(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_1c
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    const/4 v2, 0x1

    :goto_13
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNCPUUsageAppFromTopCommand(IZ)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    :sswitch_1d
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_1e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_1f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getNetworkStats()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_20
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->updateDataUsageDb()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_21
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->changeApplicationIcon(Ljava/lang/String;[B)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_13

    const/4 v9, 0x1

    :goto_14
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v9, 0x0

    goto :goto_14

    :sswitch_22
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationIconFromDb(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_23
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppPermissionToBlackList(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_14

    const/4 v9, 0x1

    :goto_15
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v9, 0x0

    goto :goto_15

    :sswitch_24
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppPermissionFromBlackList(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_15

    const/4 v9, 0x1

    :goto_16
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v9, 0x0

    goto :goto_16

    :sswitch_25
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPermissionsBlackList()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_26
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppSignatureToBlackList(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_16

    const/4 v9, 0x1

    :goto_17
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v9, 0x0

    goto :goto_17

    :sswitch_27
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppSignatureFromBlackList(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_17

    const/4 v9, 0x1

    :goto_18
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v9, 0x0

    goto :goto_18

    :sswitch_28
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppSignatureBlackList()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_29
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setAsManagedApp(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_18

    const/4 v9, 0x1

    :goto_19
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v9, 0x0

    goto :goto_19

    :sswitch_2a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->stopApp(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_19

    const/4 v9, 0x1

    :goto_1a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_19
    const/4 v9, 0x0

    goto :goto_1a

    :sswitch_2b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->startApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1a

    const/4 v9, 0x1

    :goto_1b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v9, 0x0

    goto :goto_1b

    :sswitch_2c
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1b

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationStateList(Z)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1c

    :sswitch_2d
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1c

    const/4 v2, 0x1

    :goto_1d
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    :sswitch_2e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1d

    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_1e
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1e

    const/4 v9, 0x1

    :goto_1f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1e
    const/4 v9, 0x0

    goto :goto_1f

    :sswitch_2f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppPackageNameToBlackList(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1f

    const/4 v9, 0x1

    :goto_20
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1f
    const/4 v9, 0x0

    goto :goto_20

    :sswitch_30
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_20

    const/4 v9, 0x1

    :goto_21
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_20
    const/4 v9, 0x0

    goto :goto_21

    :sswitch_31
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPackageNamesAllBlackLists()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_32
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_21

    const/4 v9, 0x1

    :goto_22
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_21
    const/4 v9, 0x0

    goto :goto_22

    :sswitch_33
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_22

    const/4 v9, 0x1

    :goto_23
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_22
    const/4 v9, 0x0

    goto :goto_23

    :sswitch_34
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPackageNamesAllWhiteLists()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_35
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPermissionsAllBlackLists()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_36
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppSignaturesAllBlackLists()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_37
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setAppInstallationMode(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_23

    const/4 v9, 0x1

    :goto_24
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_23
    const/4 v9, 0x0

    goto :goto_24

    :sswitch_38
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppInstallationMode()I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

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
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
