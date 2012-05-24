.class public Landroid/app/enterprise/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/SecurityPolicy$1;
    }
.end annotation


# static fields
.field public static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field public static final KEYSTORE_KEY_NOT_FOUND:I = 0x7

.field public static final KEYSTORE_LOCKED:I = 0x2

.field public static final KEYSTORE_NO_ERROR:I = 0x1

.field public static final KEYSTORE_PERMISSION_DENIED:I = 0x6

.field public static final KEYSTORE_SYSTEM_ERROR:I = 0x4

.field public static final KEYSTORE_UNDEFINED_ACTION:I = 0x9

.field public static final KEYSTORE_UNINITIALIZED:I = 0x3

.field public static final KEYSTORE_VALUE_CORRUPTED:I = 0x8

.field public static final KEYSTORE_WRONG_PASSWORD:I = 0xa

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_CERTIFICATE:Ljava/lang/String; = ".crt"

.field public static final TYPE_PKCS12:Ljava/lang/String; = ".p12"

.field public static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field public static final WIPE_EXTERNAL_MEMORY:I = 0x2

.field public static final WIPE_INTERNAL_EXTERNAL_MEMORY:I = 0x3

.field public static final WIPE_INTERNAL_MEMORY:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDPM:Landroid/app/admin/DevicePolicyManager;

.field private final mService:Landroid/app/enterprise/ISecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SecurityPolicy"

    sput-object v0, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private formatInternalStorage(ZZ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->formatInternalStorage(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private formatStorageCard(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->formatStorageCard(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed changeCredentialStoragePassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearInstalledCertificates()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->clearInstalledCertificates()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed clearInstalledCertificates"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCredentialStorageStatus()I
    .locals 3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy$1;->$SwitchMap$android$security$KeyStore$State:[I

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getInstalledCertificateNames"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledCertificates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->getInstalledCertificates()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getSystemCertificates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->getSystemCertificates()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/ISecurityPolicy;->installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->installCertificateWithType(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public installCertificatesFromSdCard()V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->installCertificatesFromSdCard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isExternalStorageEncrypted()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->isExternalStorageEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInternalStorageEncrypted()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->isInternalStorageEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public powerOffDevice()V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->powerOffDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeAccountsByType(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->removeAccountsByType(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed unlockCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetCredentialStorage()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->resetCredentialStorage()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed resetCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCredentialStoragePassword(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setCredentialStoragePassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setCredentialStoragePassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setExternalStorageEncryption(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setInternalStorageEncryption(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    return-void
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public unlockCredentialStorage(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->unlockCredentialStorage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed unlockCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wipeDevice(I)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    if-ne p1, v5, :cond_1

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Landroid/app/enterprise/SecurityPolicy;->formatStorageCard(Z)Z

    move-result v1

    :cond_1
    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_3

    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/app/enterprise/SecurityPolicy;->formatStorageCard(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_3
    move v2, v1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v3, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with misc info policy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    goto :goto_0
.end method
