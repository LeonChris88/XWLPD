.class public Landroid/app/enterprise/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# static fields
.field public static final BasicPrinting:Landroid/os/ParcelUuid; = null

.field public static final FTP:Landroid/os/ParcelUuid; = null

.field public static final PBAP:Landroid/os/ParcelUuid; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothUtils"

.field static final TYPE_L2CAP:I = 0x3

.field static final TYPE_RFCOMM:I = 0x1

.field static final TYPE_SCO:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/BluetoothUtils;->FTP:Landroid/os/ParcelUuid;

    const-string v0, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/BluetoothUtils;->PBAP:Landroid/os/ParcelUuid;

    const-string v0, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/BluetoothUtils;->BasicPrinting:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isHeadsetAllowedBySecurityPolicy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v5, "bluetooth_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    const/16 v5, 0x80

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "BluetoothUtils"

    const-string v6, "MDM - SPP Profile is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "BluetoothUtils"

    const-string v6, "MDM: HSP profile is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "BluetoothUtils"

    const-string v6, "MDM: HFP profile is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static isPairingAllowedbySecurityPolicy()Z
    .locals 4

    const-string v2, "BluetoothUtils"

    const-string/jumbo v3, "isPairingBlockedbySecurityPolicy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isPairingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z

    move-result v0

    return v0
.end method

.method public static isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z
    .locals 5

    const/4 v2, 0x0

    const-string v3, "BluetoothUtils"

    const-string/jumbo v4, "isProfileAuthorizedBySecurityPolicy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v3, "bluetooth_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v1

    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: Outgoing Call is Disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/16 v3, 0x80

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: SPP or A2DP profile is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAvrcpController(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const/16 v3, 0x10

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: AVRCP profile is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getAllowBluetoothDataTransfer()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x80

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_8
    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: OPP profile is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "bluetooth_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v2

    if-ne v4, p2, :cond_1

    invoke-interface {v2}, Landroid/app/enterprise/IBluetoothPolicy;->getAllowBluetoothDataTransfer()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x80

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for spp, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_1
    const/4 v5, 0x2

    if-ne v5, p2, :cond_3

    invoke-interface {v2}, Landroid/app/enterprise/IBluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for SCO, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    if-gez p1, :cond_5

    :cond_4
    :try_start_1
    const-string v3, "BluetoothUtils"

    const-string/jumbo v5, "isSocketAllowedBySecurityPolicy start : device null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0

    :cond_5
    const/16 v5, 0x40

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/app/enterprise/BluetoothUtils;->FTP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v5}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    if-ne v1, p1, :cond_6

    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for ftp, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v5, 0x4

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Landroid/app/enterprise/BluetoothUtils;->PBAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v5}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    if-ne v1, p1, :cond_7

    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for pbap, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v5}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    if-ne v1, p1, :cond_2

    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for pbap, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
