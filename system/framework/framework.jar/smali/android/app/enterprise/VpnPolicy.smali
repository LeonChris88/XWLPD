.class public Landroid/app/enterprise/VpnPolicy;
.super Ljava/lang/Object;
.source "VpnPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final VPN_NEW_PROFILE:Ljava/lang/String; = "com.android.server.enterprise.VPN_NEW_PROFILE"


# instance fields
.field private final lService:Landroid/app/enterprise/IVpnInfoPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "VpnPolicy"

    sput-object v0, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IVpnInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    sget-object v0, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vpn policy API -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createProfile(Landroid/app/enterprise/VpnAdminProfile;)Z
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/app/enterprise/IVpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->createProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "PPTP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z

    move-result v3

    and-int/2addr v1, v3

    :cond_2
    :goto_1
    if-nez v1, :cond_0

    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/app/enterprise/VpnPolicy;->deleteProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at Vpn policy API createProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "L2TP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_1

    :cond_5
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "L2TP_IPSEC_PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_1

    :cond_6
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "L2TP_IPSEC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    and-int/2addr v1, v3

    goto :goto_1
.end method

.method public deleteProfile(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->deleteProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API deleteProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIPSecCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIPSecPreSharedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getPresharedKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getSharedSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIPSecUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getL2TPSecret "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getServerName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getServerName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserPwd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVpnList()[Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IVpnInfoPolicy;->getVPNList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getVpnList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminProfile(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v3, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/enterprise/IVpnInfoPolicy;->isAdminProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API isAdminProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isL2TPSecretEnabled(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->isL2TPSecretEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIPSecCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIPSecPreSharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setSharedSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIPSecUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setId(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setL2TPSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPPTPEncryptionEnabled(Ljava/lang/String;Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServerName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setServerName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVpnProfile(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
